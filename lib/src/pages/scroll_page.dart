import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      ),

    );
  }

  Widget _pagina1(){
  return Stack(
    children: <Widget>[
      _colorFondo(),
      _imagenFondo(),
      _crearTextos(),
    ],
  );
  }


  Widget _crearTextos(){

    final _estiloTexto = TextStyle(color: Colors.pink, fontSize: 50.0);
   return SafeArea(
     child: Column(
       children: <Widget>[
   
         SizedBox(height: 20.0),
         Text('11°', style: _estiloTexto),
         Text('Miércoles', style: _estiloTexto),
         Text('José Cima', style:TextStyle(color: Colors.white, fontSize: 30.0)),

         Expanded( child: Container() ),//Expandiendo la flecha al bottom
         Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.pink),
   
   
       ],
     ),
   );
  }


Widget _imagenFondo(){
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Image(
      image: AssetImage('assets/scroll.png'),
      fit: BoxFit.cover,

    ),
  );
}

Widget _colorFondo(){
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108, 192, 2180, 1.0),

  );
}

  



  Widget _pagina2(){
  return Container(
    width: double.infinity,
    height: double.infinity,
     color: Color.fromRGBO(108, 192, 2180, 1.0),
     child: Center(
       child: RaisedButton(
         shape: StadiumBorder(),
         color: Colors.pink,
         textColor: Colors.white,
         child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
             child: Text('Bienvenidos - JoseCima', style: TextStyle(fontSize: 20.0)),
         ),
         onPressed: (){},
       ),
     ),
  );
  }
}