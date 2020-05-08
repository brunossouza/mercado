import '../models/mercado.dart';

class DataMercados {
  final List<Mercado> _mercados = [
    Mercado(
        nome: 'Bramil',
        thumbnail:
            'https://www.anuncioemfoco.com.br/imagens/anuncios/220516061657/br.jpg'),
    Mercado(
        nome: 'Serve Bem',
        thumbnail:
            'https://lh3.googleusercontent.com/proxy/Qi6SmKwilEfJJmyIFytry1ehSaU_a5bEVYbsENtPRKCwiBZWbS9fhz4TlOXMT9QkD8ywULCU5_o9ExiSn_w7PvjiM5xdtKBCWY0FRKKrQH37g9M'),
    Mercado(
        nome: 'Macro',
        thumbnail:
            'https://static.tingelmar.com/app/uy/negocios/icono/big/i24192-1182271812.jpg'),
    Mercado(
        nome: 'Venturão',
        thumbnail:
            'https://pbs.twimg.com/profile_images/832560386738106369/CunqpXYM_400x400.jpg'),
    Mercado(
        nome: 'Carrefour',
        thumbnail:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Carrefour_logo.svg/1200px-Carrefour_logo.svg.png'),
  ];

  List<Mercado> get mercados {
    return [..._mercados];
  }
}
