//Done By : Kaiser Joney
// Student ID : 7763080
// Date : 22nd November 2018
// COmp 3490 Graphics 1
// Prof : JOHN BRAICO
  
  
  float x,y,z,j,angle,anglej,anglei,angleY,p,cameraA1,cameraA2,cameraA3; // Introduction of angles and the keys to decrease
  float r =0;
  boolean keyNumber = false;
  void setup()// Setup method 
  {
    //background();
    size(640,360,P3D);
    x = width/2;
    y = height/2;
    z= 0;
    p=0;
    cameraA1 =0.0;
    cameraA2 =0.0;
    cameraA3 =0.0;
    //int r= 0;
    //int angle=0;
    //int anglej =0;
    //int anglei=0;
    //int angleY =0;
    frameRate(50);// Fixed framerate
    //noLoop();
  }
  void draw()// Draw method
  {
    background(0);
    //camera(width/3, height/3, (height/3) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
    drawBOX1();
    keyPressed();
    //noLoop();
   if(keyNumber ==true)
   {
     drawBOX1();
   }
  // drawBOX1();
   
  }
  
  void drawBOX1()// Series of boxes for the crane
  {
    
    pushMatrix();// Headqqqq
    fill(#9CA0B2);
    translate(x,y-150,z);
    rotateX(radians(90.0));
    rotateZ(radians(1.0));
    box(120,20,30);
    popMatrix();
    
    pushMatrix();// THe Main Arm<BLUE>
    fill(#4761EA);
    translate(x,y-110,z);
    //rotateZ(radians(80));
    //print(angle);
    rotateY(radians(angle));
    
    //rotateX(radians(10));
    box(250,30,20);
    
    pushMatrix();//Second Yellow BOX
     fill(#FAE817);
     print(p);
    translate(x-420-p,y-150,z);
    box(30,30,30);
    //translate(x-420,y-150,z);
    
     
    pushMatrix();//Third RED box
    fill(#EA1A32);
    translate(x-320,y-150-r,z);
    rotateY(radians(angleY));
    box(30,30,30);
    
    pushMatrix();//THe Yellow Bar at the backDrop
    fill(#FAE817);
    translate(x-320,y-217.5,z);
    scale(0.5,10.25,0.5);
    box(10,8,10);
    popMatrix();
    
    //Claw Starts 
    pushMatrix();
    fill(#DF15E3);
     //translate(x,y,z);
    translate(x-320,y-175,z);
    rotate(anglei);
    rect(0,0,10,40);
    popMatrix();
    
    pushMatrix();// Claw second hand
    fill(#DF15E3);
    translate(x-330,y-175,z);
   // print(anglej);
    rotate(anglej);
    rect(0,0,10,40);
    popMatrix();
  
  popMatrix();// Closing the matrix
  popMatrix();
  popMatrix();
  //popMatrix();
  }
    
    void keyPressed()// KeyBoard pressing techniques
    {
      
     // loop();
     // redraw();// Draws the whole diagram again when key is pressed
      //loop();
      if(key =='q')// Q= to rotate the upper arm
      {
        //keyNumber =true;
        angle--;;
      }
      if(key=='r' && p>-200.0 )// to move the crane hand along the blue bar
      {
        //keyNumber = true;
        p=p-1;
      }
      if(key=='e' && p<0.00)// to move the bar along the blue bar
      {
        p = p+1;
      }
     if(key =='w')
     {
       angle++;
     }
     if(key == 'z' )// crane goes up 
     {
       while(r>-69.0)
       {
         //r=r-0.01; 
         r--;
       }
     } 
     if(key == 'a')// crane goes down
     {
       while(r<1.0)//goes up 
       {
         //r=r+0.01;
         r++;
       }
     }
     if(key =='x'&& anglej<=1.9 && anglei>=0.0 )// to change the angle q
     {
       anglej=anglej+0.1;
       anglei = anglei-0.1;
       //anglei=anglei;
       //anglej=anglej;
     }
     if(key=='c' && anglei<=1.9 && anglej>=0.0)
     {
        anglej=anglej-0.1; 
        anglei=anglei+0.1;
     }
     if(key==' ')
     {
        keyNumber =true;
        angle--;;
       
     }
     if(key == 's')
     {
       angleY--;
       
     }
     if(key=='d' && angleY<=2.0)
     {
      angleY++; 
     }
     if(key=='1')
     {
       cameraA1 = 150;
     }
     if(key =='2')
     {
       camera(((width/2)-150), ((height/2)), ((height/2) / tan(PI/6)), width/2, height/2, 0, 0, 1, 0);
     }
     if(key =='3')
     {
       cameraA3 = 150;
       camera(((width/2)), ((height/2)), ((height/2+200) / tan(PI/6)-150), width/2, height/2, 0, 0, 1, 0);
       //cameraA2 = 150;
       //cameraA1 = 150;
     }
     if(key =='o')
     {
    ortho(-width/2, width/2, -height/2, height/2);
      }
      if(key =='p')
      {
    float fov = PI/3.0; 
    float cameraZ = (height/2.0) / tan(fov/2.0); 
    perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
      }
     
    }
