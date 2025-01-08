//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var carBody = 20;
var carWindow = 50;
var carWheel = 40;
var pinkCar = -300;
var pinkWindow = -270;
var pinkWheel = -280;
var greenCar = -550;
var greenWindow = -520;
var greenWheel = -530;
var moonBody = 1

//🟢Draw Procedure - Runs on Repeat
draw = function(){
noStroke ();
 
  background(255,255,255,0);
  //car//
  fill (150, 182, 197);
rect (carBody,280,100,20, [40]);
  rect (carBody + 20,250,60,40);
  
  //car windows//
  fill (241, 240, 232);
  rect (carWindow ,260,20,15);
    rect (carWindow + 25 ,260,15,15);
    
    //wheels//
    fill (77, 66, 66);
    ellipse (carWheel, 305, 20, 20);
    ellipse (carWheel + 60, 305, 20, 20);
    
    //pink car//
      fill (246, 214, 214);
rect (pinkCar,280,100,20, [40]);
  rect (pinkCar + 20,250,60,40);
  
   //pink car windows//
  fill (241, 240, 232);
  rect (pinkWindow ,260,20,15);
    rect (pinkWindow + 25 ,260,15,15);
    
      //pink wheels//
    fill (77, 66, 66);
    ellipse (pinkWheel, 305, 20, 20);
    ellipse (pinkWheel + 60, 305, 20, 20);
    
     //green car//
      fill (186, 216, 182);
rect (greenCar,280,100,20, [40]);
  rect (greenCar + 20,250,60,40);
  
    //green car windows//
  fill (241, 240, 232);
  rect (greenWindow ,260,20,15);
    rect (greenWindow + 25 ,260,15,15);
    
      //green wheels//
    fill (77, 66, 66);
    ellipse (greenWheel, 305, 20, 20);
    ellipse (greenWheel + 60, 305, 20, 20);
    
    //moon//
    fill (250, 240, 230);
    ellipse (352, 51, moonBody, moonBody);
    
    
    if (carBody > 1000) {
    carBody = -20;
    carWindow = 10;
  carWheel = 1;
    }
    
     if (pinkCar > 1000) {
   pinkCar = -20;
    pinkWindow = 10;
  pinkWheel = 1;
    }
    
     if (greenCar > 1000) {
  greenCar = -20;
    greenWindow = 10;
  greenWheel = 1;
    }
    
     if (moonBody < 30) {
 moonBody += 1;
    }
    

   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  
  carBody += 5;
  carWindow += 5;
  carWheel += 5;
  pinkCar += 5;
  pinkWindow += 5;
pinkWheel += 5;
greenCar += 5;
greenWindow += 5;
greenWheel += 5;
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
