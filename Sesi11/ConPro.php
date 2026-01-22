<?php

namespace App\Http\Controllers;

use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
        // Ambil semua produk
        $products = Product::all();

        return view('product.index', compact('products'));
    }

    public function show($id)
    {
        // Ambil satu produk
        $product = Product::findOrFail($id);

        return view('product.show', compact('product'));
    }
}
