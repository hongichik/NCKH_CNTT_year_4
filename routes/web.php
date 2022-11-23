<?php

use App\Http\Controllers\User\PostController;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\User\CommentController;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\HomeController;
use App\Http\Controllers\User\PageController;
use App\Http\Controllers\User\StarContrllor;

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

Route::get('/', [HomeController::class, 'index'])->name("home");
Route::get('/home', function () {
    return redirect('/');
});
Route::get('/page', function () {
    return redirect('/');
});

Route::get('login', [AuthController::class, 'index'])->name('login');
Route::post('checkauth', [AuthController::class, 'CheckAuth']);
Route::get('logout', [AuthController::class, 'logout']);

Route::post('postComment', [CommentController::class, 'postComment']);


Route::get('post/{slugCategory}', [PostController::class, 'index']);
Route::get('post/{slugCategory}/{slugPost}', [PostController::class, 'post'])->name('post');

Route::post('star', [StarContrllor::class, 'index'])->name('star');

Route::get('/page/{namePage}', [PageController::class, 'index']);
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
