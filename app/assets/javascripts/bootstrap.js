jQuery(function() {
  $("a[rel~=popover], .has-popover").popover();
  $("a[rel~=tooltip], .has-tooltip").tooltip();
});

$(document).on("turbolinks:load", function () {

  $('.timepicker').datetimepicker({
    format: 'LT',
    allowInputToggle: true
  });

});
