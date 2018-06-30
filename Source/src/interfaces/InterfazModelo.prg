//----------------------------------------------------------------------------//
//  AUTOR.....: Manuel Expósito Suárez   Soft4U 2002-2011                     //
//  CLASE.....: MVC - Modelo - TConversorModel                                //
//  FECHA MOD.: 20/11/2011                                                    //
//  VERSION...: 1.00                                                          //
//  PROPOSITO.: Ejemplo de Modelo Vista Controlador                           //
//----------------------------------------------------------------------------//

#include "HbClass.ch"

//------------------------------------------------------------------------------
// Clase para convertis cualquier moneda a Euros

CREATE CLASS TConversorModel

    PROTECTED:
    DATA cambio
	DATA resultado

    EXPORTED:
    METHOD new( valorCambio ) CONSTRUCTOR
	METHOD getResultado()
    // SET GET
    METHOD setCambio( cambio )
    METHOD getCambio()
	
	PROTECTED:
    METHOD convMul( cantidad )
    METHOD convDiv( cantidad )

END CLASS

//------------------------------------------------------------------------------
// Constructor

METHOD new( valorCambio ) CLASS TConversorModel

    if ValType( valorCambio ) == "N"
        ::cambio := valorCambio
    end if

return Self

//------------------------------------------------------------------------------
// Pasa euros a la moneda

PROCEDURE convMul( cantidad ) CLASS TConversorModel

	::resultado := if( ValType( cantidad ) == "N", cantidad * ::cambio, 0 )
	
return

//------------------------------------------------------------------------------
// Pasa las monedas a euros

PROCEDURE convDiv( cantidad ) CLASS TConversorModel

	::resultado := if( ValType( cantidad ) == "N", cantidad / ::cambio, 0 )
	
return

//------------------------------------------------------------------------------
// Asigna el cambio

METHOD setCambio( cambio ) CLASS TConversorModel

    local ret := ::cambio

    if ValType( cambio ) == "N"
        ::cambio := cambio
    end if

return ret

//------------------------------------------------------------------------------
// Obtiene el cambio

METHOD getCambio() CLASS TConversorModel
return ::cambio

//------------------------------------------------------------------------------

METHOD getResultado() CLASS TConversorModel
return ::resultado

//------------------------------------------------------------------------------
