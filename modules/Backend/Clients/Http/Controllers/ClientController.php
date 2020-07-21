<?php

namespace Modules\Backend\Clients\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\ClientRepository;
use App\Entities\Client;
use App\Http\Controllers\Controller;
use Modules\Backend\Clients\Requests\ClientRequest;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ClientRepository $clientRepo)
    {
        $clients = $clientRepo->getAllClients();
        return view('backend.clients.all_clients', compact('clients'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.clients.add_client');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ClientRequest $request, ClientRepository $clientRepo, Client $client)
    {
        $clientRepo->postAddClient($request, $client);
        return redirect()->route('getAllClients');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($clientId, ClientRepository $clientRepo)
    {
        $client = $clientRepo->getClientById($clientId);
        return view('backend.clients.client', compact('client'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ClientRequest $request, $clientId, ClientRepository $clientRepo)
    {
        $clientRepo->updateClientById($clientId, $request);
        return redirect()->route('getAllClients');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($clientId, ClientRepository $clientRepo)
    {
        $clientRepo->deleteClientById($clientId);
        return redirect()->route('getAllClients');
    }
}
