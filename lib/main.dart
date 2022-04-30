import 'dart:io';

import 'package:dart_aplication_simple/src/calcular_idade.dart';
import 'package:dart_aplication_simple/src/calcular_imc.dart';
import 'package:dart_aplication_simple/src/carrinho.dart';

main() {
  opcao();  
}

opcao(){
  print("============Bem vindo ao Dart Aplication Simple============");
  print("=========Que programa deseja executar?=========");
  print("""1 - Calcular idade
  2 - Calcular IMC
  3 - Carrinho de compras""");
  late String? input = stdin.readLineSync();
  late int opcao = int.parse(input!);
  switch(opcao){
    case 1:
      idade();
      break;
    case 2:
      imc();
      break;
    case 3:
      carrinho();
      break;
    default:
      print("============Opção inválida============");
  }
}