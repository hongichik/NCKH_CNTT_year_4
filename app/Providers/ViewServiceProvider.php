<?php

namespace App\Providers;

use Doctrine\DBAL\Schema\View;
use Illuminate\Support\ServiceProvider;
use App\Http\Viewcomposer\MediaImageComposer;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('*', MediaImageComposer::class);
    }
}
