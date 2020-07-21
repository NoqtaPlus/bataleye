<?php

namespace Modules\Backend\Pages\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\PageRepository;
use App\Entities\Page;
use App\Http\Controllers\Controller;
use Modules\Backend\Pages\Requests\PageRequest;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(PageRepository $pageRepo)
    {
        $pages = $pageRepo->getAllPages();
        return view('backend.pages.all_pages', compact('pages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.pages.add_page');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PageRequest $request, PageRepository $pageRepo, Page $page)
    {
        $pageRepo->postAddPage($request,$page);
        return redirect()->route('getAllPages');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($pageId, PageRepository $pageRepo)
    {
        $page = $pageRepo->getPageById($pageId);
        return view('backend.pages.page', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PageRequest $request, $pageId, PageRepository $pageRepo)
    {
        $pageRepo->updatePageById($pageId,$request);
        return redirect()->route('getAllPages');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($pageId, PageRepository $pageRepo)
    {
        $pageRepo->deletePageById($pageId);
        return redirect()->route('getAllPages');
    }
}
