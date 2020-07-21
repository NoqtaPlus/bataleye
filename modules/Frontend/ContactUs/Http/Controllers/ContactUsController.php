<?php
namespace Modules\Frontend\ContactUs\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Repositories\BlogRepository;
use App\Repositories\ContactsRepository;
use App\Repositories\SubscriptionRepository;
use App\Entities\Contact;
use App\Entities\Setting;
use App\Entities\Meta;
use App\Entities\Link;
use App\Entities\Subscription;
use Modules\Frontend\ContactUs\Requests\SubscriptionRequest;
use Modules\Frontend\ContactUs\Requests\ContactRequest;


class ContactUsController extends Controller
{
    public $blogRepo;
    public $contactRepo;
    public $subscriptionRebo;
    public function __construct()
    {
        $this->blogRepo         = new BlogRepository();
        $this->contactRepo      = new ContactsRepository();
        $this->subscriptionRebo = new SubscriptionRepository();
    }
    public function index(){
        $setting      = Setting::first();
        $breakingNews = $this->blogRepo->breakingNews();
        $mostReadable = $this->blogRepo->mostReadableNews();
        return view('front.contacts.all_contacts',compact('breakingNews', 'mostReadable','setting'));
    }
    public function thanks(){
        
        $link=Link::where('route','getFrontContactus')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
        return view('front.pages.thanks',compact('meta'));

    }
    public function store(ContactRequest $request,Contact $contact ){
        
        $this->contactRepo->AddContactUs($request,$contact);
       
        $to = "hanaaamer61@gmail.com"; 
        $from =$request->email;
        $name = $request->name;
        $phone=$request->phone;
        if(isset($request->doctor_name)){
        $doctor_time=$request->doctor_time;
        $doctor_name=$request->doctor_name;
        $subject = "Form submission for TickeBooking";
        $message ='Name: ' . $name . "\n\n" .'Phone: ' . $phone . "\n\n".'Doctor Name: ' .$doctor_name . "\n\n" .'Doctor Time: ' .$doctor_time . "\n\n" .'Message: '. $request->message ;
    }
    else{
        $subject = "Form submission for  Contact Us ";
        $message = 'Name: ' .$name . "\n\n" .'Phone: ' . $phone . "\n\n" .'Message: ' . $request->message ;
    }
        $headers =
        "Content-Type: text/plain; charset=UTF-8\r\n" 
        . 'From: ' .$from . "\r\n"
        . 'X-Mailer: PHP/' . phpversion();
       
        mail($to,$subject,$message,$headers);
         $link=Link::where('route','getFrontContactus')->get()->first();
        $meta=Meta::where('link_id',$link->link_id)->get()->first();
         $meta->title="شكرا لك";
        $meta->description="لقد تم ارسال طلبك بنجاح يمكنك متابعه طلبك على بريدك الالكتروني";
        $meta->keywords='';
        return redirect(route('postthanksContactus'));
      //  return redirect()->back()->with(['message'=>\App\Http\Controllers\HomeController::translateWord('booking_message')]);

    }
    public function getSubscription(){
         $setting      = Setting::first();
        $breakingNews = $this->blogRepo->breakingNews();
        $mostReadable = $this->blogRepo->mostReadableNews();
        return view('front.tersana.subscript',compact('breakingNews', 'mostReadable','setting'));
    }
    public function postSubscription(SubscriptionRequest $request,Subscription $subscription ){
        
        $this->subscriptionRebo->AddSubscription($request,$subscription);
        return redirect()->back()->with('subscription','تم اشتراكك بنجاح');
    }
}
