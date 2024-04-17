size(600,600);
background(#000000);

int separacion=100;
int iteracion=600/separacion;

for(int i=0;i<=iteracion;i++){
  
 if (i%2==0){
   fill(#ff0000);
 }else{
     fill(#00FF00);
 }
  
 circle(300,300,600-separacion*i);

}
