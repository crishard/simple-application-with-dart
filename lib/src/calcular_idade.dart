import 'dart:io';
idade(){
  print("============Digite o seu ano de nascimento============");
  late String? inputAnoNascimento = stdin.readLineSync();
  late int anoNascimento = int.parse(inputAnoNascimento!);
  if(anoNascimento != 0){
    print("============Digite o ano atual============");
  }
  late String? inputAnoAtual = stdin.readLineSync();
  late int anoAtual = int.parse(inputAnoAtual!);

  late int idade = anoAtual - anoNascimento;
  print("============Sua idade é $idade anos============");
}