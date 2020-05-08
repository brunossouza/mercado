import 'package:flutter/material.dart';
import 'package:mercado/app/store/data_mercados.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final mercados = DataMercados().mercados;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercado'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: () {}),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10.0),
                labelText: 'Pesquisar',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  itemCount: mercados.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.7 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    final mercado = mercados[index];
                    return GridTile(
                      footer: GridTileBar(
                        backgroundColor: Colors.black45,
                        title: Text(
                          mercado.nome,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDEE12F),
                          ),
                        ),
                        trailing: IconButton(
                            icon: Icon(
                              Icons.star_border,
                              color: Color(0xFFDEE12F),
                            ),
                            onPressed: () {}),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4.0,
                            color: Colors.grey[500],
                          ),
                        ),
                        child: FadeInImage(
                          placeholder:
                              AssetImage('assets/placeholder/mercado.png'),
                          image: NetworkImage(mercado.thumbnail),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
