<?php

namespace App\Http\Controllers\Usuario;

use Illuminate\Http\Request;
use App\Http\Resources\Usuario;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Actions\Usuario\CriarUsuario;
use App\Http\Requests\UsuarioCadastroRequest;

class CadastroController extends Controller
{
    public function __construct(
        private CriarUsuario $criarusuario
    ){}

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UsuarioCadastroRequest $request)
    {
       $usuario = $this->criarusuario->executar(
            $request->except('password_confirmation'),
            $request->foto_documento
        );

        $token = Auth::attempt([
            'email' => $usuario->email,
            'password' => $request->password
        ]);

        return new Usuario($usuario, $token);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

}
