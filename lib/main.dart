import 'package:disenios/src/pages/basico_page.dart';
import 'package:disenios/src/pages/botones_page.dart';
import 'package:disenios/src/pages/scroll_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    //Cambiando de colores la barra de arriba de los telefonos
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      //statusBarColor: Color.fromRGBO(52, 54, 101, 1.0),
    ));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños By JoseCima',

     initialRoute: 'botones',
     routes: {
       'basico'   : (BuildContext context) => BasicoPage(),
       'scroll'   : (BuildContext context) => ScrollPage(),
       'botones'   : (BuildContext context) => BotonesPage(),



     },
      
    );
  }
}