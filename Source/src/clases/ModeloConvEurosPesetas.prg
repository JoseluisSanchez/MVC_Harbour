//----------------------------------------------------------------------------//
//  AUTOR.....: Manuel Expósito Suárez   Soft4U 2002-2011                     //
//  CLASE.....: MVC - Modelo - TConversorModelEurosPesetas                    //
//  FECHA MOD.: 20/11/2011                                                    //
//  VERSION...: 1.00                                                          //
//  PROPOSITO.: Ejemplo de Modelo Vista Controlador                           //
//----------------------------------------------------------------------------//

#include "HbClass.ch"

//------------------------------------------------------------------------------
// Clase para convertir pesetas a Euros

CREATE CLASS TConversorModelEurosPesetas FROM TConversorModel

    METHOD new() CONSTRUCTOR
	METHOD deEurosAPesetas()
	METHOD dePesetasAEuros()

END CLASS

//-------------------------------------------------------------------------------
// Constructor

METHOD new() CLASS TConversorModelEurosPesetas

    ::setCambio( 166.386 )

return Self

//------------------------------------------------------------------------------
// Convierte un importe a ptas

METHOD deEurosAPesetas( cantidad ) CLASS TConversorModelEurosPesetas

	::convMul( cantidad )
	
return ::getResultado()

//------------------------------------------------------------------------------
// Convierte un importe a euros

METHOD dePesetasAEuros( cantidad ) CLASS TConversorModelEurosPesetas

	::convDiv( cantidad )
	
return ::getResultado()

//------------------------------------------------------------------------------
