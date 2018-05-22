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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::post('company', 'CompanyController@store')->name('company.store');
Route::get('company/create', 'CompanyController@create')->name('company.create');

Route::post('ad', 'AdController@store')->name('ad.store');
Route::get('ad/create', 'AdController@create')->name('ad.create');