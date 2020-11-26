import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bangtan.dart';
import 'profil.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _HomePage(),
      routes: <String, WidgetBuilder>{
        '/profile': (BuildContext context) => MyProfil(),
      }));
}

class _HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50),
            child: Image.network(
              'https://i.pinimg.com/originals/ec/96/f7/ec96f789e96c46654c35f01cab37ff62.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'BANGTAN SONYEONDAN',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF219653)),
                ),
                contentPadding: EdgeInsets.only(top: 10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4F4F4F),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF219653)),
                ),
                contentPadding: EdgeInsets.only(top: 20),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.visibility_off, color: Color(0xFF4F4F4F)),
                ),
              ),
            ),
          ),
          SizedBox(height: 32),
          Container(
            decoration: BoxDecoration(),
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => Bts());
                Navigator.push(context, route);
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
