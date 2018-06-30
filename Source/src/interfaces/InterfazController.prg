/*
 * Proyecto: prg_mvc
 * Fichero: InterfazController.prg
 * Descripción:
 * Autor:
 * Fecha: 26/05/2018
 */

//------------------------------------------------------------------------------

#include "HbClass.ch"

//------------------------------------------------------------------------------
// Control 1/1

CREATE CLASS TConversorController

    PROTECTED:
    DATA vista
    DATA modelo

    EXPORTED:
    METHOD new( vista, modelo ) CONSTRUCTOR
    METHOD gestionDeTipoConversion( cTipo ) VIRTUAL
    METHOD despachaAcciones()
    METHOD fin()
    // SET GET
    METHOD getVista()
    METHOD setVista( vista )
    METHOD getModelo()
    METHOD setModelo( modelo )

END CLASS

//------------------------------------------------------------------------------
// Constructor

METHOD new( vista, modelo ) CLASS TConversorController

    ::vista := vista
    ::modelo := modelo

return self

//------------------------------------------------------------------------------
// Gestiona las peticiones

PROCEDURE despachaAcciones() CLASS TConversorController

	local cTipo

    while .t.

        switch cTipo := ::vista:leeOpcion()
		
            case '0'
                ::vista:muestraFin()
                ::fin()
                exit
		
            case '1'
            case '2'
                ::vista:setTipoConversion( cTipo )
                ::gestionDeTipoConversion()
                exit
	
            case '3'
                ::vista:acercaDe()
                exit
			
            otherwise
                ::vista:operacionIncorrecta()
		
        end switch
    end

return

//------------------------------------------------------------------------------
// Se ejecuta al final

PROCEDURE fin() CLASS TConversorController

    // Se haria todo lo del final
    break

return

//------------------------------------------------------------------------------
// Obtiene la vista

METHOD getVista() CLASS TConversorController
return ::vista

//------------------------------------------------------------------------------
// Asigna la vista

PROCEDURE setVista( vista ) CLASS TConversorController

    ::vista := vista

return

//------------------------------------------------------------------------------
// Obtiene el modelo

METHOD getModelo() CLASS TConversorController
return ::modelo

//------------------------------------------------------------------------------
// Asigna el modelo

PROCEDURE setModelo( modelo ) CLASS TConversorController

    ::modelo := modelo

return

//------------------------------------------------------------------------------

