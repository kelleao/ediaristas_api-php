<?php

namespace App\Http\Controllers\Servico;

use App\Models\Servico;
use App\Http\Controllers\Controller;
use App\Http\Resources\ServicoCollection;

class ObtemServicos extends Controller
{
    /**
     * Retorno a lista de servicos
     *
     * @return ServicoCollection
     */
    public function __invoke(): ServicoCollection
    {
        return new ServicoCollection(

            Servico::get()
        ); 
        
    }
}
