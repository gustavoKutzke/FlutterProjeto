import 'package:flutter/material.dart';


class StatusWidget extends StatelessWidget{

  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey,width: 3),
                    ) ,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("images/profile1.png",
                      height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Meu Status",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 8,),
                      Text("Hoje, 12:30",
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
                  Container(
                    child: Icon(
                      Icons.more_vert,
                      color: Color(0xFF075E55),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Atualizações Recentes",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6),

                ),
              ),
            ),
            for(int i =1;i<3;i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.green,width: 3),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("images/profile1.png",
                      height: 55,
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                      padding:EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gustavo",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            "Hoje 18:00",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                            ),
                          ),
                        ],
                      ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Visto",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6),

                ),
              ),
            ),
            for(int i =1;i<3;i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey,width: 3),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("images/profile1.png",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fernando",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            "Ontem 9:00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }


}