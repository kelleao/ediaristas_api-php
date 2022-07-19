<?php

namespace App\Http\Controllers\Diaria;

use App\Actions\Diaria\ConfirmarPresenca;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ConfirmaPresenca extends Controller
{
    public function __construct(
    private ConfirmarPresenca $confirmarPresenca
){}
    public function __invoke(Request $request)
    {
        $this->confirmarPresenca->executar();
    }
}
