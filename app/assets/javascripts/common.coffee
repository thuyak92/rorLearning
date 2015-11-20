submitWithValue = (value, sort) ->
    $("#csv_download").val(value)
    $("#meta_sort").val(sort)
    objForm = document.getElementById("order_search")
    objForm.submit()
    return
  return

  $(document).ready ->
    $(".tag").each ->
      tag = $(this).text()
      tag = tag.slice(0,-1)
      tag = tag + " width='0' height='0'>"
      $(this).text(tag)
      return
    return