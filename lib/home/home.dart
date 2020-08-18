import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
  }
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      
      body: Container(
          width: width,
          height: height,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              XylophoneBar(
                color: Colors.purple,
                note: 0,
                height: height*.9,
                text: "C",
                ),
              SizedBox(width: 10,),

              
              XylophoneBar(
                color: Colors.deepPurple,
                note: 1,
                height: height*.85,
                text: "D",
                ),
              SizedBox(width: 10,),

              
              XylophoneBar(
                color: Colors.blue,
                note: 2,
                height: height*.8,
                text: "E",
                ),
              SizedBox(width: 10,),

              
              XylophoneBar(
                color: Colors.green,
                note: 3,
                height: height*.75,
                text: "F",
                ),
              SizedBox(width: 10,),


              
              XylophoneBar(
                color: Colors.greenAccent,
                note: 4,
                height: height*.7,
                text: "G",
                ),
              SizedBox(width: 10,),

              
              XylophoneBar(
                color: Colors.yellow,
                note: 5,
                height: height*.65,
                text: "A",
                ),
              SizedBox(width: 10,),

              
              XylophoneBar(
                color: Colors.orange,
                note: 6,
                height: height*.6,
                text: "B",
                ),
              SizedBox(width: 10,),

              
              XylophoneBar(
                color: Colors.red,
                note: 7,
                height: height*.55,
                text: "C",
                ),
              SizedBox(width: 10,),

            ],
          ),
          
      ),
    );
  }
}

final AudioCache audiocache = AudioCache();

final List sound = [
  "note1.wav",
  "note2.wav",
  "note3.wav",
  "note4.wav",
  "note5.wav",
  "note6.wav",
  "note7.wav",
  "note8.wav",

];

class XylophoneBar extends StatelessWidget {

  final double height;
  final Color color;
  final int note;
  final String text;

  XylophoneBar({this.color,this.height,this.note,this.text});


  play() async {

    audiocache.play(sound[note]);


  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          play();
          print('Playing ');
      },
          child: Container(
        height: height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(text),
      ),
    );
  }
}