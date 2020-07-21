<?php

namespace Modules\Backend\Users\Http\Controllers;

use App\Entities\User;
use App\Entities\UserRoles;
use Illuminate\Http\Request;
use App\Repositories\UserRepository;
use App\Http\Controllers\Controller;
use Modules\Backend\Users\Requests\UserRequest;
/**
 * Class UserController
 * @package Modules\Backend\Users\Http\Controllers
 */
class UserController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(UserRepository $userRepo)
    {
        $users = $userRepo->getAllUsers();
        return view('backend.users.all_users', compact('users'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create(UserRepository $userRepo)
    {
        $users = $userRepo->getAllUsers();
        $roles = UserRoles::all();
        return view('backend.users.add_user', compact('users','roles'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(UserRequest $request, UserRepository $userRepo, User $user)
    {
         $userRepo->postAddUser($request, $user);

        return redirect()->route('getAllUsers');
    }

    /**
     * @param $userId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($userId, UserRepository $userRepo)
    {
        
        $roles = UserRoles::all();
        $user       = $userRepo->getUserById($userId);
        return view('backend.users.user', compact('user','roles'));
    }

    /**
     * @param $userId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($userId, UserRequest $request, UserRepository $userRepo)
    {
        $userRepo->updateUser($userId,$request);
        return redirect()->route('getAllUsers');
    }

    /**
     * @param $userId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($userId, UserRepository $userRepo)
    {
        $userRepo->deleteUserById($userId);
        return redirect()->route('getAllUsers');
    }
}
