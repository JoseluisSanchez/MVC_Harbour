/*
 * Proyecto: PruebaMVC
 * Fichero: P00.prg
 * Descripción: Ejemplo modo texto de las clases.
 * Autor: Manu Exposito Suárez
 * Fecha: 20/09/2011
 * Version: 0.12
 */

//------------------------------------------------------------------------------

#include "hbclass.ch"

//------------------------------------------------------------------------------
// Programa principal de la prueba

PROCEDURE main()

    local oAp := TAplicacion():new()
	
    oAp:ejecuta()

return

//------------------------------------------------------------------------------
// Clase principal para el ejemplo de pruebas etc

CLASS TAplicacion

    DATA controlador

    METHOD new() CONSTRUCTOR
    METHOD ejecuta()

END CLASS

//------------------------------------------------------------------------------
// Constructor

METHOD new() CLASS TAplicacion

	local oVista := TVistaTXT():new()
	local oModelo := TConversorModelEurosPesetas():new()
	
    ::controlador := TConversorEurosPesetasController():new( oVista, oModelo )

return self

//------------------------------------------------------------------------------
// Metodo que pone en marcha el sistema

PROCEDURE ejecuta() CLASS TAplicacion

    ::controlador:getVista():muestraMenu()
    ::controlador:despachaAcciones()

return

//------------------------------------------------------------------------------
