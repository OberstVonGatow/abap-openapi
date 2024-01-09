CLASS zcx_oapi_graph_cycle DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    METHODS constructor
      IMPORTING
        !cycle_typename TYPE string
        !textid         LIKE if_t100_message=>t100key OPTIONAL
        !previous       LIKE previous OPTIONAL .
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA cycle_typename TYPE string.
  ENDCLASS.



    CLASS zcx_oapi_graph_cycle IMPLEMENTATION.
    METHOD constructor ##ADT_SUPPRESS_GENERATION.
      CALL METHOD super->constructor
        EXPORTING
          previous = previous.
      CLEAR me->textid.
      IF textid IS INITIAL.
        if_t100_message~t100key = if_t100_message=>default_textid.
      ELSE.
        if_t100_message~t100key = textid.
      ENDIF.
    ENDMETHOD.
ENDCLASS.
