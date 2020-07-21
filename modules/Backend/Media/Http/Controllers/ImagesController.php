<?php

namespace Modules\Backend\Media\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Modules\Backend\Media\Models\Image as ImageModel;
use Modules\Backend\Media\Requests\ImageRequest;
use File;

/**
 * Class ImagesController
 * @package Modules\Backend\Media\Http\Controllers
 */
class ImagesController extends Controller
{
    public function index()
    {
        $images = ImageModel::all();
        
        return view('backend.media.images.index', compact('images'));
    }
    
    public function create()
    {
        return view('backend.media.images.create', compact('images'));
    }

    public function store(ImageRequest $request, ImageModel $imageModel)
    {
        $data["album_title"] = $request->album_title;
        $images = array();
        foreach ($request->images as $index => $image) {
            $images[] = $imageModel->imageUpload("images.".$index, $request);
        }
        $data["images"] = implode(";", $images);
        $imageModel->create($data);
        return redirect()->route('imagesIndex');
    }

    public function view($id, $index, ImageModel $imageModel)
    {
        $image  = $imageModel->find($id);
        $images = explode(";", $image->images);
      
        $imagePath = base_path('uploads/images/'.$images[$index]);
        ob_end_clean();
        return response()->file($imagePath);
    }

    public function edit($id, ImageModel $imageModel)
    {
        $image = $imageModel->find($id);
        $images = explode(";", $image->images);
        return view('backend.media.images.edit', compact('image', 'images'));
    }

    public function update($id, Request $request, ImageModel $imageModel)
    {
        $image = $imageModel->find($id);
        $image->album_title = $request->album_title;
        $image->image_title = $request->image_title;

        $prevImages = $image->images;

        $images = array();
        if ($request->images) {
            foreach ($request->images as $index => $i) {
                $images[] = $imageModel->imageUpload("images.".$index, $request);
            }
        }
        
        if ($images != null)
        {
            $image->images = implode(";", $images);
            $image->images = $image->images.';'.$prevImages;
        }
        $image->save();
        return redirect()->route('imagesIndex');
    }

    public function delete($id, ImageModel $imageModel)
    {
        $image = $imageModel->find($id);
        $images = explode(";", $image->images);
        foreach ($images as $i) {
            File::delete(base_path("uploads/images/$i"));
        }
        $image->delete();
        return redirect()->route('imagesIndex');
    }
    
    public function deleteSingle($id, $name, ImageModel $imageModel){
        $image = $imageModel->find($id);
        $images = explode(";", $image->images);
        foreach ($images as $i) {
            if ($i == $name){
                File::delete(base_path("uploads/images/$i"));
            }
        }
        if (($key = array_search($name, $images)) !== false) {
            unset($images[$key]);
        }
        $image->images = implode(";", $images);
        $image->save();
        return redirect()->route('getImage', ['id' => $id]);
    }
}
