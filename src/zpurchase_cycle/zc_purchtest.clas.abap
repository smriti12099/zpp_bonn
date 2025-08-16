CLASS zc_purchtest DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZC_PURCHTEST IMPLEMENTATION.


    METHOD if_oo_adt_classrun~main.

      DATA(migo) = ''.
      DATA(purchaseorder) = ''.
      DATA(update_line) = ''.
      IF update_line = 'X'.
        UPDATE zinv_mst SET migo_processed = 1, migo_no = @migo, error_log = ''
                  WHERE po_no = @purchaseorder.
      ENDIF.

    ENDMETHOD.
ENDCLASS.
