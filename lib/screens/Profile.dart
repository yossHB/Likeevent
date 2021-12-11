import 'package:flutter/material.dart';
import 'catalog.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.purple,
            letterSpacing: 2.0,
            fontSize: 20.0,
          ), //textstyle
        ), //TEXT
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.menu, // add custom icons also
            color: Colors.purple,
          ), //icon
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FifthRoute()),
            );
          },
        ), //gesture
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.purple,
                size: 21.0,
              ), //child
            ), //gesture
          ), //Padding
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.share_outlined,
                  color: Colors.purple,
                  size: 21.0,
                ), //child
              ) //gesture
              ), //Padding
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search_outlined,
                  color: Colors.purple,
                  size: 26.0,
                ), //child
              ) //gesture
              ), //Padding
        ], //<Widget>
      ), //AppBar

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenSize.height * 0.05),
                          child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.purple,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          'John Doe',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: screenSize.height * 0.05,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'For Today',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.purple,
                                ),
                              ),
                              Text(
                                '+5 more',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            clipBehavior: Clip.antiAlias,
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('images/loup.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            clipBehavior: Clip.antiAlias,
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('images/loup.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: screenSize.height * 0.05,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Reserved',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.purple,
                                ),
                              ),
                              Text(
                                '+5 more',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            clipBehavior: Clip.antiAlias,
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('images/loup.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            clipBehavior: Clip.antiAlias,
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('images/loup.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: screenSize.height * 0.05,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Payed',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.purple,
                                ),
                              ),
                              Text(
                                '+5 more',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            clipBehavior: Clip.antiAlias,
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('images/loup.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            clipBehavior: Clip.antiAlias,
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('images/loup.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: screenSize.height * 0.05,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Saved',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.purple,
                                ),
                              ),
                              Text(
                                '+5 more',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            clipBehavior: Clip.antiAlias,
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('images/loup.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            clipBehavior: Clip.antiAlias,
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('images/loup.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: screenSize.height * 0.05,
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple,
                Colors.deepPurple,
                Colors.purple,
                Colors.deepPurple,
              ],
            )),
          ),
        ),
      ),
    );
  }
}
