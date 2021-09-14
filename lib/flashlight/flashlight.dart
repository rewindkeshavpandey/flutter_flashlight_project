import 'package:flutter/material.dart';
import 'package:flutter_flashlight/flutter_flashlight.dart';

class FlashLightPage extends StatefulWidget {
  @override
  _FlashLightPageState createState() => _FlashLightPageState();
}

class _FlashLightPageState extends State<FlashLightPage> {
bool isturn=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flashlight"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(child: ElevatedButton(
            onPressed: (){
             
             if(isturn)
             setState(() {
               isturn=false;
               Flashlight.lightOff();
             });
             else{
               
               setState(() {
                 isturn=true;

                 Flashlight.lightOn();
               });
             }
              
              
            },
             child: Text( isturn? "Turn OFF" : 'Turn ON'))),
        ),
        
      ],),
      
      
    );

    
  }
}