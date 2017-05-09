var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Josh", "Ken", "Lucy"];
colors.push("orange with silver");
names.push("Stanley");
console.log(colors);
console.log(names);
function horse(arr1, arr2) {
  var result = {};
  for (var i = 0; i < arr1.length; i++) {
    result[arr1[i]] = arr2[i];
  }
  return result;
}
console.log(horse(names, colors));

function Car(year, make, model, color, is_automatic){
  this.year = year;
  this.make = make;
  this.model = model;
  this.color = color;
  this.is_automatic = is_automatic;
  this.drive = function() {console.log("Vrooom!");};
  this.print = function() {
    console.log("Make: " + this.make);
    console.log("Model: " + this.model);
    console.log("Year: " + this.year);
    console.log("Color: " + this.color);
    console.log("Automatic Transmission: " + this.is_automatic);
  } ;
}

var prius = new Car(2012, "Toyota", "Prius", "black", true);
prius.print();
prius.drive();

var porche = new Car(2017, "Porche", "Cayman", "silver", false);
porche.print();
porche.drive();