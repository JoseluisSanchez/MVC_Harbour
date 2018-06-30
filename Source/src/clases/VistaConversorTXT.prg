//----------------------------------------------------------------------------//
//  AUTOR.....: Manuel Expósito Suárez   Soft4U 2002-2011                     //
//  CLASE.....: MVC - Vista - TVistaTXT                                       //
//  FECHA MOD.: 20/11/2011                                                    //
//  VERSION...: 1.00                                                          //
//  PROPOSITO.: Ejemplo de Modelo Vista Controlador                           //
//----------------------------------------------------------------------------//

#include "HbClass.ch"

//------------------------------------------------------------------------------
// Definicion de la clase VISTA tipo texto

CREATE CLASS TVistaTXT FROM TConversorVista

    METHOD msg( cTxt, cTitulo )
    METHOD leeOpcion()
    METHOD muestraMenu()
    METHOD operacionIncorrecta()
    // Implementacion de los metodos de la interfaz vista
    METHOD escribeCambio()
    METHOD getCantidad()
	METHOD acercaDe()
	METHOD muestraFin()

END CLASS

//------------------------------------------------------------------------------
// Saca un mesanje en pantalla

METHOD msg( cMsg, cTitulo ) CLASS TVistaTXT

    if ValType( cTitulo ) != 'C'
        cTitulo := "Atencion"
    endif

    cTitulo := ";" + cTitulo + ";;;"

    if ValType( cMsg ) != 'C'
        cMsg := " "
    endif

return Alert( cTitulo + cMsg )

//------------------------------------------------------------------------------
// Se encarga de sacar por pantalla la informacion

PROCEDURE escribeCambio( s ) CLASS TVistaTXT

    ::msg( s, "Resultado" )

return

//------------------------------------------------------------------------------
// Acepta el tipo de opcion por pantalla

METHOD leeOpcion() CLASS TVistaTXT

    local cOpcion := " "
    local getList := {}

    @ 10, 10 SAY "Elige opcion:"  GET cOpcion

    READ

return AllTrim( cOpcion )

//------------------------------------------------------------------------------
// Acepta el importe que se va a tratar

METHOD getCantidad() CLASS TVistaTXT

    local nCantidad := 0
    local getList := {}

    @ 15, 10 SAY "Importe:" GET nCantidad

    READ

    // Limpia pantalla
    @ 15, 10 SAY Space( 30 )

return nCantidad

//------------------------------------------------------------------------------
// Muestra el menu por pantalla

PROCEDURE muestraMenu() CLASS TVistaTXT

	cls
	
    ? " +----------------------------------------+"
    ? " | Indica operacion que quieres realizar: |"
    ? " +----------------------------------------+"
    ?
    ? "     [1] De pesetas a euros"
    ? "     [2] De euros a pesetas"
	? "     [3] Acerca de..."
    ? "     [0] Salir"

return

//------------------------------------------------------------------------------
// Mensaje de error

PROCEDURE operacionIncorrecta() CLASS TVistaTXT

    ::msg( "Opcion incorrecta..." )

return

//------------------------------------------------------------------------------
// Informacion del sistema

PROCEDURE acercaDe() CLASS TVistaTXT

	::msg( "Ejemplo en modo Texto;del;Patron de Diseño;MVC", "Acerca del ejemplo" )

return

//------------------------------------------------------------------------------
// Aqui ira todo lo que se debe hacer al finalizar la ejecucion a nivel de vista

PROCEDURE muestraFin() CLASS TVistaTXT

    cls

	::msg( "Fin de la ejecucion" )

return

//------------------------------------------------------------------------------
