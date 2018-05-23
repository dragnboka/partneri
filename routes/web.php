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
Route::get('/oglasi', 'PagesController@ads')->name('ads');
Route::get('/paketi', 'PagesController@packet')->name('packet.item');


Route::post('company', 'CompanyController@store')->name('company.store');
Route::get('company/create', 'CompanyController@create')->name('company.create');

Route::post('ad', 'AdController@store')->name('ad.store');
Route::get('ad/create', 'AdController@create')->name('ad.create');

Route::get('/predavanja', 'LectureController@index')->name('lecture.index');
Route::get('/predavanja/{lecture}', 'LectureController@show')->name('lecture.show');
Route::post('lecture', 'LectureController@store')->name('lecture.store');
Route::get('lecture/create', 'LectureController@create')->name('lecture.create');

Route::group(['middleware' => 'role:admin'], function () {
    Route::post('/packet/create', 'PacketController@store')->name('packet.store');
    Route::get('/packet', 'PacketController@create')->name('packet.create');

    Route::get('/contract/money/create', 'MoneyContractController@create')->name('contract.money.create');
    Route::post('/contract/money', 'MoneyContractController@store')->name('contract.money.store');
});
