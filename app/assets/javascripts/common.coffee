$ ->
  $(".show-age").on "click", () ->
    row = $(this).closest('tr').prevAll().length;
    col = $(this).closest('td').prevAll().length-1;
    td = $(this).closest('#tbl-school')[0].rows[row].cells[col]
   # td.innerHTML = "abc"
   # td.find(".age").style.display = "block"
    return

  $("#btn-change-all").on "click", () ->
    $("#tbl-school tr").each ->
      $(this).find(".age").text(5)
      return
    return