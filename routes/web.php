<?php

Route::get('/api', 'ApiController@index')->name('api.main');

Route::get('/', 'PagesController@home')->name('main');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/paketi', 'PagesController@packet')->name('packet.item');


Route::get('companies', 'CompanyController@index')->name('company.index');
Route::get('companies/{company}', 'CompanyController@show')->name('company.show');
Route::get('companies/{company}/edit', 'CompanyController@edit')->name('company.edit');
Route::post('company', 'CompanyController@store')->name('company.store');
Route::put('companies/{company}', 'CompanyController@update')->name('company.update');
Route::get('company/create', 'CompanyController@create')->name('company.create');

Route::post('ad', 'AdController@store')->name('ad.store');
Route::get('ad/create', 'AdController@create')->name('ad.create');
Route::get('/oglasi', 'AdController@index')->name('ads');
Route::get('/oglasi/{ad}', 'AdController@show')->name('ad.show');

Route::get('/predavanja', 'LectureController@index')->name('lecture.index');
Route::get('/predavanja/{lecture}', 'LectureController@show')->name('lecture.show');
Route::post('lecture', 'LectureController@store')->name('lecture.store');
Route::get('lecture/create', 'LectureController@create')->name('lecture.create');

Route::get('/prosla/predavanja', 'LectureArchiveController@index')->name('lecture.archives');

Route::get('/email/expired/{company}', 'Emails\PacketExpiredController@store')->name('email.expired');
Route::get('/email/expiring/{company}', 'Emails\PacketExpiringController@store')->name('email.expiring.in.two');

Route::group(['middleware' => 'role:admin'], function () {

    Route::namespace('Users')->group(function () {
        Route::get('/users', 'UserController@index')->name('user.index');
        Route::post('/user', 'UserController@store')->name('user.store');
        Route::get('/users/{user}', 'UserController@show')->name('user.show');
        Route::put('/users/{user}', 'UserController@update')->name('user.update');
        Route::get('/user/create', 'UserController@create')->name('user.create');
        
        Route::get('unapproved/users', 'UnapprovedController@index')->name('user.unapproved');
        Route::get('unapproved/users/{user}', 'UnapprovedController@show')->name('user.unapproved.show');
        Route::put('unapproved/users/{user}', 'UnapprovedController@update')->name('user.unapproved.update');
        Route::delete('unapproved/users/{user}', 'UnapprovedController@destroy')->name('user.unapproved.destroy');
    });
    
    Route::post('/packet/create', 'PacketController@store')->name('packet.store');
    Route::get('/packet', 'PacketController@create')->name('packet.create');

    Route::get('/contract/money/create', 'MoneyContractController@create')->name('contract.money.create');
    Route::post('/contract/money', 'MoneyContractController@store')->name('contract.money.store');

    Route::get('/contract/donation/create', 'DonatingContractController@create')->name('contract.donation.create');
    Route::post('/contract/donation', 'DonatingContractController@store')->name('contract.donation.store');
});
