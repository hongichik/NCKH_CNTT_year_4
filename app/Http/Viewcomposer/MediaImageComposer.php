<?php
namespace App\Http\Viewcomposer;

use App\Models\StudentImage;
use Illuminate\View\View;


class MediaImageComposer{
    /**
     * compose
     *
     * @param  mixed $view
     * @return void
     */
    public function images(View $view)
    {
        $images = StudentImage::where('status','1')->get();
        $view->with('student_images', $images);
    }

    public function compose(View $view)
    {
        $this->images($view);
    }
}
?>
