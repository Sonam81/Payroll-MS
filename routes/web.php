<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'admin'], function () {
    $namespacePrefix = '\\'.config('voyager.controllers.namespace').'\\';    
    Voyager::routes();

    //Payslip Route
    Route::get('payslip','PayslipsController@payslip')->name('payslip');
    Route::post('payslip/generatepayslip','PayslipsController@generatePayslip')->name('generatepayslip');
    
    //Payment Route
    Route::any('payments','PaymentsController@index')->name('payments.index');
    Route::post('payments/addpayment','PaymentsController@create')->name('payments.addpayment');
    Route::any('payments/payment/select','PaymentsController@select')->name('payments.select');
    Route::any('payments/store','PaymentsController@store')->name('payments.store');
    Route::any('payments/payslip/{id}','PaymentsController@generatePayslip')->name('payments.generatePayslip');
    Route::any('payments/payslip','PaymentsController@payslip')->name('payments.payslip');
    Route::any('payments/delete/{id}','PaymentsController@delete')->name('payments.delete');
    Route::any('payments/edit/{id}','PaymentsController@edit')->name('payments.edit');
    Route::post('payments/report','PaymentsController@report')->name('payments.report');

    //Attendances Route
    Route::any('attendances','AttendancesController@index')->name('attendances.index');
    Route::any('attendances/create','AttendancesController@create')->name('attendances.create');
    Route::post('attendances/store','AttendancesController@store')->name('attendances.store');
    Route::any('attendances/edit/{id}','AttendancesController@edit')->name('attendances.edit');
    Route::any('attendances/update/{id}','AttendancesController@update')->name('attendances.update');
    Route::any('attendances/delete/{id}','AttendancesController@delete')->name('attendances.delete');
    Route::any('attendances/deleteDetails/{id}','AttendancesController@deleteDetails')->name('attendances.deleteDetails');
    Route::post('attendances/report','AttendancesController@report')->name('attendances.report');
});


//Overriding new routes 
