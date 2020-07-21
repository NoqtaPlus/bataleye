<?php

namespace App\Providers;

use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map()
    {
        $this->mapApiRoutes();

        $this->mapWebRoutes();

        $this->mapBackendRoutes();
        $this->mapFrontendRoutes();
        //
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapWebRoutes()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/web.php'));
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes()
    {
        Route::prefix('api')
            ->middleware('api')
            ->namespace($this->namespace)
            ->group(base_path('routes/api.php'));
    }

    /**
     * Define the "Backend" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapBackendRoutes()
    {
        $dirs = \File::directories(base_path('modules/Backend'));
        foreach ($dirs as $dir) {
            /** NOT WORKING WITH UNIX **/
            //$namespace = explode("modules/Backend\\", $dir);
            
            /** WORKING ON WIN & UNIX **/
            $namespace = preg_split("/modules\/Backend(\/|\\\\)/", $dir);

            Route::middleware(['web', 'access','laguageChooser'])
                ->prefix('admin')
                ->namespace('Modules\Backend\\' . $namespace[1] . '\Http\Controllers')
                ->group($dir . '/routes.php');
        }
    }
    protected function mapFrontendRoutes()
    {
        $dirs = \File::directories(base_path('modules/Frontend'));
        foreach ($dirs as $dir) {
            /** NOT WORKING WITH UNIX **/
            //$namespace = explode("modules/Frontend\\", $dir);
            
            /** WORKING ON WIN & UNIX **/
            $namespace = preg_split("/modules\/Frontend(\/|\\\\)/", $dir);
            Route::middleware(['web', 'access','laguageChooser'])
                ->namespace('Modules\Frontend\\' . $namespace[1] . '\Http\Controllers')
                ->group($dir . '/routes.php');
        }
    }
}
