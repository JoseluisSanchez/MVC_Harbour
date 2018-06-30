//----------------------------------------------------------------------------//
//  AUTOR.....: Manuel Expósito Suárez   Soft4U 2002-2011                     //
//  CLASE.....: MVC - Vista - TConversorVista                                 //
//  FECHA MOD.: 20/11/2011                                                    //
//  VERSION...: 1.00                                                          //
//  PROPOSITO.: Ejemplo de Modelo Vista Controlador                           //
//----------------------------------------------------------------------------//

#include "HbClass.ch"

//------------------------------------------------------------------------------
// Clase para Abstracta para la creacion de vistas.
// En las clases derivadas hay que implementar al menos estos metodos VIRTUALES
//------------------------------------------------------------------------------

CREATE CLASS TConversorVista

    PROTECTED:
    DATA tipoConversion // "Pesetas a Euros" -> 1  "Euros a Pesetas" -> 2

    EXPORTED:
    METHOD new() CONSTRUCTOR
    // Se implementan en cada vista
    METHOD msg( cTxt, cTitulo ) VIRTUAL
    METHOD muestraMenu()        VIRTUAL
    METHOD getCantidad()		VIRTUAL
    METHOD escribeCambio( s )	VIRTUAL
	METHOD acercaDe()			VIRTUAL
	METHOD muestraFin()			VIRTUAL

    // SET GET
    METHOD setTipoConversion( cTipo )
    METHOD getTipoConversion()

END CLASS

//------------------------------------------------------------------------------
// Costructor

METHOD new() CLASS TConversorVista
return self

//------------------------------------------------------------------------------
// Asigna el tipo Conversion

METHOD setTipoConversion( cTipo ) CLASS TConversorVista

    local ret := ::tipoConversion

    if ValType( cTipo ) == 'C' .and. ( cTipo == '1' .or. cTipo == '2' )
        ::tipoConversion := cTipo
    end if

return ret

//------------------------------------------------------------------------------
// Obtiene el tipo Conversion

METHOD getTipoConversion() CLASS TConversorVista
return ::tipoConversion

//------------------------------------------------------------------------------
