import 'dart:io';

loopWhile() {
  print("============Programa iniciado============");
  print('');
  bool condicao = true;
  while (condicao) {
    print("============Digite alguma frase============");
    String text = stdin.readLineSync();
    if (text == 'sair') {
      print('============Programa finalizado============');
      condicao = false;
    } else {
      print("Você digitou a palavra: $text");
    }
  }
}
