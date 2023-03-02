<?php

namespace App\Http\Controllers;

use App\Models\sale_order;
use App\Models\sale_order_item;
use DB;
use Illuminate\Support\Facades\Validator;
use App\Models\raw_dump_archive;
use App\Models\raw_dump;
use Illuminate\Http\Request;


class EntryController extends Controller
{
  //Entry Process SO
  public function sale_order_data(Request $request)
  {
    $raw_dump = $this->raw_dump($request->getContent(), 'sale_order_data' ,$request['access_token']);

    $data = array();
    $response = array();
    $response['status'] = 0;
    $response['msg'] = 'Invalid Parameter parsed';    
    $response['params'] = array();

      foreach ($request['params'] as $row) {

        $record['party_id'] =  $row['party_id'];
        $record['party_name'] =$row['party_name'];
        $record['user_id'] = isset($row['user_id']) ?  $row['user_id'] :'null';
        $record['tot_qty'] = isset($row['tot_qty']) ?  $row['tot_qty'] :'0';
        $record['cgst_amt'] = isset($row['cgst_amt']) ?  $row['cgst_amt'] :'0';
        $record['sgst_amt'] = isset($row['sgst_amt']) ?  $row['sgst_amt'] :'0';
        $record['igst_amt'] = isset($row['igst_amt']) ?  $row['igst_amt'] :'0';
        $record['del_date'] = isset($row['del_date']) ?  $row['del_date'] :'null';
        $record['del_location'] = isset($row['del_location']) ?  $row['del_location'] :'null';
        $record['net_amt'] = isset($row['net_amt']) ?  $row['net_amt'] :'0';
        $record['gross_amt'] = isset($row['gross_amt']) ?  $row['gross_amt'] :'0';
        $record['bill_date'] = isset($row['bill_date']) ?  $row['bill_date'] :'null';
        $record['order_type'] = isset($row['order_type']) ?  $row['order_type'] :'null';
         
       
        
        $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];

             //Update Receord
        if (isset($row['remote_id']) && $row['remote_id'] != "0") {

     
             $record['m_time'] =   date('Y-m-d H:i:s');
                 
            $update= sale_order::where('id', ($row['remote_id']))->update($record);;

                 if ($update) {
               if(isset($row['order_sub']))  $sale_order_item_sub = $this->sale_order_item_data($row['order_sub'], $row['remote_id']);


                     $data[] = array(
                          "id" => $id_,
                         "remote_id" => $row['remote_id'],
                          "msg" => 'Updated',
                        "order_sub" => $sale_order_item_sub,
                         
                     );
                 }

             } else { //Insert Record

            $record['c_time'] =   date('Y-m-d H:i:s');
      
           // print($record);
                  $user=sale_order::create($record);
                //  print($user);
                
                 if ($user) { 

                   $id = $user['id'];
              if(isset($row['order_sub']))  $sale_order_item_sub = $this->sale_order_item_data($row['order_sub'], $id);

                     $data[] = array(
                         "id" => $id_,
                         "remote_id" => $id,
                         "order_sub" => $sale_order_item_sub,
                     );
                 } else if (!$result) {
                     $data[] = array(
                         "id" => $id_,
                         "remote_id" => 0
                     );
                 }
                }
           
  }

  $response['status'] = 1;
  $response['msg'] = 'Completed';
  $response['params'] = $data;



  return $response;
 
}

public function sale_order_item_data($request, $id)
   {

    //print('check request::');
    //echo "check request sub prize list"+$request;
    // print($request);
    $data = array();
    $response = array();
    $i = 0;

      // 
     foreach ($request as $row) {
        if (!isset($row['item_id']) && !isset($row['item_id'])) {

            if (isset($row['remote_id']) && $row['remote_id'] != "0") {
                $response["remote_id"] = $row['remote_id'];
            } else {
                $response["id"] = $row['id'];
            }

            $response["msg"] = 'No Proper Info Given';

            $data[] = $response;
            continue;
        }

         $record = array();
         $record['sale_id'] = $id;
         $record['item_name'] = $row['item_name'];
         $record['item_id'] = isset($row['item_id']) ?  $row['item_id'] :0;
         $record['item_qty'] = isset($row['item_qty']) ?  $row['item_qty'] :0;
         $record['rate'] = isset($row['rate']) ?  $row['rate'] :0;
         $record['tot_amt'] = isset($row['tot_amt']) ?  $row['tot_amt'] :0;
         $record['tax_amt'] = isset($row['tax_amt']) ?  $row['tax_amt'] :0;
         $record['tax_value'] = isset($row['tax_value']) ?  $row['tax_value'] :0;
         $record['cgst'] = isset($row['cgst']) ?  $row['cgst'] :0;
         $record['sgst'] = isset($row['sgst']) ?  $row['sgst'] :0;
         $record['igst'] = isset($row['igst']) ?  $row['igst'] :0;
         //$record['id'] = isset($row['id']) ? $row['id'] : 1;
       //  $record['m_time'] =   date('Y-m-d H:i:s');        
       
     
        $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
         //Update Receord
         if (isset($row['remote_id']) && $row['remote_id'] != "0") {




        //     $master_count = sale_order_item::select('*')->where(
        //        'item_name','=', $request->params[0]['item_name'])
        //       ->orWhere('id','=', $request->params[0]['remote_id'])
        //       ->get()->count();


        //    //   print($master_count);
        //      if($master_count > 1){
        //      return response([
        //         "message" => 'name already used',
        //         "status" => '2'
        //       ]); 
        //      } 

       

        $record['m_time'] =   date('Y-m-d H:i:s');
       $update= sale_order_item::where('id', ($row['remote_id']))->update($record);

             if ($update) {
                 $response["id"] = $id_;
                 $response["remote_id"] = $row['id'];
                 $response["msg"] = 'Updated';
             }else if (!$update) {
                 $response["remote_id"] = $row['remote_id'];
                 $response["msg"] = 'Update Failed';
             }

         } else { //Insert Record

           
         $record['c_time'] =   date('Y-m-d H:i:s');
         

            $user=sale_order_item::create($record);

            
             if ($user){  
                 $response["id"] = $id_;
                 $response["remote_id"] = $user['id'];
                 $response["msg"] = 'Inserted';
             }else if (!$user) {
                 $response["msg"] = 'Insert Failed';
             }

         }

        $data[] = $response;
     }      

       return $data;
    
}

