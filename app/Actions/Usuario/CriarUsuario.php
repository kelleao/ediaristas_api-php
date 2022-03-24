<?php

namespace App\Actions\Usuario;

use App\Models\User;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Hash;

class CriarUsuario{

/**
 * Cadastra um usuário no banco de dados
 *
 * @param array $dados
 * @param UploadedFile $fotodocumento
 * @return User
 */
    public function executar(array $dados, UploadedFile $fotodocumento): User
    {
        $dados['foto_documento'] = $fotodocumento->store('local');
        $dados['password'] = Hash::make($dados['password']);

        return User::create($dados);
    }

}
