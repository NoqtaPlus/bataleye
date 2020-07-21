<?php

namespace App\Repositories;

use App\Entities\Ticket;


class TicketRepository extends BaseRepository
{
    protected $ticketRepository;


    public function __construct()
    {
        $this->ticketRepository = new Ticket();
    }

    public function getAllTicket()
    {
        return $this->getAllItems($this->ticketRepository);
    }
    public function postAddTicket($request, $ticket)
    {
        $data = $request->all();
        $ticket->create($data);
        return $ticket;

    }

    public function deleteticketById($ticketId)
    {
        $ticket = $this->ticketRepository->find($ticketId);
        $this->deleteItemById($ticketId, $this->ticketRepository);
    }
    
}