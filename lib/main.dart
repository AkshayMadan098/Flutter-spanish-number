import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

          void playsounds(text) {
            switch (text) {
              case "One":
                player.play("one.wav");
                break;
                case "Two":
                player.play("two.wav");
                break;
                case "Three":
                player.play("three.wav");
                break;
                case "Four":
                player.play("four.wav");
                break;
                case "Five":
                player.play("five.wav");
                break;
                case "Six":
                player.play("six.wav");
                break;
                case "Seven":
                player.play("seven.wav");
                break;
                case "Eight":
                player.play("eight.wav");
                break;
                case "Nine":
                player.play("nine.wav");
                break;
                case "Ten":
                player.play("ten.wav");
                break;
              default:
            }
          }
  static AudioCache player=AudioCache();
  Widget custombutton(text,color){
    return MaterialButton(
      padding: EdgeInsets.all(20),
      minWidth: 180,
      height: 90,
      color: color, 
      child: Text(text,style: TextStyle(fontSize: 20,color: Colors.white),),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: (){
        playsounds(text);
              },);
              
          }
          @override
          Widget build(BuildContext context) {
            return MaterialApp(
              title: "Spanish No",
              theme: ThemeData(primarySwatch: Colors.blue),
            
             home :Scaffold(
               appBar: AppBar(
                 title: Text("Spanish no"),
               ),
               body: Column(
                 children: <Widget>[
                      Image(
                   image: AssetImage("assets/lco.png"),
                   height: 220,
                   width: 220,),
        
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       custombutton("One", Colors.blue),
                       Padding(padding: EdgeInsets.all(10),),
                       custombutton("Two", Colors.red)
                     ],
                   ),
                      Padding(padding: EdgeInsets.all(4),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       custombutton("Three", Colors.pink),
                          Padding(padding: EdgeInsets.all(10),),
                       custombutton("Four", Colors.orange)
                     ],
                   ),
                    Padding(padding: EdgeInsets.all(4),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       custombutton("Five", Colors.amber),
                          Padding(padding: EdgeInsets.all(10),),
                       custombutton("Six", Colors.cyan)
                     ],
                   ),
                    Padding(padding: EdgeInsets.all(4),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       custombutton("Seven", Colors.pink),
                          Padding(padding: EdgeInsets.all(10),),
                       custombutton("Eight", Colors.purple)
                     ],
                   ),
                    Padding(padding: EdgeInsets.all(4),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       custombutton("Nine", Colors.deepPurpleAccent),
                          Padding(padding: EdgeInsets.all(10),),
                       custombutton("Ten", Colors.indigoAccent)
                     ],
                   ),
                 ],
              
              
               ),
             ) 
            );
          }
        
}