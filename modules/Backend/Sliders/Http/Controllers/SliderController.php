<?php

namespace Modules\Backend\Sliders\Http\Controllers;

use App\Entities\Slider;
use Illuminate\Http\Request;
use App\Repositories\SliderRepository;
use App\Http\Controllers\Controller;
use Modules\Backend\Sliders\Requests\SliderRequest;
/**
 * Class SliderController
 * @package App\Http\Controllers
 */
class SliderController extends Controller
{

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(SliderRepository $sliderRepo)
    {
        $sliders = $sliderRepo->getAllSliders();
        return view('backend.sliders.all_sliders', compact('sliders'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('backend.sliders.add_slider');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(SliderRequest $request, SliderRepository $sliderRepo, Slider $slider)
    {
        $sliderRepo->postAddSlider($request, $slider);
        return redirect()->route('getAllSliders');
    }

    /**
     * @param $sliderId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($sliderId, SliderRepository $sliderRepo)
    {
        $slider = $sliderRepo->getSliderById($sliderId);
        return view('backend.sliders.slider', compact('slider'));
    }
    /**
     * @param $sliderId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($sliderId, SliderRequest $request, SliderRepository $sliderRepo)
    {
        $sliderRepo->updateSliderById($sliderId, $request);
        return redirect()->route('getAllSliders');
    }

    /**
     * @param $sliderId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($sliderId, SliderRepository $sliderRepo)
    {
        $sliderRepo->deleteSliderById($sliderId);
        return redirect()->route('getAllSliders');
    }
}
