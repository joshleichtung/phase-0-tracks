$(document).ready(function(){
  $('#load_button').on('click', load_ajax_data);
})

function load_ajax_data(event){
  console.log(this);
  console.log(event.target);
  $(this).after("<div id='data'></div>");
  $('#data').load('./data.json');
}

var getData = function(){
  var data;
  $.ajax({
    url: './data.json',
    dataType: 'json',
    success: function(response){ console.log("success");
      console.log(response);
      data = response.name; },
    error: function(req, status, err){
      console.log("Ajax error:", status, err);

    },
  });
  console.log("Data: " + data);
  return "yo";
}

var getSomeData = function() {
  var data;

  $.ajax({
    url: './data.json',
    dataType: 'json',
    success: function(resp) {
      data = resp.people;
    }
  });

  return data;
}
