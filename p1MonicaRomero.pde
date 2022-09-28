int diameter;
int xLeft, xRight, firstRow, secRow, thirdRow;
int xHelp, yHelp;
color white = color(255);
color blue = color(50, 50,150); 
color red = color(255,0,0);
boolean onePressed = false, twoPressed = false;
boolean openPressed = false, closedPressed = false;
boolean alarmPressed = false, stopPressed = false, helpPressed = false;
String feedback;
boolean feedChange = false;
void setup(){
  size(360, 740);
  diameter = 50;
  xLeft = 120;
  firstRow = 415;
  xRight = 280;
  secRow = 500;
  thirdRow = 585;
  xHelp = 200;
  yHelp = 650;
  feedback = "1";
}
void draw(){
  if(feedChange)
  {
    delay(4000);
    feedChange = false;
  }
  background(216,216,216); //<>//
  //feedback rectangle
  fill(0,0,75);
  rect(50,25,260,60);
  textSize(50);
  fill(white);
  textAlign(LEFT);
  text(feedback,280,75);
  textAlign(CENTER);
  
  //firefighter rectangle
  fill(216,216,216);
  stroke(50);
  rect(100,100,150,170,5);
  textSize(20);
  fill(255,0,0);
  textAlign(CENTER);
 text("FIREFIGHTERS \n OPERATION", 175,130);
 //speaker
  fill(216,216,216);
  stroke(50);
  circle(180,320,75);
  fill(50);
  
  circle(180,320, 5);
  circle(180, 335, 5);
  circle(180, 350,5);
  circle(180, 305, 5);
  circle(180, 290, 5);
  circle(165, 320, 5);
  circle(150, 320, 5);
  circle(195, 320, 5);
  circle(210, 320, 5);
  circle(165, 335, 5);
  circle(195, 335, 5);
  circle(195, 305, 5);
  circle(165, 305, 5);
  
  
  //1st floor button
  fill(0);
  rect(40,385,110,60,200);
  if(onePressed){
    fill(blue);
    circle(xLeft,firstRow,diameter);
    if(feedback != "1")
    {
      textSize(50);
      fill(white);
      textAlign(LEFT);
      feedback = "1";
      text(feedback,280,75);
      textAlign(CENTER);
    }
    
      feedChange = true;
      onePressed = false;
    
  }
  else {
    fill(white);
    circle(xLeft,firstRow,diameter);
  }
  textSize(40);
  fill(255);
  text("1",72,425);
  
  //2nd floor button
  fill(0); //<>//
  rect(200,385,110,60,200);
  if(twoPressed)
  {
    fill(blue);
    circle(xRight,firstRow,diameter);
    if(feedback != "2")
    {
      textSize(50);
      fill(white);
      textAlign(LEFT);
      feedback = "2";
      text(feedback,280,75);
      textAlign(CENTER);
    }
      feedChange = true;
      twoPressed = false;
  }
  else{
  fill(white);
  circle(xRight,firstRow,diameter);
  }
 
  textSize(40);
  fill(255);
  text("2",232,425);
  
  //door open 
  fill(0);
  rect(40,470,110,60,200);
  if(openPressed){
    fill(blue);
    circle(xLeft,secRow,diameter);
    textSize(35);
    fill(white);
    textAlign(LEFT);
    text("Door Opening",65,75);
    textAlign(CENTER);
    feedChange = true;
    openPressed = false;
  }
  else{
    fill(white);
  circle(xLeft,secRow,diameter);
  }
  textSize(15);
  fill(255);
  text("Door\n Open",68,495);
  fill(0);
  triangle(100,500,113,515,113,485);
  triangle(140,500,128,515,128,485);
  rect(118,483,5,32);
  
  //Door Close
  fill(0);
  rect(200,470,110,60,200);
  if(closedPressed)
  {
    fill(blue);
    circle(xRight,secRow,diameter);
    textSize(40);
    fill(white);
    textAlign(LEFT);
    text("Door Closing",65,75);
    textAlign(CENTER);
    feedChange = true; 
    closedPressed = false;
  }
  else{
  fill(white);
  circle(xRight,secRow,diameter);
  }
  textSize(15);
  fill(255);
  text("Door\nClose",232,495);
  fill(0);
  triangle(285,500,295,513,295,488);
  triangle(275,500,265,513,265,488);
  rect(278,485,3,30);
  
  
  //Alarm Button
  fill(255,0,0);
  rect(40,555,110,60,200);
  if(alarmPressed)
  {
    fill(blue);
    circle(xLeft,thirdRow,diameter);
    textSize(40);
    fill(white);
    textAlign(LEFT);
    text("EMERGENCY!",65,75);
    textAlign(CENTER);
    strokeWeight(3);
    line(180,365,180,385);
    line(160,360,155, 375);
    line(200,360,205,375);
    line(145,345,125,355);
    line(215,345,230,355);
    line(135,320,115,320);
    line(225,320,245,320);
    line(140,300,125,295);
    line(220,300,235,295);
    line(150,280,140,270);
    line(210,280,220,270);
    line(180,260,180,275);
    strokeWeight(1);
    
  }
  else
  {
    fill(white);
    circle(xLeft,thirdRow,diameter);
  }
  textSize(20);
  fill(0);
  text("Alarm",68,590);
  
  
  //Emergency Stop
  fill(255,0,0);
  rect(200,555,110,60,200);
  if(stopPressed)
  {
    fill(blue);
    circle(xRight,thirdRow,diameter);
    textSize(30);
    fill(white);
    textAlign(LEFT);
    text("Elevator Stopped",65,75);
    textAlign(CENTER);
  }
  else{
  fill(white);
  circle(xRight,thirdRow,diameter);
  }
  textSize(20);
  fill(0);
  text("STOP",230,590);
   //<>//
  
  //Help Button
  fill(255,0,0);
  rect(120,620,110,60,20);
  if(helpPressed)
  {
    fill(blue);
    circle(xHelp,yHelp,50);
    textSize(32);
    fill(white);
    textAlign(LEFT);
    text("Calling for help",65,75);
    textAlign(CENTER);
  }
  else{
  fill(white);
  circle(xHelp,yHelp,50);
  }
  textSize(20);
  fill(0);
  text("HELP",150,655);
  
  
  
  
}
void mouseClicked(){ //<>//
  String button = findButton(mouseX, mouseY);
  switch(button)
  {
    case "One": onePressed = true;
                break;
    case "Two": twoPressed = true;
                break;
    case "Open": openPressed = true;
                  break;
    case "Close": closedPressed = true;
                  break;
    case "Alarm": if(!alarmPressed)
                    alarmPressed = true;
                  else
                    alarmPressed = false;
                  break;
    case "Stop": if(!stopPressed)
                    stopPressed = true;
                 else
                     stopPressed = false;
                  break;
    case "Help": if(!helpPressed)
                    helpPressed =true;
                 else 
                     helpPressed = false;
                break;
    default: break;
  }
  
}

