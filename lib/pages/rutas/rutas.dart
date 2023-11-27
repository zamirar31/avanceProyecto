import 'package:flutter/material.dart';
//import 'package:flutter_proyecto_producto/pages/agregar_page.dart';
//import 'package:flutter_proyecto_producto/pages/dashboard_page.dart';
import 'package:flutter_proyecto_producto/pages/home_page.dart';
import 'package:flutter_proyecto_producto/pages/lista_page.dart';
import 'package:flutter_proyecto_producto/pages/producto_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/home': (context) => HomePages(),
       // '/dashboard': (context) => Dashboard(),
        '/lista': (context) => Lista(),
        '/producto': (context) => Product(),
  
  };
}