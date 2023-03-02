<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\employee_masters;
use App\Models\raw_dump_archive;
use App\Models\raw_dump;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
Use App\Models\PersonalAccessToken;
use DB;
use ImageRepository;

class AuthController extends Controller
{
   

 
    //user registration 


 //user login creation function
    public function login(Request $request)
    {
      $data = array();
      $data_value = array();
     

       $validateData=$request->validate([ 
          'tkn' => 'required',
          'api_key' => 'required',
          'user_id' => 'required',
          'imei_number' => 'required',
          'user_pwd' => 'required',
           
         ]);
      
        
       if(!$validateData)
       {
        return response()->json([
            'status' => '0',
            'msg' => 'Login Failed',
        ]); 
       }

      
       $user = employee_masters::where('user_id', request('user_id'))->first();

       $tokenres = $user->createToken('authToken')->plainTextToken;

       employee_masters::where('id', $user->id)
       ->update([
           'is_login' => 1
        ]);

       $user = DB::table('employee_masters')->select('id','name','mobile_no','address','user_id','user_pwd','user_role','user_division');

       $value = $user->where('user_id','=',$request->user_id);

       $value = $user->where('user_pwd','=', $request->user_pwd)->get();

       foreach ($value as $key => $params) {
            $a_id = $params->id;
      }
      $l_token = DB::table('personal_access_tokens')->select('token')->where('tokenable_id', '=',$a_id)->get();

      foreach ($l_token as $key => $params) {
        $tkn_id = $params->token;
       }
       $data[] = $value;

       if(count($value) > 0){

        return response()->json([
        
          'status' => '1',
          'msg' => 'login successfully', 
          'token'=> $tkn_id,
          'params'=> $data,            
          
         ]);


       } else {

        return response()->json([        
          'status' => '0',
          'msg' => 'login Failed',       
          
         ]);

       }
       
    //    print($tokenres);
    

       }

   //user logout creation function
    public function logout(Request $request)
    {

    //  $raw_dump = $this->raw_dump($request->getContent(), 'logout',$request['access_token']);


      $user =  employee_masters::where('id', $request->id)

       ->update([
           'is_login' => 0
        ]);

        
        $deleted = DB::table('personal_access_tokens')->where('tokenable_id', '=', $request->id)->delete();
        // print($deleted);

         if($user > 0 ){
            return response()->json([
               "status" => '1',
               "msg"=>"logout Successfully",               
               "is_logged_in" => '0',
           ]);
         

         }else{
            return response()->json([
               "status" => '0',
               "msg"=>"logout failed",               
               "is_logged_in" => '0',
           ]);
         
         }
  //   $request=auth()->employee_masters();
        
         

    }

  




     public function push_data_entry(Request $request)
     {
       

        $response = array();
        $response['status'] = 1;
        $response['msg'] = 'Completed';      


      
        $sale_order_val=$request->sale_order;
        $sale_order_item_val=$request->sale_order_item;
        //$bills_val=$request->legerbills;
       for($i=0;count($sale_order_val)>$i;$i++)
       {
         $sale_order = new sale_order;
         $sale_order->party_id = $sale_order_val[$i]['party_id'];
         $sale_order->party_name = $sale_order_val[$i]['party_name'];
         $sale_order->user_id = $sale_order_val[$i]['user_id'];
         $sale_order->tot_qty = $sale_order_val[$i]['tot_qty'];
         $sale_order->cgst_amt = $sale_order_val[$i]['cgst_amt'];
         $sale_order->sgst_amt = $sale_order_val[$i]['sgst_amt'];
         $sale_order->igst_amt = $sale_order_val[$i]['igst_amt'];
         $sale_order->del_date = date('Y-m-d h:i:s',strtotime($sale_order_val[$i]['del_date']));
        // $sale_order->del_date = $sale_order_itemval[$i]['del_date'];
         $sale_order->del_location = $sale_order_val[$i]['del_location'];  
         $sale_order->net_amt = $sale_order_val[$i]['net_amt'];              
         $sale_order->gross_amt = $sale_order_val[$i]['gross_amt'];
         $sale_order->order_type = $sale_order_val[$i]['order_type'];
         $sale_order['c_time']=date('Y-m-d h:i:s');
         $sale_order['m_time']=date('Y-m-d h:i:s');
    //         //$group->user_id = auth()->user('user_id');
         $sale_order->save(); 

         $sale_order_fk=$sale_order->id;
            
         $sale_order_item_val=$sale_order_val[$i]['sale_order_item_sub'];
            
        }
       for($j=0;count($sale_order_item_val)>$j;$j++)
       {
       /* print($sale_order_item);*/
            $sale_order_item = new sale_order_item;
            $sale_order_item->item_name = $sale_order_item_val[$j]['item_name'];
            $sale_order_item->item_id = $sale_order_item_val[$j]['item_id'];
            $sale_order_item->item_qty = $sale_order_item_val[$j]['item_qty']; 
            $sale_order_item->order_id = $sale_order_fk;  
            $sale_order_item->rate = $sale_order_item_val[$j]['rate'];
            $sale_order_item->tot_amt = $sale_order_item_val[$j]['tot_amt'];
            $sale_order_item->tax_amt = $sale_order_item_val[$j]['tax_amt'];
            $sale_order_item->tax_value = $sale_order_item_val[$j]['tax_value'];
            $sale_order_item->cgst = $sale_order_item_val[$j]['cgst'];
            $sale_order_item->sgst = $sale_order_item_val[$j]['sgst'];
            $sale_order_item->igst = $sale_order_item_val[$j]['igst'];
            $sale_order_item['c_time']=date('Y-m-d h:i:s');
            $sale_order_item['m_time']=date('Y-m-d h:i:s');
                                           
            //$group->user_id = auth()->user('user_id');           
            $sale_order_item->save(); 
           
        
    } 


    return response([
       /*$data[] = array([*/
         
        /*"status" => '1',  
        "msg"=>"Data inserted Successfully", */
      // /  $response = array();

        $response['data'] = [$response],        
        "status" => '1',
        "msg" => 'Data inserted Successfully',
        "id" => $sale_order_item['id'],
             
       // // echo "sale_order data check:", +$sale_order['id'];
         
      //    "status" => '1',
      //    "msg" => 'Data inserted Successfully',
        
       // "sale_order" => $sale_order,                        
       // $sale_order = sale_order::where('id'),
       // "sale_order_item"=>[$sale_order_item],  
    ]);
 }

