import 'package:flutter/material.dart';
import 'package:flutter_application_likeevent/screens/valide.dart';
import '../models/event_model.dart';
import 'catalog.dart';
import 'film_template.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    int _value = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
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
            height: screenSize.height*eventList.length/3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.width* 0.01,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal:screenSize.width*0.02),
                          margin: EdgeInsets.all(screenSize.width*0.01),
                          color: Colors.white,
                          child: DropdownButton(
                            dropdownColor: Colors.white,
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Categorie",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: 1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal:screenSize.width*0.02),
                          margin: EdgeInsets.all(screenSize.width*0.01),
                          color: Colors.white,
                          child: DropdownButton(
                            dropdownColor: Colors.white,
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Latest",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: 1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(screenSize.width*0.01),
                          padding: EdgeInsets.symmetric(horizontal:screenSize.width*0.02),
                          color: Colors.white,
                          child: DropdownButton(
                            dropdownColor: Colors.white,
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Today",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: 1,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal:screenSize.width*0.02),
                          margin: EdgeInsets.all(screenSize.width*0.01),
                          color: Colors.white,
                          child: DropdownButton(
                            dropdownColor: Colors.white,
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Favories",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: 1,
                              ),
                            ],
                          ),
                        ),
                      ]
                    ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: eventList.length,
                  itemBuilder: (BuildContext context, index) =>
                    eventTile(context, event: eventList[index]),
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

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          switch (index) {
      case 0:
        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
        break;
      case 1:
        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Valide()),
                      );
        break;
    }
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        selectedItemColor: Colors.purple,
      ),
    );
  }
  Container eventTile(BuildContext context, {required Event event}) {
    var screenSize = MediaQuery.of(context).size;
    var images=event.image;
   
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(screenSize.width*0.04),
            child: Text(
              event.title,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                  for ( var image in images )
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Film(image)),
                      );
                    },
                    child: new Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
                  clipBehavior: Clip.antiAlias,
                  height: screenSize.height * 0.2,
                  width: screenSize.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/$image'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),),
                ]
            ),
          ),
        ],
      ),
    );
  }

}
