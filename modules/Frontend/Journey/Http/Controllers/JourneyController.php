<?php

namespace Modules\Frontend\Journey\Http\Controllers;

use App\Entities\Journey;
use Illuminate\Http\Request;
use App\Repositories\JourneyRepository;
use App\Http\Controllers\Controller;
use App\Repositories\SponsorsRepository;
use App\Repositories\TicketRepository;
use App\Entities\Ticket;
use Modules\Frontend\Journey\Requests\TicketRequest;
use App\Repositories\BlogRepository;
use Session;

/** 
 * Class BlogController
 * @package App\Http\Controllers
 */
class JourneyController extends Controller
{
    public $journeyRepo;
  
   
    public function journeyView(BlogRepository $blogRepo ,JourneyRepository $journeyRepo)
    {
        
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();
        $journeies  = $journeyRepo->getAllJourney();
        return view('front.journey.all_journey', compact('blog','journeies', 'breakingNews', 'mostReadable'));    
    }
    public function GetTickeBooking(BlogRepository $blogRepo){
        $breakingNews = $blogRepo->breakingNews();
        $mostReadable = $blogRepo->mostReadableNews();
        return view('front.journey.booking',compact('breakingNews', 'mostReadable'));
    }
    public function PostTickeBooking(TicketRequest $request,Ticket $ticket,TicketRepository $ticketrebo){
       
        $ticketrebo->postAddTicket($request,$ticket);
         Session::flash('ticket','تم اشتراكك بنجاح');
        return redirect()->back();
    }

} 
