float Zoom = 1;
float PanX = 0;
float PanY = 0;

void setup(){
 size(1000,1000); 
  
}


void draw(){
 clear();
 background(50);
  for(int i = 0 ; i <= 100-1 ; i++){
   fill(180,0,180);
   noStroke();
  rect(i%10*100*Zoom+PanX+(width/2 - width/2*Zoom),i/10*100*Zoom+PanY+(height/2 - height/2*Zoom),50*Zoom,50*Zoom);
 }
 
}
void keyPressed(){
   if (key == 'e') Zoom = Zoom + 0.1;
   if (key == 'q') Zoom = Zoom - 0.1;  
   if (key == 'w') PanY = PanY + 10;
   if (key == 's') PanY = PanY - 10;
   if (key == 'a') PanX = PanX + 10;
   if (key == 'd') PanX = PanX - 10;
 }
