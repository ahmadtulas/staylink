<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\Property;
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
	return redirect()->route('reservation');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionsController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\PropertyController;
            

Route::get('/', function () {return redirect('sign-in');})->middleware('guest');
Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('auth')->name('dashboard');
Route::get('sign-up', [RegisterController::class, 'create'])->middleware('guest')->name('register');
Route::post('sign-up', [RegisterController::class, 'store'])->middleware('guest');
Route::get('sign-in', [SessionsController::class, 'create'])->middleware('guest')->name('login');
Route::post('sign-in', [SessionsController::class, 'store'])->middleware('guest');
Route::post('verify', [SessionsController::class, 'show'])->middleware('guest');
Route::post('reset-password', [SessionsController::class, 'update'])->middleware('guest')->name('password.update');
Route::get('verify', function () {
	return view('sessions.password.verify');
})->middleware('guest')->name('verify'); 
Route::get('/reset-password/{token}', function ($token) {
	return view('sessions.password.reset', ['token' => $token]);
})->middleware('guest')->name('password.reset');

Route::post('sign-out', [SessionsController::class, 'destroy'])->middleware('auth')->name('logout');
Route::post('booking', [BookingController::class, 'checkAvailability'])->middleware('auth')->name('booking');
Route::post('user-management', function (Request $req) {
	dd($req);
});

Route::post('step2', [BookingController::class, 'roomselection'])->middleware('auth')->name('step2');
Route::post('step3', [BookingController::class, 'addingGuest'])->middleware('auth')->name('step3');
Route::post('step4', [BookingController::class, 'transectionDetail'])->middleware('auth')->name('step4');
Route::post('submitTran', [BookingController::class, 'submitTran'])->middleware('auth')->name('submitTran');


Route::get('profile', [ProfileController::class, 'create'])->middleware('auth')->name('profile');
Route::post('user-profile', [ProfileController::class, 'update'])->middleware('auth');
Route::group(['middleware' => 'auth'], function () {
	Route::get('billing', function () {
		return view('pages.billing');
	})->name('billing');
	Route::get('tables', function () {
		return view('pages.tables');
	})->name('tables');
	Route::get('rtl', function () {
		return view('pages.rtl');
	})->name('rtl');
	Route::get('virtual-reality', function () {
		return view('pages.virtual-reality');
	})->name('virtual-reality');
	Route::get('notifications', function () {
		return view('pages.notifications');
	})->name('notifications');
	Route::get('static-sign-in', function () {
		return view('pages.static-sign-in');
	})->name('static-sign-in');
	Route::get('static-sign-up', function () {
		return view('pages.static-sign-up');
	})->name('static-sign-up');
	Route::get('reservation', function (Request $request) {
		if ($request->filled('pid')) {
			$pid = $request->input('pid');
			$p = Property::where('id', $pid)->first();
			if($p)
			{
				return view('pages.laravel-examples.user-management');
			}
			else{
				return redirect()->route('properties');
			}
			
		} else {
			return redirect()->route('properties');
		}
		return view('pages.laravel-examples.user-management');
		
	})->name('reservation');
	Route::get('user-profile', function () {
		return view('pages.laravel-examples.user-profile');
	})->name('user-profile');

	Route::get('properties', [PropertyController::class, 'index'])->name('properties');
});