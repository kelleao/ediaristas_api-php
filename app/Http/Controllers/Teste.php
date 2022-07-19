<?php

namespace App\Http\Controllers;

use App\Models\Diaria;
use App\Services\ConsultaDistancia\ConsultaDistanciaInterface;
use Illuminate\Http\Request;
use TeamPickr\DistanceMatrix\DistanceMatrix;
use App\Tasks\Diarista\SelecionaDiaristaIndice;


class Teste extends Controller
{

    public function __invoke(SelecionaDiaristaIndice $selecionaDiarista)
    {
        //$response = $this->consultaDistancia->distanciaEntreDoisCeps('09715340', '02221000');
        $diaria = Diaria::find(16);
        $selecionaDiarista->executar($diaria);
    }


}
