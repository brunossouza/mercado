import '../models/item.dart';

class ListaDeCompras {
  final List<Item> _itens = [
    Item(nome: 'Arroz', quantidade: 5, tipo: TipoDeunidade.KG),
    Item(nome: 'Feijão', quantidade: 3, tipo: TipoDeunidade.KG),
    Item(nome: 'Farinha de Trigo', quantidade: 1, tipo: TipoDeunidade.KG),
    Item(nome: 'Macarrão', quantidade: 2, tipo: TipoDeunidade.KG),
    Item(nome: 'Açucar', quantidade: 1, tipo: TipoDeunidade.KG),
    Item(nome: 'Massa de Tomate', quantidade: 1),
    Item(nome: 'Caixa de Leite', quantidade: 2),
    Item(nome: 'Manteiga', quantidade: 2),
    Item(nome: 'Pão', quantidade: 20),
  ];

  List<Item> get itens {
    return [..._itens];
  }

  double get total {
    double total = 0.0;
    for (var item in itens) {
      total = total + item.preco;
    }
    return total;
  }
}
