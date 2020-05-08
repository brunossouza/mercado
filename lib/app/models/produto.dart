import 'package:flutter/cupertino.dart';

enum TipoDeunidade { UN, KG, PCT }

class Produto {
  final String id;
  final String thumbnail;
  final String nome;
  final double quantidade;
  final double preco;
  final TipoDeunidade tipo;

  Produto({
    @required this.nome,
    @required this.quantidade,
    this.id,
    this.thumbnail = 'assets/icons/icon.png',
    this.preco = 0.0,
    this.tipo = TipoDeunidade.UN,
  });

  double get precoTotal {
    return preco * quantidade;
  }
}

// this.thumbnail = 'https://upload.wikimedia.org/wikipedia/commons/3/39/MERCADO.png',
