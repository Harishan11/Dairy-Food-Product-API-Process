<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController; 
use App\Http\Controllers\MasterController;
use App\Http\Controllers\EntryController;
use App\Http\Controllers\RawController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });




Route::middleware('auth:sanctum')->get('/employee_master', function (Request $request) {
    return $request->employee_master();
});

Route::middleware('auth:sanctum')->get('/raw_dump', function (Request $request) {
    return $request->raw_dump();
});

//Route::get('/teacher', [TeacherController::class, 'index']);

//Route::get('/user', [UserController::class, 'index']);
//Route::get('/user', [StudentController::class, 'index']);

//Route::get('studentss', [StudentsController::class, 'index']);

//user creation
//oute::post('/UserCreation',[AuthController::class,'UserCreation']);

//raw_dump
//Route::post('raw_dump',[RawController::class,'raw_dump']);


//login creation
Route::post('login',[AuthController::class,'login']);

//insert master table data
Route::post('tax_data',[MasterController::class,'tax_data']);

Route::post('vehicle_data',[MasterController::class,'vehicle_data']);

Route::post('item_data',[MasterController::class,'item_data']);

Route::post('pricelist_data',[MasterController::class,'pricelist_data']);

Route::post('price_list_item_data',[MasterController::class,'price_list_item_data']);

Route::post('route_data',[MasterController::class,'route_data']);

Route::post('employee_data',[MasterController::class,'employee_data']);

Route::post('customer_data',[MasterController::class,'customer_data']);

Route::post('company_data',[MasterController::class,'company_data']);

Route::post('push_entry',[EntryController::class,'push_entry']);

//master update status
Route::post('UpdateMasterStatus',[MasterController::class,'UpdateMasterStatus']);

//push_master
Route::post('push_master',[MasterController::class,'push_master']);

//push_entry
Route::post('bar_selection_data',[MasterController::class,'bar_selection_data']);




//master logout
Route::post('MasterLoginStatus',[AuthController::class,'MasterLoginStatus']);

//user logout
Route::post('logout',[AuthController::class,'logout']);

//insert master table data
Route::post('sale_order_data',[EntryController::class,'sale_order_data']);

Route::post('sale_order_item_data',[EntryController::class,'sale_order_item_data']);

//group search
Route::post('group',[AuthController::class,'group'])->middleware('auth:sanctum');
 
