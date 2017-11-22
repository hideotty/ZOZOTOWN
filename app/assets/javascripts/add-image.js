$(document).on('turbolinks:load', function() {
  var buttonId = 0;
$(document).on('click','.subimage', function() {
  buttonId++;
  $('#defaultImage').clone().attr('id', buttonId).appendTo($('#js-add-images'));
})
});


// $('js-add-image').click(function(){
//   var img = new Image();
//   img src = "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}";
//   $img.on("load",function(){

//   })

// })

