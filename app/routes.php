<?php

$lang = new Language;
App::setLocale(isset($lang->defaultLanguage()->short) ? $lang->defaultLanguage()->short : 'en');

Route::get('/',								'WebsiteController@index');
Route::get('guest-ticket',					'WebsiteController@create');
Route::post('website/send-ticket',			'WebsiteController@store');
Route::get('login',							'LoginController@login');
Route::post('auth',							'LoginController@auth');
Route::get('create-account',				'LoginController@create');
Route::post('signin',						'LoginController@store');
Route::get('forgot-password',				'LoginController@forgotPassword');
Route::post('reset',						'LoginController@reset');
Route::get('logout',						'LoginController@logout');

Route::group(array('before' => 'auth'), function()
{
	Route::group(array('before' => 'admin'), function() 
	{
		Route::get('admin',								'AdminController@index');
		Route::delete('user/{id}/ban', 					'UserController@banUser');
		Route::get('client/{id}/send-invitation',		'ClientController@sendInvitation');
	});	

	Route::get('dashboard',								'DashboardController@index');	
	Route::post('language/setDefault',					'LanguageController@setDefaultLanguage');	
	Route::resource('ticket',							'TicketController');
	Route::resource('user',								'UserController');

});	


App::missing(function($exception)
{
	return Response::view('assets.messages.error-404', array(), 404);
});