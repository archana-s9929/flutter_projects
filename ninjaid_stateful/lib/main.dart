// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;
  void add() {
    setState((){
      ninjaLevel ++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
     backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'Ninja ID Card',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
       floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: (){ 
            add();
          },
          backgroundColor: Colors.grey[700],
          child: const Icon(Icons.add),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/ninja.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Color.fromARGB(255, 79, 76, 76),
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
              SizedBox(height: 10.0,),
              Text(
              'Archana',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 30.0,),
              Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
              SizedBox(height: 10.0,),
              Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 30.0,),
              Row(children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                'archana.123@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold
                ),
                ),

          ],
        ),
        SizedBox(height: 30.0,),

          ],
      ),
    )
    );
  }
}
