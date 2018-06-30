//----------------------------------------------------------------------------//
//  AUTOR.....: Manuel Expósito Suárez   Soft4U 2002-2011                     //
//  CLASE.....: MVC - Controlador - TConversorEurosPesetasController          //
//  FECHA MOD.: 20/11/2011                                                    //
//  VERSION...: 1.00                                                          //
//  PROPOSITO.: Ejemplo de Modelo Vista Controlador                           //
//----------------------------------------------------------------------------//
/*
 El CONTROLADOR
 Desde aqui se reciben las peticiones del usuario y se trasladan al MODELO
*/

#include "HbClass.ch"

//------------------------------------------------------------------------------
// Controlador

CREATE CLASS TConversorEurosPesetasController FROM TConversorController

	METHOD gestionDeTipoConversion( cTipo )

END CLASS

//------------------------------------------------------------------------------
// Control de conversiones

PROCEDURE gestionDeTipoConversion() CLASS TConversorEurosPesetasController

    local cantidad := ::vista:getCantidad()

    switch ::vista:getTipoConversion()
		
        case '1'
            ::vista:escribeCambio( hb_ntos( cantidad ) + " pesetas son: " + ;
                hb_ntos( ::modelo:dePesetasAEuros( cantidad ) ) + " euros" )

            exit

        case '2'
            ::vista:escribeCambio( hb_ntos( cantidad ) + " euros son: " + ;
                hb_ntos( ::modelo:deEurosAPesetas( cantidad ) ) + " pesetas" )

            exit

        otherwise
            ::vista:msg( "---< Se ha producido un ERROR >---" )
		
    end switch

return

//------------------------------------------------------------------------------
