import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: numpuzzle(),
  ));
}

class numpuzzle extends StatefulWidget {
  const numpuzzle({Key? key}) : super(key: key);

  @override
  State<numpuzzle> createState() => _numpuzzleState();
}

class _numpuzzleState extends State<numpuzzle> {

  List l = ["","","","","","","","","","","","","","","","","","","","","","","","",""];

  @override

  void initState() {
    for(int i = 0; i < 25; i++){
      int t = Random().nextInt(25);
      if(!l.contains(t)){
        l[i] = t;
      }
      else{
        i--;
      }
    }
    for(int i = 0; i < l.length; i++){
      if(l[i] == 0){
        l[i] = "";
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Puzzle Game",
        style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () {
                  if(l[1] == ""){
                    l[1] = l[0];
                    l[0] = "";
                  }
                  if(l[5] == ""){
                    l[5] = l[0];
                    l[0] = "";
                  }
                  setState(() {

                  });
                },
                child:  Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[0]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[0] == ""){
                    l[0] = l[1];
                    l[1] = "";
                  }
                  // if(l[1] == ""){
                  //   l[1] = l[0];
                  //   l[0] = "";
                  // }
                  if(l[2] == ""){
                    l[2] = l[1];
                    l[1] = "";
                  }
                  if(l[6] == ""){
                    l[6] = l[1];
                    l[1] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[1]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[1] == ""){
                    l[1] = l[2];
                    l[2] = "";
                  }
                  if(l[3] == ""){
                    l[3] = l[2];
                    l[2] = "";
                  }
                  if(l[7] == ""){
                    l[7] = l[2];
                    l[2] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[2]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[2] == ""){
                    l[2] = l[3];
                    l[3] = "";
                  }
                  if(l[4] == ""){
                    l[4] = l[3];
                    l[3] = "";
                  }
                  if(l[8] == ""){
                    l[8] = l[3];
                    l[3] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[3]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[3] == ""){
                    l[3] = l[4];
                    l[4] = "";
                  }
                  if(l[9] == ""){
                    l[9] = l[4];
                    l[4] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 5.0,bottom: 5.0),
                  child: Text("${l[4]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () {
                  if(l[0] == ""){
                    l[0] = l[5];
                    l[5] ="";
                  }
                  if(l[6] == ""){
                    l[6] = l[5];
                    l[5] = "";
                  }
                  if(l[10] == ""){
                    l[10] = l[5];
                    l[5] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[5]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[1] == ""){
                    l[1] = l[6];
                    l[6] = "";
                  }
                  if(l[5] == ""){
                    l[5] = l[6];
                    l[6] = "";
                  }
                  if(l[7] == ""){
                    l[7] = l[6];
                    l[6] = "";
                  }
                  if(l[11] == ""){
                    l[11] = l[6];
                    l[6] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[6]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[2] == ""){
                    l[2] = l[7];
                    l[7] = "";
                  }
                  if(l[6] == ""){
                    l[6] = l[7];
                    l[7] = "";
                  }
                  if(l[8] == ""){
                    l[8] = l[7];
                    l[7] = "";
                  }
                  if(l[12] == ""){
                    l[12] = l[7];
                    l[7] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[7]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[3] == ""){
                    l[3] = l[8];
                    l[8] = "";
                  }
                  if(l[7] == ""){
                    l[7] = l[8];
                    l[8] = "";
                  }
                  if(l[9] == ""){
                    l[9] = l[8];
                    l[8] = "";
                  }
                  if(l[13] == ""){
                    l[13] = l[8];
                    l[8] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[8]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[4] == ""){
                    l[4] = l[9];
                    l[9] = "";
                  }
                  if(l[8] == ""){
                    l[8] = l[9];
                    l[9] = "";
                  }
                  if(l[14] == ""){
                    l[14] = l[9];
                    l[9] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 5.0,bottom: 5.0),
                  child: Text("${l[9]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () {
                  if(l[5] == ""){
                    l[5] = l[10];
                    l[10] = "";
                  }
                  if(l[11] == ""){
                    l[11] = l[10];
                    l[10] = "";
                  }
                  if(l[15] == ""){
                    l[15] = l[10];
                    l[10] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[10]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[6] == ""){
                    l[6] = l[11];
                    l[11] = "";
                  }
                  if(l[10] == ""){
                    l[10] = l[11];
                    l[11] = "";
                  }
                  if(l[12] == ""){
                    l[12] = l[11];
                    l[11] = "";
                  }
                  if(l[16] == ""){
                    l[16] = l[11];
                    l[11] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[11]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[7] == ""){
                    l[7] = l[12];
                    l[12] = "";
                  }
                  if(l[11] == ""){
                    l[11] = l[12];
                    l[12] = "";
                  }
                  if(l[13] == ""){
                    l[13] = l[12];
                    l[12] = "";
                  }
                  if(l[17] == "") {
                    l[17] = l[12];
                    l[12] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[12]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[8] == ""){
                    l[8] = l[13];
                    l[13] = "";
                  }
                  if(l[12] == ""){
                    l[12] = l[13];
                    l[13] = "";
                  }
                  if(l[14] == ""){
                    l[14] = l[13];
                    l[13] = "";
                  }
                  if(l[18] == ""){
                    l[18] = l[13];
                    l[13] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[13]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[9] == ""){
                    l[9] = l[14];
                    l[14] = "";
                  }
                  if(l[13] == ""){
                    l[13] = l[14];
                    l[14] = "";
                  }
                  if(l[19] == ""){
                    l[19] = l[14];
                    l[14] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 5.0,bottom: 5.0),
                  child: Text("${l[14]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () {
                  if(l[10] == ""){
                    l[10] = l[15];
                    l[15] = "";
                  }
                  if(l[16] == ""){
                    l[16] = l[15];
                    l[15] = "";
                  }
                  if(l[20] == "") {
                    l[20] = l[15];
                    l[15] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[15]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[11] == ""){
                    l[11] = l[16];
                    l[16] = "";
                  }
                  if(l[15] == ""){
                    l[15] = l[16];
                    l[16] = "";
                  }
                  if(l[17] == ""){
                    l[17] = l[16];
                    l[16] = "";
                  }
                  if(l[21] == ""){
                    l[21] = l[16];
                    l[16] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[16]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[12] == ""){
                    l[12] = l[17];
                    l[17] = "";
                  }
                  if(l[16] == ""){
                    l[16] = l[17];
                    l[17] = "";
                  }
                  if(l[18] == ""){
                    l[18] = l[17];
                    l[17] = "";
                  }
                  if(l[22] == ""){
                    l[22] = l[17];
                    l[17] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[17]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[13] == ""){
                    l[13] = l[18];
                    l[18] = "";
                  }
                  if(l[17] == ""){
                    l[17] = l[18];
                    l[18] = "";
                  }
                  if(l[19] == ""){
                    l[19] = l[18];
                    l[18] = "";
                  }
                  if(l[23] == ""){
                    l[23] = l[18];
                    l[18] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[18]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[14] == ""){
                    l[14] = l[19];
                    l[19] = "";
                  }
                  if(l[18] == ""){
                    l[18] = l[19];
                    l[19] = "";
                  }
                  if(l[24] == ""){
                    l[24] = l[19];
                    l[19] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 5.0,bottom: 5.0),
                  child: Text("${l[19]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () {
                  if(l[15] == ""){
                    l[15] = l[20];
                    l[20] = "";
                  }
                  if(l[21] == ""){
                    l[21] = l[20];
                    l[20] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[20]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[16] == ""){
                    l[16] = l[21];
                    l[21] = "";
                  }
                  if(l[20] == ""){
                    l[20] = l[21];
                    l[21] = "";
                  }
                  if(l[22] == ""){
                    l[22] = l[21];
                    l[21] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[21]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[17] == ""){
                    l[17] = l[22];
                    l[22] = "";
                  }
                  if(l[21] == ""){
                    l[21] = l[22];
                    l[22] = "";
                  }
                  if(l[23] == ""){
                    l[23] = l[22];
                    l[22] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[22]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[18] == ""){
                    l[18] = l[23];
                    l[23] = "";
                  }
                  if(l[22] == ""){
                    l[22] = l[23];
                    l[23] = "";
                  }
                  if(l[24] == ""){
                    l[24] = l[23];
                    l[23] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 0.0,bottom: 5.0),
                  child: Text("${l[23]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () {
                  if(l[19] == ""){
                    l[19] = l[24];
                    l[24] = "";
                  }
                  if(l[23] == "") {
                    l[23] = l[24];
                    l[24] = "";
                  }
                  setState(() {

                  });
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,left: 5.0,right: 5.0,bottom: 5.0),
                  child: Text("${l[24]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 0.0,bottom: 5.0,left: 5.0,right: 5.0),
            child: ElevatedButton(onPressed: () {
              // List l = ["","","","","","","","","","","","","","","","","","","","","","","","",""];
              l = List.filled(25, "");
              initState();
              setState(() {

              });
            },
            child: Text("RESET",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)),
          ))
        ],
      ),
    );
  }


}
