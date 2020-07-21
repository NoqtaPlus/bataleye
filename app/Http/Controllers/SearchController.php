<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\BlogRepository;
use App\Entities\Blog;
use App\Entities\BlogCategory;
use App\Entities\Image;
use App\Entities\Video;

class SearchController extends Controller
{
    public function search(BlogRepository $blogRepo, Request $request) {
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();

        $q = isset($request->q) ? $request->q : "";
        $items = new Blog();

        if (isset($request->category)) {
            $items = $items->where("category_id", $request->category);
            $category = BlogCategory::find($request->category);
        }

        if (isset($request->media)) {
            if ($request->media == "images") {
                $items = Image::where("album_title", "LIKE", "%". $q ."%")->paginate(10);
                $media = "images";
            } elseif ($request->media == "videos") {
                $items = Video::where("title", "LIKE", "%". $q ."%")->orWhere("description", "LIKE", "%". $q ."%")->paginate(10);
                $media = "videos";
            }
        } else {
            $items = $items->where(function ($query) use ($q) {
                $query->where("title", "LIKE", "%". $q ."%")
                      ->orWhere("short_description", "LIKE", "%". $q ."%")
                      ->orWhere("long_description", "LIKE", "%". $q ."%");
            })->paginate(10);
        }


        $title = trans("frontend.results") . '"' . $q . '"';
        return view('front.tersana.search',compact('items', 'breakingNews', 'title', 'q', 'mostReadable', 'category', 'media'));
    }
}
