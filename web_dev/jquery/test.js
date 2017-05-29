$(document).ready(function(){
  $('#load_button').on('click', getJSON);
})

function load_ajax_data(event){
  console.log(this);
  console.log(event.target);
  $(this).after("<div id='data'></div>");
  $('#data').load('./data.json');
}

var getJSON = function(){
  $.getJSON('./data.json', function(json){
    $('#ajax-loader').append('<div></div>')
    var div = $('#ajax-loader :last-child');
    for(prop in json){
      if(json.hasOwnProperty(prop)){
        div.append('<h3>' + prop + '</h3><div><p>This is what\'s in that property:<br>' + json[prop] + '</p>');
      }
    }
    div.accordion({collapsible: true, active: false});
  });
};