public function push_entry(Request $request)
{

 // $raw_dump = $this->raw_dump($request->getContent(), 'push_entry' ,$request['access_token']);

    $record = array();
    $response = array();
    $response['status'] = 0;
    $response['msg'] = 'Invalid Parameter parsed';  
    $response['data'] = array();


   
     

   if(isset($request->table) && $request->table=='sale_order'){
     /**
      * Order_type 
      * 0 - all
      * 1 - order
      * 2 - sales
      * 3 - route
     */
           
    $data=DB::table('sale_order')->select('*'); 

     if($request->limit!="" && $request->last_up_time!=""){

        $users = $data->where('updated_at','>',$request->last_up_time)->take($request->limit);

     }
        if($request->limit!=""){

        $users = $data->take($request->limit);

      }
      if($request->user_id!=""){

        $users = $data->where('user_id','=',$request->user_id);

      }

      if($request->order_type!="" && $request->order_type!="0"){

        $users = $data->where('order_type','=',$request->order_type);

      }
      
      if($request->from_date!="" && $request->to_date!=""){

        $users = $data->whereBetween('c_time',[$request->from_date, $request->to_date]);

      }else{

        if($request->last_up_time!=""){

            $users = $data->where('updated_at','>',$request->last_up_time);
    
          }
      }

      $users = $data->get();
    

     // print(count($users));

    if(count($users) > 0){
        
       // print($data);
        foreach ($users as $key => $row) {
         //   print($row->party_name);

            $record[] = array(
                'remote_id' => $row->id,
                'p_id' => $row->party_id,
                'p_name' => $row->party_name,
                'user_id' => $row->user_id,
                'tot_qty' => $row->tot_qty,
                'cgst_amount' => $row->cgst_amt,
                'sgst_amount' => $row->sgst_amt,
                'igst_amount' => $row->igst_amt,
                'del_date_time' => $row->del_date,
                'del_location' => $row->del_location,
                'net_amount' => $row->net_amt,
                'gross_amount' => $row->gross_amt,
                'bill_date' => $row->bill_date,
                'order_type' => $row->order_type,
                'status' => $row->status,
                'c_time' => $row->c_time,
                'm_time' => $row->m_time,
                'sub_order' => $sub_order_entry = $this->sub_order_entry($row->id)
               
            );   

                 
              }

              $response['status'] = 1;
              $response['msg'] = 'Completed';
              $response['data'] = $record;  


    }else{
      $response['status'] = 0;
       $response['msg'] = 'No Record Found';
    }
   
    
   
   }else{
    $response['status'] = 0;
    $response['msg'] = 'Not Proper Record'; 
   }

  
    
   return $response;

}
public function sub_order_entry($sale_id){
   // print($sale_id);
  $data=array();

$record_sub=DB::table('sale_order_item')->select('*')->where('sale_id','=',$sale_id)->get();

foreach($record_sub as $key => $row)
      {
  
          $data[] = array(
             'remote_id' => $row->id,
             'order_id  ' => $sale_id,
             'item_name' => $row->item_name,
             'item_id' => $row->item_id,
             'item_qty' => $row->item_qty,
             'rate' => $row->rate,
             'total_amount' => $row->tot_amt,
             'tax_amount' => $row->tax_amt,
             'tax_value' => $row->tax_value,
             'cgst' => $row->cgst,
             'sgst' => $row->sgst,
             'igst' => $row->igst,
            'c_time' => $row->c_time,
            'm_time' => $row->m_time,
            'status' => $row->status
          );
      }

      return $data;

}

public function raw_dump($request, $type, $token)
{
  // print($token);
   $token_value;
   $tok_id=DB::table('personal_access_tokens')->select('tokenable_id')->where('token','=',$token)->get();
 
   foreach ($tok_id as $key => $tok_value) {
    // print($tok_value->tokenable_id);
     $token_value = $tok_value->tokenable_id;
   }
 
  // print($tok_id);
   $record = array();
   $record['user_id'] = $token_value;
   $record['access_token'] = $token;
   $record['json_dump'] =   $request;
   $record['request_type'] =   $type;
  // $record['m_time'] =   date('Y-m-d H:i:s');
             
   $user=raw_dump_archive::create($record);  
 
 }


}