import 'package:flutter/cupertino.dart';

enum TipoDeunidade { UN, KG }

class Item {
  String thumbnail;
  String nome;
  double quantidade;
  double preco;
  TipoDeunidade tipo;

  Item({
    @required this.nome,
    @required this.quantidade,
    this.thumbnail = 'assets/icons/icon.png',
    this.preco = 0.0,
    this.tipo = TipoDeunidade.UN,
  });
}

// this.thumbnail = 'https://upload.wikimedia.org/wikipedia/commons/3/39/MERCADO.png',
