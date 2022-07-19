<?php

namespace App\Http\Hateoas;

use Illuminate\Database\Eloquent\Model;

class Usuario extends HateoasBase implements HateoasInterface
{
/**
 * Retorna os links do Hateoas para o usuário
 *
 * @param Model|null $usuario
 * @return array
 */
    public function links(?Model $usuario): array
    {
        $this->adicionaLink('GET', 'lista_diarias', 'diarias.index');
        //$this->adicionaLink('PUT', 'editar_usuario', 'usuarios.update');
        //$this->adicionaLink('POST', 'alterar_foto_usuario', 'usuarios.definir-foto');

        $this->linkDoCliente($usuario);
        $this->linkDoDiarista($usuario);

        return $this->links;
    }

    /**
     * Adiciona os links especificos do usuário do tipo cliente
     *
     * @param Model $usuario
     * @return void
     */
    private function linkDoCliente(Model $usuario): void
    {
        if($usuario->tipo_usuario === 1){

            $this->adicionaLink('POST', 'cadastrar_diaria', 'diarias.store');
        }
    }

    /**
     * Adiciona os links especificos do usúario do tipo diarista
     *
     * @param Model $usuario
     * @return void
     */
    private function linkDoDiarista(Model $usuario): void
    {
        if($usuario->tipo_usuario === 2){
            $this->adicionaLink('PUT', 'cadastrar_endereco', 'usuarios.definir-endereco');
            $this->adicionaLink('PUT', 'relacionar_cidades', 'usuarios.definir-cidades');
            $this->adicionaLink('GET', 'lista_oportunidades', 'oportunidades.index');
        }
    }
}
