import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

cadastro(List<String> args) {
  print('============Programa Iniciado============');
  bool condicao = true;
  while (condicao) {
    print('Digite um comando');
    String comando = stdin.readLineSync();
    if (comando == 'sair') {
      print('======Programa Finalizado======');
      print("\x1B[2J\x1B[0;0H"); //Codigo para limpar a tela do cmd
      condicao = false;
    } else if (comando == 'cadastrar') {
      cadastrar();
    } else if (comando == 'imprimir') {
      print(cadastros);
    } else {
      print('Esse comando não existe');
    }
  }
}

cadastrar() {
//Os maps são expressos em {}
  Map<String, dynamic> cadastro = {};
  print('Digite o seu nome');
  cadastro['nome'] = stdin.readLineSync();
  print('Digite o seu idade');
  cadastro['idade'] = stdin.readLineSync();
  print('Digite o seu cidade');
  cadastro['cidade'] = stdin.readLineSync();
  print('Digite o seu estado');
  cadastro['estado'] = stdin.readLineSync();
  cadastros.add(cadastro);
  print('Cadastro Concluido');
}
