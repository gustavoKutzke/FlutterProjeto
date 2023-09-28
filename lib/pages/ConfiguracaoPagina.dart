import 'package:flutter/material.dart';

class ConfiguracaoPagina extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Configuração",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("images/profile1.png",height: 65,width: 65,),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gustavo",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 8,),
                        Text("Descrição do Perfil",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45,
                        ),
                        ),
                      ],
                    ),

                    )

                  ],
                ),
              ),

              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Conta",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Segurança .Trocar o Numero",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  "Conversas",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Temas , Papel de Parede e Historico de Conversa",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notificações",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Mensagens,Ligações e Grupo",
                  style: TextStyle(fontSize: 15),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}