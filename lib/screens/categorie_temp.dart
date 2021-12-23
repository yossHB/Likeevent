import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_likeevent/models/movie.dart';

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
              ) //gesture
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
            //height: MediaQuery.of(context).size.height,
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
                //film container
                Container(
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  color: Colors.white,
                  child: Text(
                    'FILM',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 26.0,
                    ), //textstyle
                  ), //text
                ), //container
                //boxs
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: movieList.length,
                  itemBuilder: (BuildContext context, index) =>
                      movieTile(context, movie: movieList[index]),
                ),
              ],
            ),
          ),
        ),
      ), //single
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        selectedItemColor: Colors.purple,
      ),
    );
  }

  Container movieTile(BuildContext context, {required Movie movie}) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ), //box
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      child: Row(
        //SizedBox(width: MediaQuery.of(context).size.width*0.02),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
                clipBehavior: Clip.antiAlias,
                height: 150,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/${movie.image}'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: Text(
                              '${movie.time} min',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ), //textstyle
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.001),
                          Container(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.deepPurple[50]),
                              ),
                              onPressed: () {},
                              child: Text(
                                'more details',
                                style: TextStyle(
                                  color: Colors.purple,
                                ), //textstyle
                              ), //text
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: Text(
                              movie.description,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ), //textstyle
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.001),
                          Container(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.deepPurple[50]),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Reservation',
                                style: TextStyle(
                                  color: Colors.purple,
                                ), //textstyle
                              ), //text
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
