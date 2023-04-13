import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'view/screens/home_screen.dart';
import 'shop_code.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('Assets/images/logo.png'),
            ),
            SizedBox(
              width: 30,
            ),
            Text('username')
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Assets/images/taj.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPage()),
                  );
                },
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue,
                  child: Text('Day 7'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: Text('Day 4'),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: Text('Day 5'),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: Text('Day 6'),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: Text('Day 1'),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: Text('Day 2'),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: Text('Day 3'),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        items: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Icon(Icons.route, size: 30)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => shop()),
              );
            },
            child: Icon(Icons.store, size: 30),
          )
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
