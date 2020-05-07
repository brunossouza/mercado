import 'package:flutter/material.dart';

import '../store/data.dart';
import '../models/Produto.dart';

class ListProdutos extends StatefulWidget {
  @override
  _ListProdutosState createState() => _ListProdutosState();
}

class _ListProdutosState extends State<ListProdutos> {
  var produtos = ListaDeCompras().produtos;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 85.0,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 4.0,
                color: Colors.grey[500],
              ),
            ),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/icons/caixa.png',
                  width: 60,
                ),
              ),
              Text(
                'Total do carrinho:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'R\$ 10.525,32',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: produtos.length,
            itemBuilder: (cxt, ind) {
              return Dismissible(
                background: Container(
                  color: Color(0xFF35C632),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.done_outline,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                secondaryBackground: Container(
                  color: Color(0xFFD92929),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.clear,
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
                  } else if (direction == DismissDirection.endToStart) {
                    print('direita esquerda');
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          children: <Widget>[
                            Icon(
                              Icons.clear,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(produtos[ind].nome)
                          ],
                        ),
                        duration: Duration(seconds: 3),
                        action: SnackBarAction(
                            label: "Desfazer",
                            textColor: Color(0xFFDEE12F),
                            onPressed: () {}),
                      ),
                    );
                  } else {
                    print(direction);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 2.0,
                        color: Colors.grey[400],
                      ),
                      bottom: BorderSide(
                        width: 2.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    leading: Image.asset(produtos[ind].thumbnail),
                    title: Text(
                      produtos[ind].nome,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Text(
                      '${produtos[ind].quantidade.toStringAsFixed(2)} ${produtos[ind].tipo == TipoDeunidade.KG ? 'kg' : 'unidade(s)'}',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
