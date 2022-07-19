<?php

namespace App\Tasks\Diarista;

use App\Models\Diaria;
use App\Services\ConsultaDistancia\ConsultaDistanciaInterface;

class SelecionaDiaristaIndice
{
    public function __construct(
        private ConsultaDistanciaInterface $consultaDistancia
    ){}

    public function executar(Diaria $diaria): int
    {
        //dd($diaria->candidatas);
            foreach($diaria->candidatas as $candidata){
            //var_dump($candidata->candidata->enderecoDiarista->cep);
            try {
            //a distancia entre a cada do candidato e a casa do cliente
            $distancia = $this->consultaDistancia->distanciaEntreDoisCeps(
                //'09715340',
                $candidata->candidata->enderecoDiarista->cep,
                $diaria->cep
            );

                var_dump($distancia);
            }catch (\Throwable $th) {
                continue;
            }

         //a reputação do candidato

            //fazer o calculo do indice do melhor candidato
            return 1;
        }
    }
}










