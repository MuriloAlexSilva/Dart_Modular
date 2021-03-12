import 'dart:io';

//Se vc adicinar a var fora do main vc conseguirá acessar em todas as funções declaradas.
List<String> produtos = [];
carrinhoCompras() {
  bool condicao = true;

  while (condicao) {
    print('=== Digite o nome do produto ===');
    String text = stdin.readLineSync();

    if (text == 'sair') {
      print('Finalizando o programa');
      condicao = false;
    } else if (text == 'imprimir') {
      imprimir();
      print("\n");
    } else if (text == 'remover') {
      remover();
    } else {
      produtos.add(text);
      print("\x1B[2J\x1B[0;0H"); //Codigo para limpar a tela do cmd

    }
  }
}

//Função sempre deverá ser fora do main principal
imprimir() {
  print('Sua lista de Produtos');
  for (var i = 0; i < produtos.length; i++) {
    print('Item $i - ${produtos[i]}.');
  }
}

remover() {
  imprimir();
  print('Digite a posiçao do item o qual deseja remover ');
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item); //Desta forma você remove pelo index
  // String remove = stdin.readLineSync();
  // produtos.remove(remove);//Desta forma remove pelo nome do produto
  print('Item Removido');
}
