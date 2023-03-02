<?php

namespace App\Http\Controllers;
use App\Models\vehicle_master;
use App\Models\customer_master;
use App\Models\tax_master;
use App\Models\pricelist_master;
use App\Models\price_list_item_master;
use App\Models\route_master;
use App\Models\employee_masters;
use App\Models\employee;
use App\Models\item_master;
use App\Models\bar_selection_master;
use App\Models\company_master;
use Illuminate\Support\Facades\Validator;
use DB;
use App\Models\raw_dump_archive;
use App\Models\raw_dump;
use Illuminate\Http\Request;

class MasterController extends Controller
{

   //Tax Master
    public function tax_data(Request $request)
    {
      $raw_dump = $this->raw_dump($request->getContent(), 'tax_data',$request['access_token']);

     
      $data = array();
      $response = array();
      $response['status'] = 0;
      $response['msg'] = 'Invalid Parameter parsed';  
      $response['params'] = array();

       foreach ($request['params'] as $row) {
        
        //Value Assigning Section
        $record['name'] = $row['name'];
        $record['cgst'] = isset($row['cgst']) ?  $row['cgst'] :0;
        $record['sgst'] = isset($row['sgst']) ? $row['sgst'] : 0;
        $record['igst'] = isset($row['igst']) ? $row['igst'] : 0; 
       


        if (isset($row['remote_id']) && $row['remote_id'] != "0") {
         //Validation Field for Duplicate Check
          $master_count = tax_master::select('id')->where(
            'name','=', $row['name'])
           ->Where('id','!=', $row['remote_id']) 
           ->get()->count();
        }else{
       
          $master_count = tax_master::select('id')->where(
            'name','=', $row['name'])
           ->get()->count();              
        }

        if ($master_count > 0) {
        
          $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
          $data[] = array(
              "id" => $id_,
              "name" => $row['name'],
              "msg" => 'Name Already Exists'
          );
          $response['params'] = $data;
          continue;
       } 

              //Update Receord
              if (isset($row['remote_id']) && $row['remote_id'] != "0") {
                $record['m_time'] =   date('Y-m-d H:i:s');


                  $update= tax_master::where('id', ($row['remote_id']))->update($record);;

                  if ($update) {
                      $data[] = array(
                          "id" => $row['id'],
                          "remote_id" => $row['remote_id'],
                          "msg" => 'Updated',
                         
                      );
                  }
              } else { //Insert Record

              $record['c_time'] =   date('Y-m-d H:i:s');
            
                   $user=tax_master::create($record);
                 
                  if ($user) {
                     
                    $id = $user['id'];
              $data[] = array(
                          "id" => $row['id'],
                          "remote_id" => $id,
                          "msg" => 'Inserted'
                      );
                  } else if (!$result) {
                      $data[] = array(
                          "id" => $row['id'],
                          "remote_id" => 0
                      );
                  }
               }

              $response['status'] = 1;
              $response['msg'] = 'Completed';
              $response['params'] = $data;                
    }
             
       return $response;
    }

// Item master data
public function item_data(Request $request)
{

  $raw_dump = $this->raw_dump($request->getContent(), 'item_data',$request['access_token']);

  $data = array();
  $response['status'] = 1;
  $response['msg'] = 'Completed';

   foreach ($request['params'] as $row) {

    $record['name'] = isset($row['name']) ?  $row['name'] :'';
    $record['code'] = isset($row['code']) ?  $row['code'] :0;
    $record['tax_id'] = isset($row['tax_id']) ? $row['tax_id'] : 0;
    $record['ratequoter'] = isset($row['ratequoter']) ? $row['ratequoter'] : 0;
    $record['ratehalf'] = isset($row['ratehalf']) ? $row['ratehalf'] : 0;
    $record['ratehalfquoter'] = isset($row['ratehalfquoter']) ? $row['ratehalfquoter'] : 0;
    $record['rate'] = isset($row['rate']) ? $row['rate'] : 0;
    $record['image_id'] = isset($row['image_id']) ? $row['image_id'] : 0; 
  



    if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
      $master_count = item_master::select('id')->where(
        'name','=', $row['name'])
       ->Where('id','!=', $row['remote_id'])
       ->get()->count();
    }else{
   
      $master_count = item_master::select('id')->where(
        'name','=', $row['name'])
       ->get()->count();
        
    }

    if ($master_count > 0) {
     
       $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
       $data[] = array(
           "id" => $id_,
           "name" => $row['name'],
           "msg" => 'Name Already Exists'
       );
       $response['params'] = $data;
       continue;
    } 


                      
          //Update Receord
          if (isset($row['remote_id']) && $row['remote_id'] != "0") {
            $record['m_time'] =   date('Y-m-d H:i:s');

       $update= item_master::where('id', ($row['remote_id']))->update($record);;

              if ($update) {

                     $data[] = array(
                      "id" => $row['id'],
                      "remote_id" => $row['remote_id'],
                      "msg" => 'Updated',
                     
                  );
              }

          } else { //Insert Record

            $record['c_time'] =   date('Y-m-d H:i:s');
        
               $user=item_master::create($record); 
              if ($user) {
                  //$id = DB::id;
                $id = $user['id'];

               $data[] = array(
                      "id" => $row['id'],
                      "remote_id" => $id,
                      "msg" => 'Inserted'
                  );
              } else if (!$result) {
                  $data[] = array(
                      "id" => $row['id'],
                      "remote_id" => 0
                  );
              }
           }

          $response['status'] = 1;
          $response['msg'] = 'Completed';
          $response['params'] = $data;

          
           
}
         
