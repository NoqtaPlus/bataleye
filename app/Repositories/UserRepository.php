<?php

namespace App\Repositories;

use App\Repositories\BaseRepository;
use App\Entities\User;
use App\Entities\UserRoles;
use Illuminate\Support\Facades\Auth;
use DB;

/**
 * Class UserRepository
 * @package App\Repositories
 */
class UserRepository extends BaseRepository
{
    protected $user;
    /**
     * UserRepository constructor.
     */
    public function __construct()
	{
        $this->user=new User();
        $this->role=new UserRoles();
    }
    /**
     * @return array of all users
     */
    public function getAllUsers()
    {
        return $this->getAllItems($this->user);
    }

    public function postAddUser($data,$user)
    {
        $user->fill(['name'=>$data->name]);
        $user->fill(['role_id'=>$data->role_id]);
        $role=UserRoles::find($data->role_id);
        $user->fill(['email'=>$data->email]);
        // if($data->items_access == NULL)
        // {
        //     $user->fill(['items_access'=>$role->items_access]);
            
        // }
        // else{
        //     $user->fill(['items_access'=>$role->items_access]);

        // }
        
        $user->fill(['created_by'=>Auth::user()->id]);
        $user->fill(['password'=>bcrypt($data->password)]);
        $user->save(); 
        return $user; 
        // $id = DB::table('users')->insertGetId(
        //     [
        //         'name'=>$data->name, 
        //         'role_id'=>$data->role_id,
        //         'email'=>$data->email,
        //         'created_by'=>Auth::user()->id,
        //         'password'=>bcrypt($data->password)

        // ]);
        // foreach($data->items as $item){
        //     DB::table('sidebar_items')
        //     ->where('item_id', $item)
        //     ->update(['roles_access' => $id.',']);
        // }
        
        //return $user; 
    }
    public function getUserById($userId)
    {
        return $this->getItemById($userId,$this->user);
    }

    public function updateUser($userId,$data)
    {
        $user=User::find($userId);
        $user->fill(['name'=>$data->name]);
        $user->fill(['email'=>$data->email]);
        //$user->fill(['items_access'=>serialize($data->items_access)]);
        $user->fill(['role_id'=>$data->role_id]);
        $user->save();
        return $user;
    }

    public function deleteUserById($userId)
    {
        $this->deleteItemById($userId,$this->user);
    }

    //Roles

    public function getAllRoles()
    {
        return $this->getAllItems($this->role);
    }

    public function postAddRole($data,$role)
    {
        $role->fill(['role_name'=>$data->role_name]);
        if($data->items_access == NULL)
        {
            $role->fill(['items_access'=>serialize(['getAddSlider'])]);
            
        }
        else{
            $role->fill(['items_access'=>serialize($data->items_access)]);

        }
        
        $role->save(); 
        return $role; 
       
    }
    public function getroleById($roleId)
    {
        return $this->getItemById($roleId,$this->role);
    }

    public function updateRole($roleId,$data)
    {
        $role=UserRoles::find($roleId);
        $role->fill(['role_name'=>$data->role_name]);
        $role->fill(['items_access'=>serialize($data->items_access)]);
        $role->save();
        return $role;
    }

    public function deleteRoleById($roleId)
    {
        $this->deleteItemById($roleId,$this->role);
    }
   
}