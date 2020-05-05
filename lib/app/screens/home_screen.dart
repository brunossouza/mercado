import 'package:flutter/material.dart';
import 'package:mercado/app/models/item.dart';
import 'package:mercado/app/store/data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var itens = ListaDeCompras().itens;
  var total = ListaDeCompras().total;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercado: R\$ ${total.toStringAsPrecision(2)}'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: itens.length,
          itemBuilder: (cxt, ind) {
            return Dismissible(
              background: Container(color: Colors.blue),
              secondaryBackground: Container(color: Colors.red),
              key: UniqueKey(),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  print('esquerda direita');
                } else if (direction == DismissDirection.endToStart) {
                  print('direita esquerda');
                } else {
                  print(direction);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  leading: Image.network(itens[ind].thumbnail),
                  title: Text(
                    itens[ind].nome,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    '${itens[ind].quantidade.toStringAsFixed(2)} ${itens[ind].tipo == TipoDeunidade.KG ? 'kg' : 'unidade(s)'}',
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