   return $response;

}


//prize list Master
public function pricelist_data(Request $request)
{
  $raw_dump = $this->raw_dump($request->getContent(), 'pricelist_data' ,$request['access_token']);

    

    $data = array();
    $response = array();
    $response['status'] = 0;
    $response['msg'] = 'Invalid Parameter parsed';  
    $response['params'] = array();

     foreach ($request['params'] as $row) {


      $record['name'] = isset($row['name']) ?  $row['name'] :''; 
      $record['m_time'] =   date('Y-m-d H:i:s');
        
    if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
         $master_count = pricelist_master::select('id')->where(
           'name','=', $row['name'])
          ->Where('id','!=', $row['remote_id']) 
          ->get()->count();
       }else{
      
         $master_count = pricelist_master::select('id')->where(
           'name','=', $row['name'])
          ->get()->count();
           
       }

       if ($master_count > 0) {
        
          $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
          $data[] = array(
              "id" => $id_,
              "name" => $row['name'],
              "msg" => 'Name Already Exists'
          );
          $response['params'] = $data;
          continue;
       } 
            
            //Update Receord
            if (isset($row['remote_id']) && $row['remote_id'] != "0") {

              $record['m_time'] =   date('Y-m-d H:i:s');
           $update= pricelist_master::where('id', ($row['remote_id']))->update($record);;

                if ($update) {
                  
                  $data[] = array(                         
                       
                        "id" => $row['id'],
                        "remote_id" => $row['remote_id'],
                         "msg" => 'Updated',
                    );
                }

            } else { //Insert

              $record['c_time'] =   date('Y-m-d H:i:s');
             
                 $user=pricelist_master::create($record);
              
                if ($user) {
                    
                  $id = $user['id'];
                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => $id,                            
                        "msg" => 'inserted',
                    );
                } else if (!$result) {
                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => 0
                    );
                }
             }

            $response['status'] = 1;
            $response['msg'] = 'Completed';
            $response['params'] = $data;

        
           
  }
             
     return $response;


}

//prize list item data SUB 
 public function price_list_item_data(Request $request)
 {     
  
  $raw_dump = $this->raw_dump($request->getContent(), 'price_list_item_data' ,$request['access_token']);
    $data = array();
    $response = array();
    $response['status'] = 0;
    $response['msg'] = 'Invalid Parameter parsed';  
    $response['params'] = array();
    $master_count = 0;


     foreach ($request['params'] as $row) {
       $record = array();
       $record['p_id'] = isset($row['p_id']) ?  $row['p_id'] :0;
       $record['item_id'] = isset($row['item_id']) ?  $row['item_id'] :0;
       $record['ratequoter'] = isset($row['ratequoter']) ?  $row['ratequoter'] :0; 
       $record['ratehalf'] = isset($row['ratehalf']) ?  $row['ratehalf'] :0; 
       $record['ratehalfquoter'] = isset($row['ratehalfquoter']) ?  $row['ratehalfquoter'] :0; 
       $record['rate'] = isset($row['rate']) ?  $row['rate'] :0; 
      
       
       if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
         $master_count = price_list_item_master::select('id')->where(
           'p_id','=', $row['p_id'])
          ->Where('id','!=', $row['remote_id'])
          ->Where('item_id','=', $row['item_id'])
          ->get()->count();
       }else{
      
         $master_count = price_list_item_master::select('id')->where(
           'p_id','=', $row['p_id'])
          ->Where('item_id','=', $row['item_id'])
          ->get()->count();
           
       }

       if ($master_count > 0) {
        
          $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
          $data[] = array(
              "id" => $id_,
              "p_id" => $row['p_id'],
              "msg" => 'Name Already Exists'
          );
          $response['params'] = $data;
          continue;
       }        
       
       

         //Update Receord
         if (isset($row['remote_id']) && $row['remote_id'] != "0") {


          $record['m_time'] =   date('Y-m-d H:i:s');

              $update= price_list_item_master::where('id', ($row['remote_id']))->update($record);

             if ($update) {

                       $data[] = array(                                    
                         "id" => $row['id'],
                         "remote_id" => $row['remote_id'],
                         "msg" => 'Updated', 
                     );
                    
             } 

         } else {
            //Insert Record
            $record['c_time'] =   date('Y-m-d H:i:s'); 
           
            $user=price_list_item_master::create($record); 
             if ($user){ 

             $id = $user['id']; 
                      $data[] = array(
                         "id" => $row['id'],
                         "remote_id" => $id,                            
                         "msg" => 'inserted',
                     );
                    
             } else if (!$result) {
              $data[] = array(
                  "id" => $row['id'],
                  "remote_id" => 0
              );
          }

         }

       $response['status'] = 1;
       $response['msg'] = 'Completed';
       $response['params'] = $data;
         
          
     }   

       return $response;
 }

