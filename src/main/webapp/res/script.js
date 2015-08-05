// Code goes here
var myfuction = function(){

console.log('my function is working');
throw exception();
}

var secondoption = function(){

console.log('secondoption is working');
}

var myfuction2 = function(z,y){
try{
  z();
}catch(ex){
  y();
}


}
 myfuction2(myfuction,secondoption);
 
 
 var employee = function(){
   
    var work = function(){
   
   console.log('employee is working');
 };
  var leave = function(){
   
   console.log('employee on leave');
 };
 
 
 return{
   
   working: work,
   onleave:leave
   
 };
 
 
 }
 
 var e = employee();
 e.working();
 e.onleave();