       public function push_master_bulk(Request $request)
     {       

        $response = array();
        $response['status'] = 1;
        $response['msg'] = 'Completed';

        $tax_master_val=$request->tax_master;
        $item_master_val=$request->item_master;
        $parice_list_master_val=$request->pricelist_master;
        $p_list_item_master_val=$request->price_list_item_master;
        $route_master_val = $request->route_master;
        $s_executive_master_val = $request->s_executive_master;
        $customer_master_val = $request->customer_master;

 
       for($i=0;count($tax_master_val)>$i;$i++)
       {
                
         $tax_master = new tax_master;
         $tax_master->name = $tax_master_val[$i]['name'];
         $tax_master->cgst = $tax_master_val[$i]['cgst'];
         $tax_master->sgst = $tax_master_val[$i]['sgst'];
         $tax_master->igst = $tax_master_val[$i]['igst'];
         $tax_master->id = $tax_master_val[$i]['id'];
         $tax_master['c_time']=date('Y-m-d h:i:s');
         $tax_master['m_time']=date('Y-m-d h:i:s'); 

         $tax_master->save(); 
        
      }    
  
       for($j=0;count($item_master_val)>$j;$j++)
       {
      
            $item_master = new item_master;
            $item_master->name = $item_master_val[$j]['name'];
            $item_master->code = $item_master_val[$j]['code'];
            $item_master->tax_id = $item_master_val[$j]['tax_id']; 
            $item_master->ratequoter = $item_master_val[$j]['ratequoter'];
            $item_master->ratehalf = $item_master_val[$j]['ratehalf'];
            $item_master->ratehalfquoter = $item_master_val[$j]['ratehalfquoter'];
            $item_master->rate = $item_master_val[$j]['rate'];
            $item_master->id = $item_master_val[$j]['id'];
            $item_master->image_id = $item_master_val[$j]['image_id'];
            $item_master['c_time']=date('Y-m-d h:i:s');
            $item_master['m_time']=date('Y-m-d h:i:s'); 
                   
            $item_master->save(); 
           
        
      } 

      for($k=0;count($parice_list_master_val)>$k;$k++)
       {
      
            $pricelist_master = new pricelist_master;
            $pricelist_master->name = $parice_list_master_val[$k]['name'];
            $pricelist_master->id = $parice_list_master_val[$k]['id'];
            $pricelist_master['c_time']=date('Y-m-d h:i:s');
            $pricelist_master['m_time']=date('Y-m-d h:i:s'); 
                   
            $pricelist_master->save(); 
           
        
      } 

      for($l=0;count($p_list_item_master_val)>$l;$l++)
       {
      
    $price_list_item_master = new price_list_item_master;
    $price_list_item_master->party_id  = $p_list_item_master_val[$l]['party_id'];
    $price_list_item_master->item_id = $p_list_item_master_val[$l]['item_id'];
    $price_list_item_master->rate = $p_list_item_master_val[$l]['rate'];
    $price_list_item_master->id = $p_list_item_master_val[$l]['id'];
    $price_list_item_master['c_time']=date('Y-m-d h:i:s');
    $price_list_item_master['m_time']=date('Y-m-d h:i:s'); 
                   
            $price_list_item_master->save(); 
           
        
      } 
     
     for($m=0;count($route_master_val)>$m;$m++)
       {
      
            $route_master = new route_master;
            $route_master->no   = $route_master_val[$m]['no'];
            $route_master->route_name = $route_master_val[$m]['route_name'];
            $route_master->vec_name = $route_master_val[$m]['vec_name'];
            $route_master->vec_id = $route_master_val[$m]['vec_id'];
            $route_master->id = $route_master_val[$m]['id'];
            $route_master['c_time']=date('Y-m-d h:i:s');
            $route_master['m_time']=date('Y-m-d h:i:s'); 
                   
            $route_master->save(); 
           
        
      } 

      for($m=0;count($route_master_val)>$m;$m++)
       {
      
            $route_master = new route_master;
            $route_master->no   = $route_master_val[$m]['no'];
            $route_master->route_name = $route_master_val[$m]['route_name'];
            $route_master->vec_name = $route_master_val[$m]['vec_name'];
            $route_master->vec_id = $route_master_val[$m]['vec_id'];
            $route_master->id = $route_master_val[$m]['id'];
            $route_master['c_time']=date('Y-m-d h:i:s');
            $route_master['m_time']=date('Y-m-d h:i:s'); 
                   
            $route_master->save(); 
           
        
      } 

      for($n=0;count($s_executive_master_val)>$n;$n++)
       {
      
            $s_executive_master = new s_executive_master;
            $s_executive_master->name = $s_executive_master_val[$n]['name'];
            $s_executive_master->mobile_no   = $s_executive_master_val[$n]['mobile_no'];
            $s_executive_master->address = $s_executive_master_val[$n]['address'];
            $s_executive_master->aadhar_no = $s_executive_master_val[$n]['aadhar_no'];
            $s_executive_master->pan_no = $s_executive_master_val[$n]['pan_no'];
            $s_executive_master->licenses_no = $s_executive_master_val[$n]['licenses_no'];
            $s_executive_master->id = $s_executive_master_val[$n]['id'];
            $s_executive_master['c_time']=date('Y-m-d h:i:s');
            $s_executive_master['m_time']=date('Y-m-d h:i:s'); 
                   
            $s_executive_master->save(); 
           
        
      } 

       for($o=0;count($customer_master_val)>$o;$o++)
       {
      
            $customer_master = new customer_master;
            $customer_master->name = $customer_master_val[$o]['name'];
            $customer_master->code   = $customer_master_val[$o]['code'];
            $customer_master->address = $customer_master_val[$o]['address'];
            $customer_master->c_person = $customer_master_val[$o]['c_person'];
            $customer_master->mobile_no = $customer_master_val[$o]['mobile_no'];
            $customer_master->alt_mobile_no = $customer_master_val[$o]['alt_mobile_no'];
            $customer_master->gst_no = $customer_master_val[$o]['gst_no'];
            $customer_master->pan_no = $customer_master_val[$o]['pan_no'];
            $customer_master->user_email = $customer_master_val[$o]['user_email'];
            $customer_master->location = $customer_master_val[$o]['location'];
            $customer_master->route_name = $customer_master_val[$o]['route_name'];
            $customer_master->price_list = $customer_master_val[$o]['price_list'];
            $customer_master->s_executive = $customer_master_val[$o]['s_executive'];
            $customer_master->id = $customer_master_val[$o]['id'];
            $customer_master['c_time']=date('Y-m-d h:i:s');
            $customer_master['m_time']=date('Y-m-d h:i:s'); 
                   
            $customer_master->save(); 
           
        
      } 

    return response([
      
        $response['data'] = [$response],        
        "status" => '1',
        "msg" => 'Data inserted Successfully',      
             
        ]);
  
 }


 public function raw_dump($request, $type, $token)
 {

  $token_value;
  $tok_id=DB::table('personal_access_tokens')->select('tokenable_id')->where('token','=',$token)->get();

  foreach ($tok_id as $key => $tok_value) {
   // print($tok_value->tokenable_id);
    $token_value = $tok_value->tokenable_id;
  }

  $record = array();
  $record['user_id'] =   $token_value;
  $record['access_token'] =   $token;
  $record['json_dump'] =   $request;
  $record['request_type'] =   $type;
 // $record['m_time'] =   date('Y-m-d H:i:s');
            
  $user=raw_dump_archive::create($record);  

}




}
