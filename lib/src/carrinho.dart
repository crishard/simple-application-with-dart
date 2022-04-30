import 'dart:io';

carrinho(){
    print("""===========Comandos===========
    1 - Ao digitar qualquer nome, você poderá adicionar um produto ao carrinho.)
    2 - Ao digitar 'listar', você poderá listar todos os produtos que estão no carrinho.
    3 - Ao digitar 'sair', você poderá sair do programa.
    4 - Ao digitar 'limpar', você poderá limpar o carrinho.
    5 - Ao digitar 'remover', você poderá remover um produto do carrinho.
    """);

  Map<String, dynamic> produtos = {};
  bool condicao = true;
  while(condicao){
    print("============Realize uma ação: ============");
    late String? inputNome = stdin.readLineSync();
    late String nome = inputNome!;
    if(nome != "" && nome != "listar" && nome != "sair" && nome != "limpar" && nome != "remover" && nome != "total"){
      print("============Digite o preço do produto: ============");
    }
    late String? inputPreco = stdin.readLineSync();
    late double preco = double.parse(inputPreco!);
    if(nome == "sair"){
      condicao = false;
      print("============Saindo do programa ============");
      break;
    } else if(nome == "listar"){
      imprimeCarrinho(produtos);
      continue;
    } else if(nome == "remover"){
      removeProduto(produtos);
      continue;
    } else if(nome == "limpar"){
      limparCarrinho(produtos);
      continue;
    }
    produtos.addAll({nome: preco});
  }

}
//imprimindo o carrinho
imprimeCarrinho(produtos){
  print("============Carrinho============");
  for(int i = 0; i <produtos.length; i++){
    print("${produtos.keys.elementAt(i)}: ${produtos.values.elementAt(i)} reais");
  }
}
//removendo produto
removeProduto(produtos){
  print("============Qual produto deseja remover? ============");
  imprimeCarrinho(produtos);
  print("============Digite o nome do produto: ============");
  late String? inputNome = stdin.readLineSync();
  late String nomeRemover = inputNome!;

  produtos.remove(nomeRemover);
  print("============Produto removido com sucesso============");
}

limparCarrinho(produtos){
  produtos.clear();
  print("============Carrinho limpo============");
}