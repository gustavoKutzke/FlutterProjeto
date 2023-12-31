import 'package:flutter/material.dart';

class ConversaWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(horizontal:15,vertical: 5
      ),
        child:Column(children: [
          for(int i =1;i<11; i++)
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "chatPagina");
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                     borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile1.png",
                        height: 65,
                        width: 65,
                        fit: BoxFit.cover,
                    ),
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
                      SizedBox(
                        height: 8,
                      ),
                      Text("Como Você Está?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("12:15",style: TextStyle(fontSize: 15,color: Color(0xFF0FCE5E),
                        fontWeight: FontWeight.w500,
                      )
                      ),
                      SizedBox(height: 6,),
                      Container(
                        alignment: Alignment.center,
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                            color: Color(0xFF0FCE5E),
                          borderRadius:BorderRadius.circular(20),
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
          )
        ],) ,
      ),
    );
  }
}
