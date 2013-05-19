$(function() {
$(document).on("click","#cards th a, #cards .pagination a", function() {
$.getScript(this.href);
return false;
});
$("#cards input").keyup(function() {
$.get($("#cards_search").attr("action"), $("#cards_search").serialize(), null, "script");
return false;
});
});



