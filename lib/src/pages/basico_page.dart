import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {


  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
        ],
      )
    );
  }

  Widget _crearImagen (){
    return Image(
              image: NetworkImage('https://live.staticflickr.com/65535/49168363698_337ea6289c_c.jpg'),
              
            );
  }

  Widget _crearTitulo(){
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                          Text('Roses are Rosies', style: estiloTitulo),
                          SizedBox(height: 7.0),
                          Text('Trabajo de Jose Guillermo Cima Tamay', style: estiloSubtitulo)
                      ],
                    ),
                  ),

                  Icon(Icons.star, color: Colors.pink, size: 30.0), 
                  Text('41', style: TextStyle(fontSize: 20.0)),


                ],
              ),
            );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
  return Column(
          children: <Widget>[
            Icon(icon, color: Colors.pink, size: 40.0),
            SizedBox(height: 5.0),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.lightBlue),),
          ],
        );
  }

  Widget _crearTexto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Mollit dolor ex ex aliqua excepteur. Ut occaecat et laborum ex ea dolor tempor tempor. Consectetur culpa laboris proident magna in aute. Elit quis est aliquip aliquip do esse ea.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}