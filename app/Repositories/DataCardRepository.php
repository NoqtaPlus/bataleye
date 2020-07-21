<?php
namespace App\Repositories;
use App\Entities\DataCard;
use App\Entities\Cites;
use File;
use Utilities\Files\UploadFiles;

/**
 * Class UserRepository
 * @package App\Repositories
 */
class DataCardRepository extends BaseRepository {
    protected $requestcard;
    use UploadFiles;

    /**
     * UserRepository constructor.
     */
    public function __construct()
    {
        $this->datacard = new DataCard();
        $this->city     = new Cites();

    }
    /**
     * @return array of all Ads
     */
    public function getAllDataCard(){
        return $this->getAllItems($this->datacard);
    }
    public function getTheCities(){
        return $this->getAllItems($this->city);
    }
    public function postAddDataCard($request,$requestcard){
        $pathToStore = public_path('assets/images/dataCard/');
        if ($request->hasFile('IdCardphoto')){
            $img=$request->IdCardphoto;
            $extension=$img->getClientOriginalExtension();
            $file_name=rand(1111,9999).'.'.$extension;
            $img->move($pathToStore,$file_name);
           $requestcard->fill(['IdCardphoto'=>$file_name]);
        }
        if ($request->hasFile('personalPhoto')){
            $img=$request->personalPhoto;
            $extension=$img->getClientOriginalExtension();
            $file_name=rand(1111,9999).'.'.$extension;
            $img->move($pathToStore,$file_name);
           $requestcard->fill(['personalPhoto'=>$file_name]);

        }
        if ($request->hasFile('MembershipPhoto')){
            $img=$request->MembershipPhoto;
            $extension=$img->getClientOriginalExtension();
            $file_name=rand(1111,9999).'.'.$extension;
            $img->move($pathToStore,$file_name);
           $requestcard->fill(['MembershipPhoto'=>$file_name]);

        }
        if ($request->hasFile('photoBirthday')){
            $img=$request->photoBirthday;
            $extension=$img->getClientOriginalExtension();
            $file_name=rand(1111,9999).'.'.$extension;
            $img->move($pathToStore,$file_name);
           $requestcard->fill(['photoBirthday'=>$file_name]);
        }
       if($request->active == '1'){
                $requestcard->active = 1;
         
            } 
            elseif ($request->active == '0')   {

                $requestcard->active = 0; 
                 
            }   
        $requestcard->fill(['fullname'=>$request->fullname]);
        $requestcard->fill(['MemberID'=>$request->MemberID]);
        $requestcard->fill(['email'=>$request->email]);
        $requestcard->fill(['phone'=>$request->phone]);
        $requestcard->fill(['homePhone'=>$request->homePhone]);
        $requestcard->fill(['address'=>$request->address]);
        $requestcard->fill(['city_id'=>$request->city_id]);
        $requestcard->fill(['IdCard'=>$request->IdCard]);
        $requestcard->save();
        return $requestcard;
    }
    public function getADataCardById($requestcardId){
        
       return $this->getItemById($requestcardId,$this->datacard);
    }
     public function getDatayById($requestId){
       return $this->getItemById($requestId,$this->datacard);
    }
    public function saveDataCardImages($request)
    {
        if ($request->hasFile('IdCardphoto')) {
            $destinationPath = public_path('assets/images/dataCard/');
            $image           = $this->uploadImage($request->IdCardphoto, $destinationPath);
            return $image;
        }
        if ($request->hasFile('personalPhoto')) {
            $destinationPath = public_path('assets/images/dataCard/');
            $image           = $this->uploadImage($request->personalPhoto, $destinationPath);
            return $image;
        }
        if ($request->hasFile('MembershipPhoto')) {
            $destinationPath = public_path('assets/images/dataCard/');
            $image           = $this->uploadImage($request->MembershipPhoto, $destinationPath);
            return $image;
        }
        if ($request->hasFile('photoBirthday')) {
            $destinationPath = public_path('assets/images/dataCard/');
            $image           = $this->uploadImage($request->photoBirthday, $destinationPath);
            return $image;
        }
        return null;
    }
    public function deleteDataCardById($dataId)
    {
        return $this->deleteItemById($dataId,$this->datacard);
    }

}