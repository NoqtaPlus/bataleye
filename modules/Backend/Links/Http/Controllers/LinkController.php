<?php

namespace Modules\Backend\Links\Http\Controllers;

use App\Entities\Link;
use Illuminate\Http\Request;
use App\Repositories\LinkRepository;
use App\Http\Controllers\Controller;
use Modules\Backend\Links\Requests\LinkRequest;
/**
 * Class LinkController
 * @package App\Http\Controllers
 */
class LinkController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(LinkRepository $linkRepo)
    {
        $links = $linkRepo->getAllLinks();
        return view('backend.links.all_links',compact('links'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create(LinkRepository $linkRepo)
    {
        $sections = $linkRepo->getAllLinkSections();
        return view('backend.links.add_link', compact('sections'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(LinkRequest $request, LinkRepository $linkRepo, Link $link)
    {
        $linkRepo->postAddLink($request->all(), $link);
        return redirect()->route('getAllLinks');
    }

    /**
     * @param $linkId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($linkId, LinkRepository $linkRepo)
    {
        $sections = $linkRepo->getAllLinkSections();
        $link = $linkRepo->getLinkById($linkId);
        return view('backend.links.link',compact('link','sections'));
    }
    /**
     * @param $linkId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($linkId, LinkRequest $request, LinkRepository $linkRepo)
    {
        $linkRepo->updateLinkById($linkId,$request->all());
        return redirect()->route('getAllLinks');
    }

    /**
     * @param $linkId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($linkId, LinkRepository $linkRepo)
    {
        $linkRepo->deleteLinkById($linkId);
        return redirect()->route('getAllLinks');
    }

}