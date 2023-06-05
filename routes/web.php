<?php

use App\Http\Controllers\User\AdmissionsController;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\ReportController;
use App\Http\Controllers\User\DocController;
use App\Http\Controllers\User\StarContrllor;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\User\BlogController;
use App\Http\Controllers\User\HomeController;
use App\Http\Controllers\User\PageController;
use App\Http\Controllers\User\PostController;
use App\Http\Controllers\User\CommentController;
use App\Http\Controllers\User\ContactController;
use App\Http\Controllers\User\studentController;
use App\Http\Controllers\User\StudentNewpaperController;

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
$url = "App\\Http\\Controllers\\User\\";

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

Route::get('contact', [ContactController::class, 'index'])->name('contact');
Route::post('contact/create', [ContactController::class, 'create'])->name('contact.create');

Route::get('doc', [DocController::class, 'index']);
Route::get('doc/show/{filename}', [DocController::class, 'file'])->name('doc.file');

Route::get('report', [ReportController::class, 'index']);
Route::post('report', [ReportController::class, 'create'])->name('report.create');

Route::post('postComment', [CommentController::class, 'postComment']);

Route::get('post/search', [PostController::class, 'search'])->name('posts.search');
Route::get('post/{slugCategory}', [PostController::class, 'index'])->name('post.category');
Route::get('post/{slugCategory}/{slugPost}', [PostController::class, 'post'])->name('post');

Route::get('blog', [BlogController::class, 'index']);
Route::get('blog/search', [BlogController::class, 'search']);
Route::get('blog/{blogSlug}', [BlogController::class, 'blog']);

Route::post('/admissions',[AdmissionsController::class,'create'])->name('admissions');
Route::get('/admissions',[AdmissionsController::class,'index'])->name('admissions');

Route::post('star', [StarContrllor::class, 'index'])->name('star');

Route::get('student', [studentController::class, 'index'])->name('star');

Route::get('/page/{namePage}', [PageController::class, 'index']);

Route::get('student-newspaper', [StudentNewpaperController::class,'index']);
Route::post('student-newspaper', [StudentNewpaperController::class,'create'])->name('postNewspaper');
Route::get('student-newspaper/{filename}', [StudentNewpaperController::class,'file'])->name('getFileNewspaper')->where('filename', '.*');

Route::group(['prefix' => 'admin'], function () {
    Route::get('/admissions/export', [AdmissionsController::class, 'export']);
    Voyager::routes();
});
?>
