<?php

namespace App\Actions\Diaria;

use App\Checkers\Diaria\ValidaStatusDiaria;
use App\Models\Diaria;
use Illuminate\Support\Facades\Gate;
use Illuminate\Validation\ValidationException;

class PagarDiaria
{
    public function __construct(
        private ValidaStatusDiaria $validaStatusDiaria
    ){}

    /**
     * Executa o pagamento da diária
     *
     * @param Diaria $diaria
     * @param string $cardHash
     * @return boolean
     */
    public function executar(Diaria $diaria, string $cardHash): bool
    {
        $this->validaStatusDiaria->executar($diaria, 1);
        Gate::authorize('tipo-cliente');
        Gate::authorize('dono-diaria', $diaria);

        //integração com gateway de pagamento
        return $diaria->pagar();
    }

    // /**
    //  * Valida se o status da diária é igual a 1
    //  *
    //  * @param Diaria $diaria
    //  * @return void
    //  */
    // private function validaStatusDiaria(Diaria $diaria): void
    // {
    //     if($diaria->status != 1){
    //         throw ValidationException::withMessages([
    //             'status-diaria' => 'Só é possível executar essa ação com diárias com status 1'
    //         ]);
    //     }
    // }
}
