import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/image/chango.jpeg'),
              ),
              Text(
                'Jorge Calderon',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cinzel',
                ),
              ),
              Text("Developer"),
              Divider(
                height: 40.0,
                color: Colors.black,
                thickness: 2.0,
              ),
              Container(
                color: Colors.grey,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '(646) 240 0242',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white),
              Container(
                color: Colors.grey,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'al19760591@ite.edu.mx',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
