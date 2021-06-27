<?php

namespace App\Http\Controllers;
use App\Barang;
use App\Pesanan;
use App\User;
use App\PesananDetail;
use Auth;
use Alert;
use PDF;
use Illuminate\Http\Request;

class HistoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
    	$pesanans = Pesanan::where('user_id', Auth::user()->id)->where('status', '!=',0)->get();

    	return view('history.index', compact('pesanans'));
    }

    public function cetak_pdf($pesanan_id){
        $pesanan = Pesanan::find($pesanan_id);
        $pdf= PDF::loadview('history.cetak', ['Pesanan' => $pesanan]);
        return $pdf->stream();
    }

    public function detail($id)
    {
    	$pesanan = Pesanan::where('id', $id)->first();
    	$pesanan_details = PesananDetail::where('pesanan_id', $pesanan->id)->get();

     	return view('history.detail', compact('pesanan','pesanan_details'));
    }

    // public function cetak_pdf($id){
    //     $pesanan = Pesanan::find($id);
    //     $pdf = PDF::loadview('history.detail',['pesanan'=>$pesanan]);
    //     return $pdf->stream();
    // }
}
