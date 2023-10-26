INTERFACE zif_oapi_exit
  PUBLIC .

  METHODS constructor_exit
    IMPORTING
      ii_client TYPE REF TO if_http_client.

  METHODS before_send
    IMPORTING
      iv_path         TYPE string
      iv_operation_id TYPE string
      iv_method       TYPE string
      ii_client       TYPE REF TO if_http_client.

  METHODS after_receive
    IMPORTING
      iv_path         TYPE string
      iv_operation_id TYPE string
      iv_method       TYPE string
      ii_client       TYPE REF TO if_http_client.

  METHODS parse_response_to_abap
    IMPORTING
      iv_path         TYPE string
      iv_operation_id TYPE string
      iv_method       TYPE string
      ii_client       TYPE REF TO if_http_client
    CHANGING
      c_data          TYPE data.

  METHODS parse_body_to_data
    IMPORTING
      iv_path             TYPE string
      iv_operation_id     TYPE string
      iv_method           TYPE string
      ii_client           TYPE REF TO if_http_client
      i_body              TYPE data
    RETURNING
      VALUE(rv_body_data) TYPE xstring.


ENDINTERFACE.
