<?php

namespace App\Http\Hateoas;

class HateoasBase{
    
     /**
     *Links do hateoas
     */
    protected array $links = [];

     /**
     * Adiciona um link no heteoas
     *
     * @param string $metodo
     * @param string $descricao
     * @param string $nomeRota
     * @param array $parametroRota
     * @return void
     */
    protected function adicionaLink(
        string $metodo, 
        string $descricao, 
        string $nomeRota, 
        array $parametroRota = []
    ){
        $this->links[] = [
            "type" => $metodo,
            "rel" => $descricao,
            "uri" => route($nomeRota, $parametroRota)
        ];
    }
}