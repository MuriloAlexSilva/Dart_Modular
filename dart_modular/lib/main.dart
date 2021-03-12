import 'src/arrays.dart';
import 'src/carrinho_compras.dart';
import 'src/loopWhile.dart';
import 'src/cadastro.dart';
import 'src/while.dart';

main(List<String> args) {
  if (args[0] == "carrinho-compras") {
    carrinhoCompras();
  } else if (args[0] == "arrays") {
    arrays();
  } else if (args[0] == "loop-while") {
    loopWhile();
  } else if (args[0] == "while") {
    whileE();
  } else if (args[0] == "cadastro") {
    cadastro(args);
  } else {
    print("Este programa não existe");
  }
}