//vehical Master
public function vehicle_data(Request $request)
{

  $raw_dump = $this->raw_dump($request->getContent(), 'vehicle_data' ,$request['access_token']);

$data = array();
$response = array();
$response['status'] = 0;
$response['msg'] = 'Invalid Parameter parsed';  
$response['params'] = array(); 

     foreach ($request['params'] as $row) {

      $record = array();
      $record['vehicle_no'] = isset($row['vehicle_no']) ?  $row['vehicle_no'] :'';
      $record['vehicle_name'] = isset($row['vehicle_name']) ?  $row['vehicle_name'] :'';
      $record['vehicle_insurance_no'] = isset($row['vehicle_insurance_no']) ? $row['vehicle_insurance_no'] : '';
      $record['vehicle_ins_exp_date'] = isset($row['vehicle_ins_exp_date']) ? $row['vehicle_ins_exp_date'] : ''; 
      $record['vehicle_diesel'] = isset($row['vehicle_diesel']) ? $row['vehicle_diesel'] : '';
      $record['vehicle_fc_no'] = isset($row['vehicle_fc_no']) ? $row['vehicle_fc_no'] : '';
      $record['vehicle_fc_exp_date'] = isset($row['vehicle_fc_exp_date']) ? $row['vehicle_fc_exp_date'] : ''; 
      $record['vehicle_pollution_certificate_no'] = isset($row['vehicle_pollution_certificate_no']) ? $row['vehicle_pollution_certificate_no'] : '';
      $record['vehicle_exp_date'] = isset($row['vehicle_exp_date']) ? $row['vehicle_exp_date'] : ''; 
     



      if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
        $master_count = vehicle_master::select('*')->where(
          'vehicle_no','=', $row['vehicle_no'])
         ->Where('id','!=', $row['remote_id']) 
         ->get()->count();
      } else{
     
        $master_count = vehicle_master::select('id')->where(
          'vehicle_no','=', $row['vehicle_no'])
         ->get()->count();
          
      }

      if ($master_count > 0) {
        
        $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
        $data[] = array(
            "id" => $id_,
            "vehicle_no" => $row['vehicle_no'],
            "msg" => 'vehicle_no Already Exists'
        );
        $response['params'] = $data;
        continue;
     } 
       

  
            //Update Receord
            if (isset($row['remote_id']) && $row['remote_id'] != "0") {
              
              $record['m_time'] =   date('Y-m-d H:i:s');
              $update= vehicle_master::where('id', ($row['remote_id']))->update($record);;

                if ($update) {

                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => $row['remote_id'],
                        "msg" => 'Updated',
                        
                    );
                }

            } else { //Insert Record
              $record['c_time'] =   date('Y-m-d H:i:s');

                 $user=vehicle_master::create($record);
               
                if ($user) {
                  
                  $id = $user['id'];
                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => $id,
                        "msg" => 'inserted'
                    );
                } else if (!$result) {
                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => 0
                    );
                }
             }

            $response['status'] = 1;
            $response['msg'] = 'Completed';
            $response['params'] = $data;

           
  }
           
     return $response;
}

//Route Master
public function route_data(Request $request)
{
  $raw_dump = $this->raw_dump($request->getContent(), 'route_data' ,$request['access_token']);

  $data = array();
  $response = array();
  $response['status'] = 0;
  $response['msg'] = 'Invalid Parameter parsed';  
  $response['params'] = array();


     foreach ($request['params'] as $row) {

      $record['no'] = isset($row['no']) ?  $row['no'] :'';
      $record['route_name'] = isset($row['route_name']) ?  $row['route_name'] :0;
      $record['vec_name'] = isset($row['vec_name']) ? $row['vec_name'] : 0;
      $record['vec_id'] = isset($row['vec_id']) ? $row['vec_id'] : 0;  



      if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
        $master_count = route_master::select('id')->where(
          'no','=', $row['no'])
         ->Where('id','!=', $row['remote_id']) 
         ->get()->count();
      }else{
     
        $master_count = route_master::select('id')->where(
          'no','=', $row['no']) 
         ->get()->count();
          
      }

      if ($master_count > 0) {
       
         $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
         $data[] = array(
             "id" => $id_,
             "no" => $row['no'],
             "msg" => 'Name Already Exists'
         );
         $response['params'] = $data;
         continue;
      } 
            
            //Update Receord
            if (isset($row['remote_id']) && $row['remote_id'] != "0") {

            
              $record['m_time'] = date('Y-m-d H:i:s');
                $update= route_master::where('id', ($row['remote_id']))->update($record);;

                if ($update) {

               $data[] = array(
                        "remote_id" => $row['remote_id'],
                        "msg" => 'Updated',
                        "id" => $row['id'],
                    );
                }
            } else { //Insert Record

              $record['c_time'] = date('Y-m-d H:i:s');

           
               $user=route_master::create($record);
                if ($user) { 
                  $id = $user['id'];

                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => $id,
                        "msg" => 'Inserted'
                    );
                } else if (!$result) {
                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => 0
                    );
                }
             }

            $response['status'] = 1;
            $response['msg'] = 'Completed';
            $response['params'] = $data;

             
  }
            
     return $response;


}


