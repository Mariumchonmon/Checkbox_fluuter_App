import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(home: MyApp()));
class MyApp extends StatefulWidget{
//ctrl+o
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool orangeVal = false;
  bool lemonVal = false;
  bool appleVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Checkbox'), centerTitle: true,),
    body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget> [
      Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [


         //orange checkbox
        Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text("Orange"),
            Checkbox(value: orangeVal,onChanged: (value){
              setState(() {
                orangeVal = value!;
              });
            },),

          ],),

        //Lemon checkbox
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("Lemon"),
            Checkbox(value: lemonVal,onChanged: (value){
              setState(() {
                lemonVal = value!;
              });
            },),

          ],),

        // Apple checkbox
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("Apple"),
            Checkbox(value: appleVal,onChanged: (value){
              setState(() {
                appleVal = value!;
              });
            },),

          ],),

],),
      Text("Orange: $orangeVal\nLemon: $lemonVal\nApple: $appleVal")

    ],),
    ),
    );

  }
}

