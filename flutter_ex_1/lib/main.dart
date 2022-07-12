import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: '위젯 연습',
        home: myTheme(),
        theme: ThemeData(primaryColor: Colors.white));

  }
}

class myTheme extends StatelessWidget {
  const myTheme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: AspectRatio(
                aspectRatio: 2 / 1,
             
              
                    child: Image.asset("assets/images/dd.png", fit: BoxFit.cover),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, right: 60),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Oeschinen Lake Campground", style: TextStyle(fontSize: 15, color: Colors.black)),
                        ) ,
                       Text("Kandersteg, Switzeriand", style: TextStyle(fontSize:15, color: Colors.grey))],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Icon(CupertinoIcons.star_fill, color: Colors.red, size: 20,),
                      Text("45", style: TextStyle(fontSize:15, color: Colors.grey))
                    ]),
                  ),
                )
              ],
            )
          ,
          Padding(
            padding: const EdgeInsets.all(40),
            child: Row(
              
              children: [
                Expanded(
                  child: Column(
                    children: [Icon(CupertinoIcons.phone_fill, color: Colors.lightBlue[400], size: 20,),
                    SizedBox(height: 5),
                     Text("CALL", style: TextStyle(fontSize:10, color: Colors.lightBlue[400]))],
                  ),
                ),
               Expanded(
                 child: Column(
                    children: [Icon(CupertinoIcons.paperplane_fill, color: Colors.lightBlue[400], size: 20,),
                     SizedBox(height: 5),
                     Text("ROUTE", style: TextStyle(fontSize:10, color: Colors.lightBlue[400]))],
                  ),
               ),
              Expanded(
                child: Column(
                    children: [Icon(CupertinoIcons.share, color: Colors.lightBlue[400], size: 20,),
                     SizedBox(height: 5),
                     Text("SHARE", style: TextStyle(fontSize:10, color: Colors.lightBlue[400]))],
                  ),
              )
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: Container(child: Text("Lake Oeschinen lies at the foot of the Violmilsalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine lakes. Agondola ride from kandersteg, followed by a halfLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
              , style: TextStyle(fontSize:12, color: Colors.black45)),
              )),
          )
          
          ]),
        ),
      ),
    );
  }
}
