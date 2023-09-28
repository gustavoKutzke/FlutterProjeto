
import 'package:flutter/material.dart';

import '../Widgets/ChamadaWidget.dart';
import '../Widgets/ConversaWidget.dart';
import '../Widgets/StatusWidget.dart';

class HomePage extends StatelessWidget{
  Widget build (BuildContext context){
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child:Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "ConversasApp",
              style: TextStyle(fontSize: 21),
            ),
          ),
          actions: [
            Padding(padding: EdgeInsets.only(top: 12,right: 15),
            child: Icon(
              Icons.search,
              size: 28,
            ),
            ),
            PopupMenuButton(
              onSelected: (selected) {
                if (selected == 4) {

                  Navigator.pushNamed(context, "configuracaoPagina");

                }
              },
              elevation: 10,
              padding: EdgeInsets.symmetric(vertical: 20),
              iconSize: 28,
              itemBuilder: (context) =>[
                PopupMenuItem(
                   value: 1,
                  child: Text("Novo Grupo",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Nova Conversa",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Disposotivos Conectados",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text("Configurações",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(children: [
        Container(
          color: Color(0xFF075E55),
          child: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            tabs: [
              Container(
                width: 24,
                child:Tab(
                icon: Icon(Icons.camera_alt),
                ),
              ),
              Container(
                width: 90,
                child: Tab(
                  child: Row(
                    children: [
                      Text("Conversas"),
                      SizedBox(width: 8,

                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 22,
                          width: 22,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Text("10",style: TextStyle(color: Color(0xFF075E55),fontSize: 13),),

                      )
                    ],
                  ),
                ),
              ),
              Container(width:85
                ,child: Tab(
                  child: Text("Status"),
                ),
              ),
              Container(
                width:85 ,
                child: Tab(
                  child: Text("Chamadas"),
                ),
              ),
            ],
          ),
        ),
        Flexible(flex: 1,
            child: TabBarView(
          children: [
            Container(color:Colors.black),
            ConversaWidget(),
            StatusWidget(),
            ChamadaWidget(),
          ],
        ))
      ],),
    ),
    );
  }

}