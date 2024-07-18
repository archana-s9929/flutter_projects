import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

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
      body: const Padding(
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
              '8',
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
                'archana.s9929@gmail.com',
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
    ));
  }
}