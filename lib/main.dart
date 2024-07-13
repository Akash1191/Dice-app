import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body:SafeArea(
          child:Column(
            children: [
              Padding(padding:EdgeInsets.fromLTRB(25, 25, 25, 25),),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/14582818/2024/6/8/ddf8646d-b33b-4cfc-8c47-b00d7a002a221717819948985-Voyage-Unisex-Black-Lens-Oval-Sunglasses-with-UV-Protected-L-1.jpg'),
                
              ),
              Text('Akash Chandra',style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'

              ),),
              Text('FLUTTER DEVELOPER',style:
                TextStyle(
                  color: Colors.deepPurple.shade50,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,

                ),),
              Card(
                margin: EdgeInsets.all(15),
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(padding:EdgeInsets.fromLTRB(25, 25, 25, 25),),
                    Icon(
                      Icons.phone,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('+91 977801191',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,

                    ),),


                  ],
                ),


              ),
              Card(
                margin: EdgeInsets.all(15),
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(padding:EdgeInsets.fromLTRB(25, 25, 25, 25),)
                    Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('akashchandra@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurple,

                      ),),


                  ],
                ),


              ),
            ],
          )
        ),
      ),
    );
  }
}


