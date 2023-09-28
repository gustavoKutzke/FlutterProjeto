import 'package:flutter/material.dart';
import 'package:projeto/pages/ChatPagina.dart';
import 'package:projeto/pages/ConfiguracaoPagina.dart';
import 'package:projeto/pages/HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075e55),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),

        ),
      ),
      routes:{
        "/" : (context) => HomePage(),
        "configuracaoPagina" : (context) => ConfiguracaoPagina(),
        "chatPagina" : (context) => ChatPagina(),
      },
    );
  }
}