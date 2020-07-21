<?php

namespace Modules\Frontend\Clients\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\ClientRepository;
use App\Entities\Client;
use App\Http\Controllers\Controller;

class ClientController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexFront(ClientRepository $clientRepo)
    {
        $clients = $clientRepo->getAllClients();
        return view('front.clients.all_clients', compact('clients'));
    }

}
