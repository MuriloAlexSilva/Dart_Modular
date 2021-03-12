whileE() {
  bool condicao = true;
  int x = 0;
  //A diferença do while, seria que enquanto o valor corresponder a variavel ele vai rodar
  while (condicao) {
    print("Estou printando o $x");
    if (x > 9) {
      condicao = false;
    }
    x++;
  }
}
