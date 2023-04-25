<?php
namespace App\Http\Viewcomposer;

use Illuminate\View\View;


class MediaImageComposer{
    /**
     * compose
     *
     * @param  mixed $view
     * @return void
     */
    public function video(View $view)
    {
        $view->with('test_content', "Chạy thử nghiệm");
    }

    public function compose(View $view)
    {
        $this->video($view);
    }
}
?>