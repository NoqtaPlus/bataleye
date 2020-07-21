<?php

namespace Modules\Backend\Ticket\Http\Controllers;

use App\Entities\Ticket;
use App\Repositories\TicketRepository;
use App\Http\Controllers\Controller;

/**
 * Class SliderController
 * @package App\Http\Controllers
 */
class TicketController extends Controller
{

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(TicketRepository $ticketRepo)
    {
        $ticket = $ticketRepo->getAllTicket();
       
        return view('backend.ticket.all_ticket', compact('ticket'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
  
    
    public function delete($ticketId, TicketRepository $ticketRepo)
    {
        $ticketRepo->deleteticketById($ticketId);
        return redirect()->route('getAllTicket');
    }
}
