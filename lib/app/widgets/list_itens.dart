import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../store/data.dart';
import '../models/item.dart';

class ListItens extends StatefulWidget {
  @override
  _ListItensState createState() => _ListItensState();
}

class _ListItensState extends State<ListItens> {
  var itens = ListaDeCompras().itens;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (cxt, ind) {
          return Dismissible(
            background: Container(
              color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.solidCheckCircle,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            key: UniqueKey(),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                print('esquerda direita');
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('salvo'),
                    duration: Duration(seconds: 3),
                    action: SnackBarAction(label: "Desfazer", onPressed: () {}),
                  ),
                );
              } else if (direction == DismissDirection.endToStart) {
                print('direita esquerda');
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('deletado'),
                    duration: Duration(seconds: 3),
                  ),
                );
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
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                leading: Image.asset(itens[ind].thumbnail),
                title: Text(
                  itens[ind].nome,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  '${itens[ind].quantidade.toStringAsFixed(2)} ${itens[ind].tipo == TipoDeunidade.KG ? 'kg' : 'unidade(s)'}',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
