CLASS zcl_oag_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_OAG_ART IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA it_art TYPE STANDARD TABLE OF zoag_tab_art.

    it_art = VALUE #( client = sy-mandt
        ( id_art = 1
          desc1  = 'Estuche 52 rotuladores'
          desc2  = 'Caja con 52 rotuladores de la marca americana Chamaleon'
          color  = 'Varios'
          piezas = 52
          stock  = 10
          url    = 'https://www.tiendabellasartesjer.com/28558-large_default/estuche-52-rotuladores-chamaleon.webp' )

        ( id_art = 2
          desc1  = 'Estuche madera esbozo Royal Langnickel'
          desc2  = 'Estuche de madera con materiales de esbozo'
          color  = 'Negro'
          piezas = 50
          stock  = 100
          url    = 'https://www.tiendabellasartesjer.com/34938-large_default/estuche-madera-esbozo-royal-langnickel.webp' )

        ( id_art = 3
          desc1  = 'Bloc Copic A4 para rotulador'
          desc2  = 'Bloc Copic A4 específicamente diseñado para trabajos con rotulador de alcohol'
          color  = 'Blanco'
          piezas = 1
          stock  = 20
          url    = 'https://www.tiendabellasartesjer.com/21573-large_default/bloc-copic-a4-para-rotulador.webp' )

        ( id_art = 4
          desc1  = 'Lápiz grafito Faber Castell 9000'
          desc2  = 'Disponible en 16 durezas diferentes para trabajos creativos'
          color  = 'Negro'
          piezas = 1
          stock  = 1
          url    = 'https://www.tiendabellasartesjer.com/28264-large_default/lapiz-grafito-faber-castell.webp' )
    ).

    INSERT zoag_tab_art FROM TABLE @it_art.
    IF sy-subrc = 0.
      out->write( 'Insert successful' ).
    ELSE.
      out->write( 'Insert wrong' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
