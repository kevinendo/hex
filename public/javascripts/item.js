$(function() {
$(document).on("click","#items th a, #items .pagination a", function() {
$.getScript(this.href);
return false;
});
$("#items input").keyup(function() {
$.get($("#items_search").attr("action"), $("#items_search").serialize(), null, "script");
return false;
});
});



