// CLIQUE PARA ESCOLHER O CARRO E APERTE ENTER PARA JOGAR :)

float alt, larg, semaforoverde, semaforovermelho, 
  vel1, vel2, vel3, x1, x2, x3, texto1x, texto2x, texto3x, tempo;
boolean andando, carro1, carro2, carro3, carroescolhido, vence1, vence2, vence3, contagem;
int cont;

void setup() {
  size(800, 400);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  background(100, 50, 80);
  alt = height;
  larg = width;
  semaforoverde = 0;
  semaforovermelho= 100;
  andando = false;
  carro1 = false;
  carro2 = false;
  carro3 = false;
  x1 = larg/80;
  x2 = larg/80;
  x3 = larg/80;
  texto1x=larg/32;
  texto2x=larg/32;
  texto3x=larg/32;
  textAlign(CENTER);
  textSize(larg/76.92);
  cont = 0;
}

void draw() {
  //pista
  fill(355, 75, 85);
  rect(0, alt/4, larg, alt/2);
  fill(0, 0, 80);
  rect(0, alt/4.44, larg, alt/40);
  rect(0, alt/1.33, larg, alt/40);
  fill(0, 0, 90);
  rect(0, alt/2.5, larg, alt/40);
  rect(0, alt/1.73, larg, alt/40);
  fill(0, 0, 95);
  rect(larg/16, alt/4, larg/40, alt/2);
  rect(larg/1.11, alt/4, larg/40, alt/2);
  //semáforo
  fill(100, 0, 20);
  rect(larg/6.4, alt/40, larg/5.3, alt/6.66);
  rect(larg/5.3, 0, larg/114.28, alt/40);
  rect(larg/3.25, 0, larg/114.28, alt/40);
  //luzes do semáforo 
  fill(0, semaforovermelho, 90);
  circle(larg/4.28, alt/10, larg/40);
  fill(140, semaforoverde, 90);
  circle(larg/3.66, alt/10, larg/40);
  //painel de mensagem
  fill(100, 0, 20);
  rect(larg/1.97, alt/40, larg/3.47, alt/6.66);
  rect(larg/1.87, 0, larg/114.28, alt/40);
  rect(larg/1.3, 0, larg/114.28, alt/40);
  //árvores
  fill(130, 50, 90);
  circle(larg/2.22, alt/13.33, larg/13.33);
  circle(larg/1.17, alt/13.33, larg/13.33);
  circle(larg/1.73, alt/1.17, larg/13.33);
  //troncos das árvores
  fill(5, 60, alt/7.69);
  triangle(larg/2.28, alt/5, larg/2.22, alt/6.66, larg/2.16, alt/5);
  triangle(larg/1.19, alt/5, larg/1.17, alt/6.66, larg/1.15, alt/5);
  triangle(larg/1.77, alt/1.02, larg/1.73, alt/1.075, larg/1.7, alt/1.02);
  //carros
  fill(50);
  rect(x1, alt/3.33, larg/26.66, alt/20);
  rect(x2, alt/2.10, larg/26.66, alt/20);
  rect(x3, alt/1.53, larg/26.66, alt/20);
  //numeros dos carros
  fill(0, 0, 100);
  text("1", texto1x, alt/2.98);
  text("2", texto2x, alt/1.96);
  text("3", texto3x, alt/1.45);
  //mar
  fill(200, 90, 90);
  circle(larg/4, alt/0.69, larg/1.66);
  circle(larg/80, alt/0.701, larg/1.66);
  circle(larg, alt/0.51, larg/0.88);


  vel1 = random(0, 5);
  vel2 = random(0, 5);
  vel3 = random(0, 5);

  if (keyPressed && key == ENTER && vence1 == false && vence2 == false && vence3 == false) {
    andando = true;
    contagem = true;
  }

  if (mousePressed) {

    if (andando == false && vence1 == false && vence2 == false && vence3 == false && mouseX >= x1 && mouseX <= x1+larg/26.66 && mouseY >= alt/3.33 
      && mouseY <= alt/3.33+alt/20) {
      carro1 = true;
      carro2 = false;
      carro3 = false;
      carroescolhido=true;
    } else if (andando == false && vence1 == false && vence2 == false && vence3 == false && mouseX >= x2 && mouseX <= x2+larg/26.66 &&
      mouseY >= alt/2.10 && mouseY <= alt/2.10 + alt/20) {
      carro1 = false;
      carro2 = true;
      carro3 = false;
      carroescolhido=true;
    } else if (andando == false && vence1 == false && vence2 == false && vence3 == false && mouseX >= x3 && mouseX <= x3+larg/26.66 &&
      mouseY >= alt/1.53 && mouseY <= alt/1.53+alt/20) {
      carro1 = false;
      carro2 = false;
      carro3 = true;
      carroescolhido=true;
    } else if (andando == false && vence1 == false && vence2 == false && vence3 == false) {
      carro1 = false;
      carro2 = false;
      carro3 = false;
      carroescolhido=false;
    }
  }

  if (carro1) {
    fill(0, 0, 100);
    text("Você escolheu o carro 1!", larg/1.53, alt/10-5);
  }
  if (carro2) {
    fill(0, 0, 100);
    text("Você escolheu o carro 2!", larg/1.53, alt/10-5);
  }
  if (carro3) {
    fill(0, 0, 100);
    text("Você escolheu o carro 3!", larg/1.53, alt/10-5);
  }
  if (carroescolhido == false) {
    fill(0, 0, 100);
    text("Você não escolheu nenhum carro!", larg/1.53, alt/10-5);
  }

  if (andando) {
    //cor do semáforo mudando
    semaforoverde = 100;
    semaforovermelho = 0;
    //carros andando
    x1 = x1 + vel1;
    x2 = x2 + vel2;
    x3 = x3 + vel3;
    //texto andando
    texto1x = texto1x + vel1;
    texto2x = texto2x + vel2;
    texto3x = texto3x + vel3;
  }

  if (x1 >= larg/1.11-larg/26.66) {
    andando = false;
    vence1 = true;
  } else if (x2 >= larg/1.11-larg/26.66) {
    andando = false;
    vence2 = true;
  } else if (x3 >= larg/1.11-larg/26.66) {
    andando = false;
    vence3 = true;
  }


  if (carro1 == true && vence1 == true) {
    text("Você ganhou! O carro 1 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carro2 == true && vence2 == true) {
    text("Você ganhou! O carro 2 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carro3 == true && vence3 == true) {
    text("Você ganhou! O carro 3 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carro1 == true && vence2 == true) {
    text("Você perdeu! :( O carro 2 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carro1 == true && vence3 == true) {
    text("Você perdeu! :( O carro 3 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carro2 == true && vence1 == true) {
    text("Você perdeu! :( O carro 1 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carro2 == true && vence3 == true) {
    text("Você perdeu! :( O carro 3 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carro3 == true && vence1 == true) {
    text("Você perdeu! :( O carro 1 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carro3 == true && vence2 == true) {
    text("Você perdeu! :( O carro 2 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carroescolhido==false && vence1) {
    text("Você perdeu! :( O carro 1 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carroescolhido==false && vence2) {
    text("Você perdeu! :( O carro 2 venceu a corrida", larg/1.53, alt/7.69);
  } else if (carroescolhido==false && vence3) {
    text("Você perdeu! :( O carro 3 venceu a corrida", larg/1.53, alt/7.69);
  }

  if (contagem){
    cont = cont + 1;
  } if (cont/60 == 1){
    
  }
}
