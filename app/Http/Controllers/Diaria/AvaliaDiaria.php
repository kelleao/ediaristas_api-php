<?php

namespace App\Http\Controllers\Diaria;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AvaliaDiaria extends Controller
{
    public function __construct(
        private AvaliaDiaria $avaliaDiaria
    )
    {}

    public function __invoke(Request $request)
    {
        $this->avaliaDiaria->executar();
    }
}