//Employee Master
  public function employee_data(Request $request)
  {
   
   // $raw_dump = $this->raw_dump($request->getContent(), 'employee_data' ,$request['access_token']);

    $data = array();
    $response = array();
    $response['status'] = 0;
    $response['msg'] = 'Invalid Parameter parsed';  
    $response['params'] = array();

       foreach ($request['params'] as $row) {
        

        $record['name'] = isset($row['name']) ?  $row['name'] :'';
        $record['user_id'] = isset($row['user_id']) ?  $row['user_id'] : '';
        $record['user_pwd'] = isset($row['user_pwd']) ? $row['user_pwd'] : '';
        $record['user_role'] = isset($row['user_role']) ? $row['user_role'] : '';
        $record['user_division'] = isset($row['user_division']) ? $row['user_division'] : '';
        $record['mobile_no'] = isset($row['mobile_no']) ? $row['mobile_no'] : '';
        $record['address'] = isset($row['address']) ? $row['address'] : '';
        $record['aadhar_no'] = isset($row['aadhar_no']) ? $row['aadhar_no']!="" ? $row['aadhar_no']:'' : '';
        $record['pan_no'] = isset($row['pan_no']) ? $row['pan_no']!="" ? $row['pan_no'] : '' : '';
        $record['licenses_no'] = isset($row['licenses_no']) ? $row['licenses_no']!="" ? $row['licenses_no'] : '' : '';  


        if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
          $master_count = employee_masters::select('id')->where(
            'name','=', $row['name'])
           ->Where('id','!=', $row['remote_id']) 
           ->get()->count();
        }else{
       
          $master_count = employee_masters::select('id')->where(
            'name','=', $row['name']) 
           ->get()->count();
            
        }

        if ($master_count > 0) {
         
           $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
           $data[] = array(
               "id" => $id_,
               "name" => $row['name'],
               "msg" => 'Name Already Exists'
           );
           $response['params'] = $data;
           continue;
        } 

              //Update Receord
              if (isset($row['remote_id']) && $row['remote_id'] != "0") {


              //  $record['m_time'] =   date('Y-m-d H:i:s');
                 
                  $update= employee_masters::where('id', ($row['remote_id']))->update($record);

                  if ($update) {

                      $data[] = array(
                          "remote_id" => $row['remote_id'],
                          "msg" => 'Updated',
                          "id" => $row['id'],
                      );
                  }
              } else { //Insert Record


            //    $record['c_time'] =   date('Y-m-d H:i:s');

                $user=employee_masters::create($record);
                 
                  if ($user) {
                      
                    $id = $user['id'];
                      $data[] = array(
                          "id" => $row['id'],
                          "remote_id" => $id,
                          "msg" => 'Inserted'
                      );
                  } else if (!$result) {
                      $data[] = array(
                          "id" => $row['id'],
                          "remote_id" => 0
                      );
                  }
               }

              $response['status'] = 1;
              $response['msg'] = 'Completed';
              $response['params'] = $data;

              }
                
       return $response;
  
  }

  //Customer Master
 public function customer_data(Request $request)
 {
  $raw_dump = $this->raw_dump($request->getContent(), 'customer_data' ,$request['access_token']);

  $data = array();
  $response = array();
  $response['status'] = 0;
  $response['msg'] = 'Invalid Parameter parsed';  
  $response['params'] = array();


      foreach ($request['params'] as $row) {


        $record['name'] = isset($row['name']) ?  $row['name'] :'';
        $record['code'] = isset($row['code']) ?  $row['code'] :0;
        $record['address'] = isset($row['address']) ? $row['address'] : 0;
        $record['c_person'] = isset($row['c_person']) ? $row['c_person'] : 0;
        $record['mobile_no'] = isset($row['mobile_no']) ? $row['mobile_no'] : 0;
        $record['alt_mobile_no'] = isset($row['alt_mobile_no']) ? $row['alt_mobile_no'] : 0;
        $record['gst_no'] = isset($row['gst_no']) ? $row['gst_no'] : 0;
        $record['pan_no'] = isset($row['pan_no']) ? $row['pan_no'] : 0;
        $record['user_email'] = isset($row['user_email']) ? $row['user_email'] : 0;
        $record['location'] = isset($row['location']) ? $row['location'] : 1;
        $record['route_name'] = isset($row['route_name']) ? $row['route_name'] : 0;
        $record['price_list'] = isset($row['price_list']) ? $row['price_list'] : 0;
        $record['s_executive'] = isset($row['s_executive']) ? $row['s_executive'] : 0;

        if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
          $master_count = customer_master::select('id')->where(
            'name','=', $row['name'])
           ->Where('id','!=', $row['remote_id']) 
           ->get()->count();
        }else{
       
          $master_count = customer_master::select('id')->where(
            'name','=', $row['name']) 
           ->get()->count();
            
        }
        if ($master_count > 0) {
         
           $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
           $data[] = array(
               "id" => $id_,
               "name" => $row['name'],
               "msg" => 'Name Already Exists'
           );
           $response['params'] = $data;
           continue;
        } 
      
             //Update Receord
             if (isset($row['remote_id']) && $row['remote_id'] != "0") {
              $record['m_time'] =   date('Y-m-d H:i:s');

             
                 $update= customer_master::where('id', ($row['remote_id']))->update($record);;

                 if ($update) {
                     $data[] = array(
                        "id" => $row['id'],
                         "remote_id" => $row['remote_id'],
                         "msg" => 'Updated',
                     );
                 }
             } else { //Insert Record

                
             $record['c_time'] =   date('Y-m-d H:i:s');
             
                  $user=customer_master::create($record);
               
                 if ($user) {
                    
                   $id = $user['id'];

                     $data[] = array(
                         "id" => $row['id'],
                         "remote_id" => $id,
                         "msg" => 'Inserted'
                     );
                 } else if (!$result) {
                     $data[] = array(
                         "id" => $row['id'],
                         "remote_id" => 0
                     );
                 }
              }

             $response['status'] = 1;
             $response['msg'] = 'Completed';
             $response['params'] = $data;
   }              
      return $response;  

 }

 public function bar_selection_data(Request $request)
{
   $raw_dump = $this->raw_dump($request->getContent(), 'bar_selection_data' ,$request['access_token']);

  $data = array();
  $response = array();
  $response['status'] = 0;
  $response['msg'] = 'Invalid Parameter parsed';  
  $response['params'] = array();


     foreach ($request['params'] as $row) {

      $record['empty_clr'] = isset($row['empty_clr']) ?  $row['empty_clr'] :'';
      $record['filled_clr'] = isset($row['filled_clr']) ?  $row['filled_clr'] :0;
      $record['underprocess_clr'] = isset($row['underprocess_clr']) ? $row['underprocess_clr'] : 0;
      $record['selected_clr'] = isset($row['selected_clr']) ? $row['selected_clr'] : 0;  

      if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
        $master_count = bar_selection_master::select('id')->where(
          'empty_clr','=', $row['empty_clr'])
         ->Where('id','!=', $row['remote_id']) 
         ->get()->count();
      } else {
             
        $master_count = bar_selection_master::select('id')->where(
          'empty_clr','=', $row['empty_clr']) 
         ->get()->count();
          
      }

      if ($master_count > 0) {
       
         $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : $row['id'];
         $data[] = array(
             "id" => $id_,
             "empty_clr" => $row['empty_clr'],
             "msg" => 'empty_clr Already Exists'
         );
         $response['params'] = $data;
         continue;
      } 
            
            //Update Receord
            if (isset($row['remote_id']) && $row['remote_id'] != "0") {

            
              $record['m_time'] = date('Y-m-d H:i:s');
                $update= bar_selection_master::where('id', ($row['remote_id']))->update($record);;

                if ($update) {

               $data[] = array(
                        "remote_id" => $row['remote_id'],
                        "msg" => 'Updated',
                        "id" => $row['id'],
                    );
                }
            } else { //Insert Record

              $record['c_time'] = date('Y-m-d H:i:s');

           
               $user=bar_selection_master::create($record);
                if ($user) { 
                  $id = $user['id'];

                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => $id,
                        "msg" => 'Inserted'
                    );
                } else if (!$result) {
                    $data[] = array(
                        "id" => $row['id'],
                        "remote_id" => 0
                    );
                }
             }

            $response['status'] = 1;
            $response['msg'] = 'Completed';
            $response['params'] = $data;

             
  }
            
     return $response;


}

 // Push Master Record
   //master table calling  function
   public function push_master(Request $request)
   {
       // if($request->api_key!=auth()->user()->api_key)
       // {
       //   return response([
       //       "message"=>"invalid token"
       //   ]);
       // }
       $raw_dump = $this->raw_dump($request->getContent(), 'push_master' ,$request['access_token']);

       if(isset($request->table)&&$request->table=='tax_master'){

        $tax_data=DB::table('tax_master')->select('id as remote_id','name','cgst','sgst','igst','status','c_time','updated_at as m_time');

        if($request->limit!="" && $request->last_up_time!=""){

            $users = $tax_data->where('updated_at','>',$request->last_up_time)->take($request->limit)->get();

         }else if($request->last_up_time!=""){
 
            $users = $tax_data->where('updated_at','>',$request->last_up_time)->get();
 
          }
          else if($request->limit!=""){
 
            $users = $tax_data->take($request->limit)->get();
 
          }
         else{
           $users = $tax_data->get();
         }
        return response([                
            "status" => '1',
            "msg"=>"Data Successfully get",
            "data"=>$users,
           
            
        ]);
    
         
    }
    else if(isset($request->table)&&$request->table=='item_master'){

        $item_master=DB::table('item_master')->select('id as remote_id', 'name', 'code', 'tax_id', 'ratequoter', 'ratehalf', 'ratehalfquoter', 'rate', 'image_id', 'status', 'c_time', 'updated_at as m_time');

        if($request->limit!="" && $request->last_up_time!=""){

            $users = $item_master->where('updated_at','>',$request->last_up_time)->take($request->limit)->get();
         }else if($request->last_up_time!=""){
 
            $users = $item_master->where('updated_at','>',$request->last_up_time)->get();
 
          }
          else if($request->limit!=""){
 
            $users = $item_master->take($request->limit)->get();
 
          }
         else{
           $users = $item_master->get();
         }
        return response([                
            "status" => '1',
            "msg"=>"New record",
            "data"=>$users,
           
            
        ]);
    
         
    }else if(isset($request->table)&&$request->table=='bar_selection_master'){

      $bar_selection_master=DB::table('bar_selection_master')->select('id as remote_id', 'empty_clr',
       'filled_clr', 'underprocess_clr', 'selected_clr', 'status', 'c_time', 'updated_at as m_time');

      if($request->limit!="" && $request->last_up_time!=""){

          $users = $bar_selection_master->where('updated_at','>',$request->last_up_time)->take($request->limit)->get();
       }else if($request->last_up_time!=""){

          $users = $bar_selection_master->where('updated_at','>',$request->last_up_time)->get();

        }
        else if($request->limit!=""){

          $users = $bar_selection_master->take($request->limit)->get();

        }
       else{
         $users = $bar_selection_master->get();
       }
      return response([                
          "status" => '1',
          "msg"=>"New record",
          "data"=>$users,
         
          
      ]);
  
       
  }

    else  if(isset($request->table)&&$request->table=='pricelist_master'){

        $pricelist_master = DB::table('pricelist_master')->select('id as remote_id','name','status','c_time','updated_at as m_time');

        if($request->limit!="" && $request->last_up_time!=""){

            $data = $pricelist_master->where('updated_at','>',$request->last_up_time)->take($request->limit)->get();
         }else if($request->last_up_time!=""){
 
            $data = $pricelist_master->where('updated_at','>',$request->last_up_time)->get();
 
          }
          else if($request->limit!=""){
 
            $users = $pricelist_master->take($request->limit)->get();
 
          }
         else{
           $data = $pricelist_master->get();
         }
        return response([                
            "status" => '1',
            "msg"=>"New Record",
            "data"=>$data,
           
            
        ]);
    
         
    }
    else if(isset($request->table)&&$request->table=='price_list_item_master'){

        $price_list_item_master = DB::table('price_list_item_master')->select('id as remote_id','p_id','item_id','ratequoter','ratehalf','ratehalfquoter','rate','status','c_time','updated_at as m_time');

        if($request->limit!="" && $request->last_up_time!=""){

            $users = $price_list_item_master->where('updated_at','>',$request->last_up_time)->take($request->limit)->get();
         }else if($request->last_up_time!=""){
 
            $users = $price_list_item_master->where('updated_at','>',$request->last_up_time)->get();
 
          }
          else if($request->limit!=""){
 
            $users = $price_list_item_master->take($request->limit)->get();
 
          }
         else{
           $users = $price_list_item_master->get();
         }
        return response([                
            "status" => '1',
            "msg"=>"New Record",
            "data"=>$users,
           
            
        ]);
    
         
    }

    else  if(isset($request->table)&&$request->table=='vehicle_master'){

          $vehicle_master=DB::table('vehicle_master')->select('id as remote_id', 'vehicle_no as no', 'vehicle_name as name', 'vehicle_exp_date as vec_exp_date', 'vehicle_insurance_no as vec_insurance','vehicle_ins_exp_date as vec_ins_exp_date','vehicle_fc_exp_date as vec_fc_exp_date', 'vehicle_fc_no as vec_fc', 'vehicle_pollution_certificate_no as pollution_certificate', 'vehicle_diesel as vec_diesel', 'status', 'c_time', 'updated_at as m_time');

          if($request->limit!="" && $request->last_up_time!=""){

            $users = $vehicle_master->where('updated_at','>',$request->last_up_time)->take($request->limit)->get();
         }else if($request->last_up_time!=""){
 
            $users = $vehicle_master->where('updated_at','>',$request->last_up_time)->get();
 
          }
          else if($request->limit!=""){
 
            $users = $vehicle_master->take($request->limit)->get();
 
          }
         else{
           $users = $vehicle_master->get();
         }
          return response([                
              "status" => '1',
              "msg"=>"New Record",
              "data"=>$users,
             
              
          ]);
      
           
      }
      else if(isset($request->table)&&$request->table=='company_master'){


        $company_master = DB::table('company_master')->select('id as remote_id','name','fssai_no','address','pincode','mobile_no','state','country','gst_no','bank_name','acc_no','ifsc','c_time','updated_at as m_time');

        if($request->limit!="" && $request->last_up_time!=""){

           $users = $company_master->where('updated_at','>',$request->last_up_time)
           ->take($request->limit)->get();
        }else if($request->last_up_time!=""){

           $users = $company_master->where('updated_at','>',$request->last_up_time)->get();

         }
         else if($request->limit!=""){
 
            $users = $company_master->take($request->limit)->get();
 
          }
        else{
          $users = $company_master->get();
        }
          return response([                
              "status" => '1',
              "msg"=>"New record",
              "data"=>$users,

          ]);
      
           
      }
      else if(isset($request->table)&&$request->table=='route_master'){
       
        $route_master = DB::table('route_master')->select('id as remote_id','no','route_name as name','vec_name','vec_id','status','c_time','updated_at as m_time');

        if($request->limit!="" && $request->last_up_time!=""){

           $users = $route_master->where('updated_at','>',$request->last_up_time)->take($request->limit)->get();
        }else if($request->last_up_time!=""){

           $users = $route_master->where('updated_at','>',$request->last_up_time)->get();

         }
         else if($request->limit!=""){
 
            $users = $route_master->take($request->limit)->get();
 
          }
        else{
          $users = $route_master->get();
        }
          return response([                
              "status" => '1',
              "msg"=>"New record",
              "data"=>$users,

          ]);
      
           
      }


        
      else if(isset($request->table)&&$request->table=='employee_masters'){

           $employee_master = DB::table('employee_masters')->select('id as remote_id', 'name', 'mobile_no', 'user_id', 'user_pwd', 'user_role', 'user_division', 'address', 'aadhar_no', 'pan_no', 'licenses_no', 'status', 'c_time', 'updated_at as m_time');
           if($request->limit!="" && $request->last_up_time!=""){

            $users = $employee_master->where('updated_at','>',$request->last_up_time)->take($request->limit)->get();
         }else if($request->last_up_time!=""){
 
            $users = $employee_master->where('updated_at','>',$request->last_up_time)->get();
 
          }
          else if($request->limit!=""){
 
            $users = $employee_master->take($request->limit)->get();
 
          }
         else{
           $users = $employee_master->get();
         }
           return response([                
               "status" => '1',
               "msg"=>"New record",
               "data"=>$users,
           ]);
       }

     
         else  if(isset($request->table)&&$request->table=='customer_master'){

           $customer_master = DB::table('customer_master')->select('id as remote_id', 'name', 'code', 'address', 'c_person', 'mobile_no', 'alt_mobile_no', 'gst_no', 'pan_no', 'user_email', 'location', 'route_name', 'price_list', 's_executive', 'status', 'c_time', 'updated_at as m_time');

           if($request->limit!="" && $request->last_up_time!=""){

            $users = $customer_master->where('updated_at','>',$request->last_up_time)->
            take($request->limit)->get();

         }else if($request->last_up_time!=""){
 
            $users = $customer_master->where('updated_at','>',$request->last_up_time)->get();
 
            
          }else if($request->limit!=""){
 
            $users = $customer_master->take($request->limit)->get();
 
          }
         else{
           $users = $customer_master->get();
         }
           return response([                
               "status" => '1',
               "msg"=>"New Record",
               "data"=>$users,
              
               
           ]);
       
            
       }
     else{

         return response([                
           "status" => '0',
           "msg"=>"No Record",
                      
           
       ]);
       }
      
      
}


