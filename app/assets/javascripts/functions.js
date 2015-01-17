function hideElement(id) {
  document.getElementById(id).style.display = 'none';
}

$(document).ready(function() {
  $("#jobs_search input").keyup(function() {
    $.get($("#jobs_search").attr("action"), $("#jobs_search").serialize(), null, "script");
    return false;
  });
});