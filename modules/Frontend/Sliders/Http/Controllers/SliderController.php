<?php

namespace Modules\Frontend\Sliders\Http\Controllers;

use App\Entities\Slider;
use Illuminate\Http\Request;
use App\Repositories\SliderRepository;
use App\Http\Controllers\Controller;
/**
 * Class SliderController
 * @package App\Http\Controllers
 */
class SliderController extends Controller
{

    /**
     * Display the specified resource.
     *
     * @param  int  $sliderId
     * @return \Illuminate\Http\Response
     */
    public function show($sliderId, SliderRepository $sliderRepo)
    {
        $sliders = $sliderRepo->getAllSliders();
        $slider  = $sliderRepo->getSlidetDetailsBySliderId($sliderId);
        return view('front.sliders.slider_details', compact('slider','sliders'));
    }
}