public function UpdateMasterStatus(Request $request)
{
  $raw_dump = $this->raw_dump($request->getContent(), 'UpdateMasterStatus' ,$request['access_token']);

  $response = array();
  $response['status'] = 0;
  $response['msg'] = 'update failed';

  try {
    if (!isset($request['table']) || !isset($request['remote_id']) || !isset($request['type'])) {
      $response['msg'] = 'Invalid Parameters';
      return $response;
  }
      DB::beginTransaction();
  
      $users = DB::table($request['table'])->where('id', '=', $request['remote_id'])->get()->count();

     // print($users);
        if ($users > 0) {
          $param = array();
          if ($request['type'] === 'deactivate') {
              $param['status'] = 0;
          } else {
              $param['status'] = 1;
          }
          $param['m_time'] = date('Y-m-d H:i:s');
  

        switch ($request['table']) {
          case 'vehicle_master':
           $update = vehicle_master::where('id',$request->remote_id)->update($param);
            break;
        
            case 'tax_master':
             $update = tax_master::where('id',$request->remote_id)->update($param);
              break;
              case 'item_master':
               $update = item_master::where('id',$request->remote_id)->update($param);
                break;
                case 'pricelist_master':
                 $update = pricelist_master::where('id',$request->remote_id)->update($param);
                  break;
                  case 'price_list_item_master':
                   $update = price_list_item_master::where('id',$request->remote_id)->update($param);
                    break;
                    case 'route_master':
                     $update = route_master::where('id',$request->remote_id)->update($param);
                      break;
                      case 'employee_masters':
                       $update = employee_masters::where('id',$request->remote_id)->update($param);
                        break;
                        case 'customer_master':
                         $update = customer_master::where('id',$request->remote_id)->update($param);
                          break;
                          case 'company_master':
                            $update = company_master::where('id',$request->remote_id)->update($param);
                             break;
                             case 'bar_selection_master':
                              $update = bar_selection_master::where('id',$request->remote_id)->update($param);
                               break;
            
          default:
            # code...
            break;
        }

      
      
         if($update) {
              $response['status'] = 1;
              $response['msg'] = 'updated';
          } else {
              $response['status'] = 2;
              $response['msg'] = 'Failed';
          }
      }

      DB::commit();
  } catch (\Throwable $th) {
    DB::rollback(); 

  }
  
  return $response;
}

