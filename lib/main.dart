import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo),
      home: Home(),  
    );
  }
}

 class Home extends StatelessWidget{
   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         leading: Builder(
           builder: (BuildContext context){
             return IconButton(
               icon: const Icon(Icons.menu),
               onPressed: () { Scaffold.of(context).openDrawer();},
               tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
             );
           }),
         backgroundColor: Colors.blue,
         title: Text('Hello Appbar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
         actions: <Widget>[IconButton(
           icon: const Icon(Icons.search_outlined),
           tooltip: 'Open Search',
           onPressed: () {

           },
         ),
         IconButton(
           icon: const Icon(Icons.more_vert_outlined),
           tooltip: 'Open More',
           alignment: Alignment.centerRight,
           onPressed: (){

           },
         ),
         ],
         actionsIconTheme: IconThemeData(color: Colors.black),
       ),
     );
   }
 }