String findButton(int x, int y){
   float xDist = 0, yDist = 0;
   
   //left buttons
  if( x<= xLeft + (diameter /2))
    {
      xDist = xLeft - x;
      if(y <= firstRow + (diameter /2))
      {
        yDist = firstRow - y;
        if(sqrt(sq(xDist) + sq(yDist))< diameter/2){
          return "One";
         }
      }
      else if (y <= secRow + (diameter /2))
      {
        yDist = secRow -y;
        if(sqrt(sq(xDist) + sq(yDist))< diameter/2){
          return "Open";
         }
      }
      else if (y <= thirdRow + (diameter /2))
      {
        yDist = thirdRow -y;
        if(sqrt(sq(xDist) + sq(yDist))< diameter/2){
          return "Alarm";
         }
      }
    }
    else if(x <= xRight + (diameter/2))
    {
      xDist = xRight - x;
      if(y <= firstRow + (diameter /2))
      {
        yDist = firstRow - y;
        if(sqrt(sq(xDist) + sq(yDist))< diameter/2){
          return "Two";
         }
      }
      else if (y <= secRow + (diameter /2))
      {
        yDist = secRow -y;
        if(sqrt(sq(xDist) + sq(yDist))< diameter/2){
          return "Close";
         }
      }
      else if (y <= thirdRow + (diameter /2))
      {
        yDist = thirdRow -y;
        if(sqrt(sq(xDist) + sq(yDist))< diameter/2){
          return "Stop";
         }
      } 
    }
    if((x <= xHelp + (diameter/2)) && (y <= yHelp + (diameter/2)))
    {
      xDist = xHelp - x;
      yDist = yHelp - y;
      if(sqrt(sq(xDist) + sq(yDist))< diameter/2){
          return "Help";
      }
    }
   return "NA";
    
 
}