public function company_data(Request $request)
{
  $raw_dump = $this->raw_dump($request->getContent(), 'company_data' ,$request['access_token']); 

  $data = array();
  $response = array();
  $response['status'] = 0;
  $response['msg'] = 'Invalid Parameter parsed';  
  $response['params'] = array();


      foreach ($request['params'] as $row) {    
        
        
        $record['name'] = isset($row['name']) ?  $row['name'] :'';
        $record['address'] = isset($row['address']) ?  $row['address'] :'';
        $record['fssai_no'] = isset($row['fssai_no']) ?  $row['fssai_no'] :'';
        $record['gst_no'] = isset($row['gst_no']) ?  $row['gst_no'] :'';
        $record['mobile_no'] = isset($row['mobile_no']) ? $row['mobile_no'] : '';
        $record['pincode'] = isset($row['pincode']) ?  $row['pincode'] :'';
        $record['state'] = isset($row['state']) ?  $row['state'] :'';
        $record['country'] = isset($row['country']) ?  $row['country'] :''; 
        $record['bank_name'] = isset($row['bank_name']) ?  $row['bank_name'] :'';
        $record['acc_no'] = isset($row['acc_no']) ?  $row['acc_no'] :'';
        $record['ifsc'] = isset($row['ifsc']) ?  $row['ifsc'] :'';
        



        if (isset($row['remote_id']) && $row['remote_id'] != "0") {
       
          $master_count = company_master::select('id')
          ->where('name','=', $row['name'])
           ->Where('id','!=', $row['remote_id']) 
           ->get()->count();

        }else{
       
          $master_count = company_master::select('id')->where(
            'name','=', $row['name']) 
           ->get()->count();
            
        }
        //print($master_count);

        if ($master_count > 0) {
         
           $id_ = (isset($row['remote_id']) && $row['remote_id'] != "0") ? $row['remote_id'] : 
           $row['id'];
           $data[] = array(
               "id" => $id_,
               "name" => $row['name'],
               "msg" => 'name Already Exists'
           );
           $response['params'] = $data;
           continue;
        }
      
             //Update Receord
             if (isset($row['remote_id']) && $row['remote_id'] != "0") {
             // $record['m_time'] =   date('Y-m-d H:i:s');

             
                 $update= company_master::where('id', ($row['remote_id']))->update($record);;

                 if ($update) {
                     $data[] = array(
                        "id" => $row['id'],
                         "remote_id" => $row['remote_id'],
                         "msg" => 'Updated',
                     );
                 }
             } else { //Insert Record

                
             $record['c_time'] =   date('Y-m-d H:i:s');
             
                  $user=company_master::create($record);
               
                 if ($user) {
                    
                   $id = $user['id'];

                     $data[] = array(
                         "id" => $row['id'],
                         "remote_id" => $id,
                         "msg" => 'Inserted'
                     );
                 } else if (!$result) {
                     $data[] = array(
                         "id" => $row['id'],
                         "remote_id" => 0
                     );
                 }
              }

             $response['status'] = 1;
             $response['msg'] = 'Completed';
             $response['params'] = $data;

         
   }
              
      return $response;
}




public function raw_dump($request, $type, $token)
{

  $token_value;
  $tok_id=DB::table('personal_access_tokens')->select('tokenable_id')->where('token','=',$token)->get();

  foreach ($tok_id as $key => $tok_value) {
   // print($tok_value->tokenable_id);
    $token_value = $tok_value->tokenable_id;
  }


 // print($token_value);
  $record = array();
  $record['user_id'] = $token_value;
  $record['access_token'] =   $token;
  $record['json_dump'] =   $request;
  $record['request_type'] =   $type;
 // $record['m_time'] =   date('Y-m-d H:i:s');
            
  $user=raw_dump_archive::create($record);  

}

}
