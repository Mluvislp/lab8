<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\products;
use App\Http\Resources\Product as ProductResource;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = products::all();
        $arr = [
            'success'=>true,
            'message'=>'Danh sách sản phẩm',
            'data'=>ProductResource::collection($products)
        ];
        return response()->json($arr,200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input,[
            'tenSP'=>'required',
            'gia'=>'required'
        ]);
        if($validator->fails()){
            $arr = [
                'success'=>false,
                'message'=>'Lỗi dữ liệu',
                'data'=>$validator->errors()
            ];
            return response()->json($arr,200);
        }
        $product = products::create($input);
        $arr = [
            'success'=>true,
            'message'=>'Thành công',
            'data'=>new ProductResource($product)
        ];
        return response()->json($arr,201);
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
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();
        $validator = Validator::make($input,[
            'tenSP'=>'required',
            'gia'=>'required'
        ]);
        if($validator->fails()){
            $arr = [
                'success'=>false,
                'message'=>'Lỗi dữ liệu',
                'data'=>$validator->errors()
            ];
            return response()->json($arr,200);
        }
        $product->tenSP = $input['tenSP'];
        $arr = [
            'success'=>true,
            'message'=>'Thành công',
            'data'=>new ProductResource($product)
        ];
        return response()->json($arr,201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
