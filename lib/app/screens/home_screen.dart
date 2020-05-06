import 'package:flutter/material.dart';
import 'package:mercado/app/store/data.dart';

import '../widgets/list_itens.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var total = ListaDeCompras().total;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercado: R\$ ${total.toStringAsPrecision(2)}'),
      ),
      body: ListItens(),
    );
  }
}
