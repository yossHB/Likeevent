import 'package:flutter/material.dart';

class Film extends StatefulWidget {
  final String image;
  const Film(this.image);

  @override
  _FilmState createState() => _FilmState();
}

class _FilmState extends State<Film> {
  get image => widget.image;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PATH',
          style: TextStyle(
            color: Colors.purple,
            letterSpacing: 2.0,
            fontSize: 20.0,
          ), //textstyle
        ), //TEXT
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, true);
          },
          child: Icon(
            Icons.arrow_back, // add custom icons also
            color: Colors.purple,
          ), //icon
        ), //gesture
      ), //AppBar

      body: SingleChildScrollView(
        child: Center(
          child: Container(
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
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/images/$image'),
                      ),
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.63,
                                      child: Text(
                                        'le loup',
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 16.0,
                                        ), //textstyle
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.001),
                                    Container(
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.purple),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Reservation',
                                          style: TextStyle(
                                            color: Colors.deepPurple[50],
                                          ), //textstyle
                                        ), //text
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.63,
                                      child: Text(
                                        "dfghjklmùmlkjhgfds",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 16.0,
                                        ), //textstyle
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.001),
                                    Container(
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.purple),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          '  Payement ',
                                          style: TextStyle(
                                            color: Colors.deepPurple[50],
                                          ), 
                                        ), 
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ), //row
                ), //container
                Container(
                  height: MediaQuery.of(context).size.width * 0.63,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ), //box
                  margin: EdgeInsets.all(20),
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Text(
                      'Realisé parfbdoxomlhlfkg arfbdoxom jdfhsid dfjksgh dfjks udfghdfkx kjibfgjb dhffighdfl  jhjvdfhvlhlfkgdtrgzcxg tvcsegeparfbdoxom lhlfkgdtrgzcxgtvcsegeparfbdoxomlhlfkgdtrgzcxgtvcs egeparfbdoxomlhlfkgdtrg zcxgtvcsegeparfbdoxomlhlf kgdtrgzcxgtvc segeparfbdoxoml hlfkgdtrgzcxgtvcsegep arfbdoxomlhlfkgdtr gzcxgtvcsege  GD SFJOKPLËGTJOIDSKO QLPDFLMS.FGJN Alessandro Carloni , Jean-philippe Vine | avec Alexis Denisof , Olivia colman , Jack Dylan Graze',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.23,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ), //box
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(30.0),
                        child: Text(
                          'Monday',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 21.0,
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Text(
                          '18:30',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 21.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
    ); //scaffold
  }
}
