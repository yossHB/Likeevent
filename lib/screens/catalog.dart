import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Main_page.dart';
import 'ProfilePage.dart';
import 'facebook.dart';
import 'google.dart';
import 'home.dart';

class FifthRoute extends StatefulWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  _FifthRouteState createState() => _FifthRouteState();
}

class _FifthRouteState extends State<FifthRoute> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenSize.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: screenSize.width * 0.25,
                color: Colors.deepPurple,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenSize.height * 0.3),
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: Colors.purple,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()),
                            );
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: screenSize.width * 0.2),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Film',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Formation',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Theatre',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Action',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Adventure',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Casino',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Restaurents',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        'Bars',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Music',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Sport',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Cartes',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Cafe',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Text(
                        ' Offers',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (int index) async {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
              break;
            case 1:
              try{
                final provider =
                  Provider.of<GoogleSingInProvider>(context, listen: false);
                  provider.logOut();
                Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => WelcomScreen()));
              } on Exception {
                final provider =
                  Provider.of<FacebookSignInController>(context, listen: false);
                  provider.logOut();
                Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => WelcomScreen()));
              }
              finally {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => WelcomScreen()));
              }
              break;
              
          }
        },
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'John Doe',
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.logout,
              color: Colors.purple,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
