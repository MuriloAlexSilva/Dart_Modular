import 'dart:io';

arrays() {
  bool condicao = true;

  //Os arrays começam com []
  var nome = [];

  print('============Programa Iniciado============');
  print('\n'); //Para pular linha
  while (condicao) {
    print('Digite os nomes desejados');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      print('Sua lista de nomes $nome');
      print(
          'O tamanho da sua lista de nomes: ${nome.length} nomes adicionados');
      print('\n'); //Para pular linha
      print('============Programa Finalizado============');
      print('\n'); //Para pular linha

      condicao = false;
    } else if (text == 'remove') {
      print('Digite o nome que deseja remover: ');
      print('Sua lista de nomes $nome');
      String nomeRemove = stdin.readLineSync();
      nome.remove(nomeRemove);
      print('Nome removido');
    } else if (text == 'print') {
      print('Sua lista de nomes $nome');
    } else {
      nome.add(text);
    }
  }
}
