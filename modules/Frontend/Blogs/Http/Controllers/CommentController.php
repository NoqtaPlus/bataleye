<?php

namespace Modules\Frontend\Blogs\Http\Controllers;

use App\Entities\Blog;
use App\Entities\Comment;
use App\Entities\BlogCategory;
use Illuminate\Http\Request;
use App\Repositories\BlogRepository;
use App\Repositories\BlogCategoryRepository;
use App\Http\Controllers\Controller;
use Modules\Frontend\Blogs\Requests\CommentRequest;

class CommentController extends Controller
{
    public function getPostComments($post_id) {
        return Comment::where("post_id", $post_id)->paginate(5);
    }

    public function postComment(CommentRequest $request, $post_id, Comment $commentModel) {
        $data = $request->all();
        $data["post_id"] = $post_id;
        $comment = $commentModel->create($data);
        return response()->json([
            "success" => true,
            "comment" => $comment
        ]);
    }

    public function postAddComment(Request $request)
    {
        $comment=new Comment();
        $comment->name=$request->name;
        $comment->email=$request->email;
        $comment->comment=$request->comment;
        $comment->post_id=$request->post_id;
        $comment->active=0;
        $comment->save();
        return redirect()->back()->with(['message'=>\App\Http\Controllers\HomeController::translateWord('commenting_message')]);
    }

    


}
