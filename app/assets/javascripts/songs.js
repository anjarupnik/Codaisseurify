function createSong(name, link) {
    var newSong = { name: name, link: link };
    var id = $("#deleteart").attr('href');
  $.ajax({
    type: "POST",
    url: id + "/songs.json",
    data: JSON.stringify({
      song: newSong
  }),
  contentType: "application/json",
  dataType: "json"})
    .done(function(data) {
        console.log(data);

        var id = $(deleteart).attr('href');

        var listItem = $("<li></li>");
        listItem.attr('id', data.id);
        listItem.html(data.name);

        var br = $("<br/>");
        var play = $('<a></a>');
        play.attr('target', '_blank');
        play.attr('href', data.link);
        play.html("Play");

        var del = $('<a></a>');
        del.attr('href', '#');
        del.attr('id', 'deletesong')
        del.html("   Delete");

        listItem.append(br);
        listItem.append(play);
        listItem.append(del);

        $("#songslist").append(listItem);

      })

      .fail(function(error) {
        console.log(error);
        error_message = error.responseJSON.name[0];
        showError(error_message);
});
}

function showError(message) {
  $("#song_name").addClass("error");
  var errorElement = $("<small></small>")
    .attr("id", "error_message")
    .addClass("error")
    .html("name " + message);
  $(errorElement).appendTo('form');
}

function resetErrors() {
  $("#error_message").remove();
  $("#song_name").removeClass("error");
}

function submitSong(event) {
  event.preventDefault();
  createSong(($("#song_name").val()), ($("#song_link").val()));
  $("#song_name").val(null);
  $("#song_link").val(null);
  resetErrors();
}

$(document).on('click', "a#deletesong", function(){

  var id = $("#deleteart").attr('href');
  var button = this;
  var songid = $(button).parent().attr('id');
  if(confirm("Are you sure?")){
    $.ajax({
      type: "DELETE",
      url: id + "/songs/" + songid + ".json",
      contentType: "application/json",
      dataType: "json"})

      $(button).parent().remove();
    }
});


$(document).on('click', "a#deleteallsongs", function(){

  $.each($("li"), function(){
  var id = $("#deleteart").attr('href');
  var songid = $(this).attr('id');

    $.ajax({
      type: "DELETE",
      url: id + "/songs/" + songid + ".json",
      contentType: "application/json",
      dataType: "json"})
      $(this).remove();

});

});

$(document).ready(function() {
  $("form#new_song").bind('submit', submitSong);
});
