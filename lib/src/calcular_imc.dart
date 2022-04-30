import 'dart:io';

imc(){
  print("============Digite seu peso============");
  late String? inputPeso = stdin.readLineSync();
  late double peso = double.parse(inputPeso!);
  
  print("============Digite sua altura============");
  late String? inputAltura = stdin.readLineSync();
  late double altura = double.parse(inputAltura!);

  late double imc = peso / (altura * altura);
  print("============Seu IMC é $imc============");
  pesoIdeal(imc);

}

pesoIdeal(imc){
  if(imc < 18.5){
    print("============Você está abaixo do peso============");
  }else if(imc >= 18.5 && imc <= 24.9){
    print("============Você está no peso ideal============");
  }else if(imc >= 25 && imc <= 29.9){
    print("============Você está acima do peso============");
  }else if(imc >= 30 && imc <= 34.9){
    print("============Você está com obesidade grau I============");
  }else if(imc >= 35 && imc <= 39.9){
    print("============Você está com obesidade grau II============");
  }else if(imc >= 40){
    print("============Você está com obesidade grau III============");
  }
}