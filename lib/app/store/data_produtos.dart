import '../models/produto.dart';

class DataProdutos {
  final List<Produto> _produtos = [
    Produto(nome: 'Arroz', quantidade: 5, tipo: TipoDeunidade.KG),
    Produto(nome: 'Feijão', quantidade: 3, tipo: TipoDeunidade.KG),
    Produto(nome: 'Farinha de Trigo', quantidade: 1, tipo: TipoDeunidade.KG),
    Produto(nome: 'Macarrão', quantidade: 2, tipo: TipoDeunidade.KG),
    Produto(nome: 'Açucar', quantidade: 1, tipo: TipoDeunidade.KG),
    Produto(nome: 'Massa de Tomate', quantidade: 1),
    Produto(nome: 'Caixa de Leite', quantidade: 2),
    Produto(nome: 'Manteiga', quantidade: 2),
    Produto(nome: 'Pão', quantidade: 20),
  ];

  List<Produto> get produtos {
    return [..._produtos];
  }

  double get total {
    double total = 0.0;
    for (var produto in _produtos) {
      total = total + produto.preco;
    }
    return total;
  }
}
