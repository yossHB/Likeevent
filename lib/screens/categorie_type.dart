import 'package:flutter/material.dart';


class TemplateCategorie extends StatefulWidget {
  @override
  _TemplateCategorieState createState() => _TemplateCategorieState();
}

class _TemplateCategorieState extends State<TemplateCategorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
          style: TextStyle(
            color: Colors.purple,
            letterSpacing: 2.0,
            fontSize: 25.0,
          ), //textstyle
        ), //TEXT
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            /* Write listener code here */
          },
          child: Icon(
            Icons.menu, // add custom icons also
            color: Colors.cyan,
          ), //icon
        ), //gesture
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.notifications,
                  color: Colors.cyan,
                  size: 26.0,
                ), //child
              ) //gesture
              ), //Padding  
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.share,
                  color: Colors.cyan,
                  size: 26.0,
                ), //child
              ) //gesture
              ), //Padding  
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.cyan,
                  size: 26.0,
                ), //child
              ) //gesture
              ), //Padding
        ], //<Widget>
      ), //AppBar
      body: SingleChildScrollView(
        child: Center(       
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            // ignore: prefer_const_literals_to_create_immutables
              colors: [
                Colors.purple,
                Colors.deepPurple,
                Colors.purple,
                Colors.deepPurple,
              ],
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(30),
                //margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  color: Colors.white,
                  child: Text(
                    'FILM',
                    style: TextStyle(
                      color: Colors.purple,
                      letterSpacing: 2.0,
                      fontSize: 40.0,
                    ), //textstyle
                  ), //text
                ), //container
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ), //box
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, //toul
                    crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ), //box
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/2.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                        crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Text(
                            'Le Loup et le lion',
                            style: TextStyle(
                              color: Colors.purple,
                              letterSpacing: 2.0,
                              fontSize: 40.0,
                            ), //textstyle
                          ), //text
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                            crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text(
                                '99 min',
                                style: TextStyle(
                                  color: Colors.grey,
                                  letterSpacing: 2.0,
                                  fontSize: 20.0,
                                ), //textstyle
                              ), //text
                              SizedBox(width: 260.0),
                              Container(
                                color: Colors.white,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'more details',
                                      style: TextStyle(
                                        color: Colors.purple,
                                        letterSpacing: 2.0,
                                      ), //textstyle
                                    ), //text
                                ), 
                              )
                            ],
                          ),    
                          SizedBox(height: 40.0),
                          // ignore: sized_box_for_whitespace
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                          crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                              crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Text(
                                'un film réalisé par Gilles de ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                  ), //textstyle
                                ),
                                Text(
                                'Maistre avec Molly Kunz',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                  ), //textstyle
                                ),
                                Text(
                                'Graham Greene(||).Sinopsis...',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                  ), //textstyle
                                ),
                              ],
                            ),   //text
                            SizedBox(width: 20.0),
                            Container(
                              color: Colors.white,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Reservation',
                                    style: TextStyle(
                                      color: Colors.purple,
                                      letterSpacing: 2.0,
                                    ), //textstyle
                                  ), 
                                ),  
                              ), 
                            ],
                          ),  
                        ], //widget
                      ), //Column
                    ], //widget
                  ), //row
                ), //container
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ), //box
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, //toul
                    crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ), //box
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/3.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                        crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Text(
                            'Les ETERNELS',
                            style: TextStyle(
                              color: Colors.purple,
                              letterSpacing: 2.0,
                              fontSize: 40.0,
                            ), //textstyle
                          ), //text
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                            crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text(
                                '156 min',
                                style: TextStyle(
                                  color: Colors.grey,
                                  letterSpacing: 2.0,
                                  fontSize: 20.0,
                                ), //textstyle
                              ), //text
                              SizedBox(width: 240.0),
                              Container(
                                color: Colors.white,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'more details',
                                      style: TextStyle(
                                        color: Colors.purple,
                                        letterSpacing: 2.0,
                                      ), //textstyle
                                    ), //text
                                ), 
                              )
                            ],
                          ), 
                          SizedBox(height: 20.0),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                          crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                              crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Text(
                                'Réalisé par Chloé Zhao',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                  ), //textstyle
                                ),
                                Text(
                                'Avec Hassan,Brian Tyree',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                  ), //textstyle
                                ),
                              ],
                            ),   //text
                            SizedBox(width: 60.0),
                            Container(
                              color: Colors.white,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Reservation',
                                    style: TextStyle(
                                      color: Colors.purple,
                                      letterSpacing: 2.0,
                                    ), //textstyle
                                  ), 
                                ),  
                              ), 
                            ],
                          ),
                        ], //widget
                      ), //Column
                    ], //widget
                  ), //row
                ), //container
                 Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ), //box
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, //toul
                    crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ), //box
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/4.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                        crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Text(
                            'RON DEBLOQUE',
                            style: TextStyle(
                              color: Colors.purple,
                              letterSpacing: 2.0,
                              fontSize: 40.0,
                            ), //textstyle
                          ), //text
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                            crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text(
                                '106 min',
                                style: TextStyle(
                                  color: Colors.grey,
                                  letterSpacing: 2.0,
                                  fontSize: 20.0,
                                ), //textstyle
                              ), //text
                              SizedBox(width: 240.0),
                              Container(
                                color: Colors.white,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'more details',
                                      style: TextStyle(
                                        color: Colors.purple,
                                        letterSpacing: 2.0,
                                      ), //textstyle
                                    ), //text
                                ), 
                              )
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                          crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //3ordh
                              crossAxisAlignment: CrossAxisAlignment.start, //3ordh
                      // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Text(
                                'Réalisé par Alessandro',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                  ), //textstyle
                                ),
                                Text(
                                'Carloni,Jean Philippe Vine',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                  ), //textstyle
                                ),
                                Text(
                                'Avec Alexis...',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                  ), //textstyle
                                ),
                              ],
                            ),   //text
                            SizedBox(width: 40.0),
                            Container(
                              color: Colors.white,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Reservation',
                                    style: TextStyle(
                                      color: Colors.purple,
                                      letterSpacing: 2.0,
                                    ), //textstyle
                                  ), 
                                ),  
                              ), 
                            ],
                          ),
                        ], //widget
                      ), //Column
                    ], //widget
                  ), //row
                ), //container
                ], //widget
            ),
          ), //column
        ), //container
      ), //single
      bottomNavigationBar: BottomNavigationBar(
        //ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            // ignore: deprecated_member_use
            title: Text('back'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            // ignore: deprecated_member_use
            title: Text('favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            // ignore: deprecated_member_use
            title: Text('notifications'),
          ),
        ], 
      ),
    ); //scaffold
  }
}
