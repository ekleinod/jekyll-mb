
$("[data-toggle='sidebar']").click(function() {
    var selector = $(this).data("target");
    $(selector).toggleClass('show');
    $(this).toggleClass("move");
});