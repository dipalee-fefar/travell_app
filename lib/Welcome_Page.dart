import 'package:flutter/material.dart';
import 'package:travell_app/Login_Page.dart';
import 'package:travell_app/Second_Page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.asset(
                'assets/welcome2.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          // Foreground content
          Container(
            decoration: BoxDecoration(color: Colors.white,boxShadow:<BoxShadow>[BoxShadow(color: Colors.white,blurRadius: 50,spreadRadius: 50)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Explore Unforgettable Places Around The World',
                      style: TextStyle(
                        color: Colors.black,
                        backgroundColor: Colors.white38,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Text(
                      'Take a break from the stress of everyday life.plan trips and explore your favorite destinations',
                      style: TextStyle(
                        color: Colors.grey,
                        backgroundColor: Colors.white38,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 500,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SecondPage()));
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white,),
                      ),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
