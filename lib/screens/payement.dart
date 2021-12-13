import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_likeevent/models/movie.dart';

class Payement extends StatefulWidget {
  @override
  _PayementState createState() => _PayementState();
}

class _PayementState extends State<Payement> {
  bool? isChecked = false;
  String? _cardNumber;
  String? _cvv;
  int? _expiryMonth;
  int? _expiryYear;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PAYEMENT',
          style: TextStyle(
            color: Colors.purple,
            letterSpacing: 1.0,
            fontSize: 20.0,
          ), //textstyle
        ), //TEXT
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            /* Write listener code here */
          },
          child: Icon(
            Icons.arrow_back_outlined, // add custom icons also
            color: Colors.purple,
          ), //icon
        ), //gesture
      ), //AppBar
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height ,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: movieList12.length,
                  itemBuilder: (BuildContext context, index) =>
                      movieTile12(context, movie: movieList12[index]),
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal:MediaQuery.of(context).size.width * 0.04 ,
                      vertical:MediaQuery.of(context).size.width * 0.09
                       ),
                    padding: EdgeInsets.symmetric(
                      horizontal:MediaQuery.of(context).size.width * 0.09 ,
                      vertical:MediaQuery.of(context).size.width * 0.09,
                       ),
                   
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                       
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               Container(
                                
                                 width:MediaQuery.of(context).size.width*0.2,
                          child: Image.asset('assets/images/visa.png', width: 50, height: 50,)
                        ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.2,
                                child: Image.asset('assets/images/paypal.png' , width: 50, height: 50,),
                              )
                            ],
                        )
                          ),
                        SizedBox(height: 10,),

                        TextFormField(
                  decoration: const InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'Card number',
                  ),
                  onSaved: (String? value) => _cardNumber = value,
                ),
                
                        SizedBox(height: 20.0),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                              child: new TextFormField(
                                decoration: const InputDecoration(
                                  border: const UnderlineInputBorder(),
                                  labelText: 'CVV',
                                ),
                                onSaved: (String? value) => _cvv = value,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            new Expanded(
                              child: new TextFormField(
                                decoration: const InputDecoration(
                                  border: const UnderlineInputBorder(),
                                  labelText: 'Expiry Month',
                                ),
                                onSaved: (String? value) =>
                                    _expiryMonth = int.tryParse(value ?? ""),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            new Expanded(
                              child: new TextFormField(
                                decoration: const InputDecoration(
                                  border: const UnderlineInputBorder(),
                                  labelText: 'Expiry Year',
                                ),
                                onSaved: (String? value) =>
                                    _expiryYear = int.tryParse(value ?? ""),
                              ),
                            )
                          ],
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: const UnderlineInputBorder(),
                            labelText: 'Card Holder Name',
                          ),
                          onSaved: (String? value) => _cardNumber = value,
                        ),
                        SizedBox(height: 30.0),
                        
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                            checkColor: Colors.white,
                            overlayColor: MaterialStateProperty.all(Colors.purple),
                            fillColor: MaterialStateProperty.all(Colors.purple),
                          ),
                          Container(
                                      width: MediaQuery.of(context).size.width * 0.48,
                                      child: Text(
                                        "Save Card",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 16.0,
                                        ), //textstyle
                                      ),
                                    ),
                        ],
                      ),
                      ],
                    ),
                    ),
                         Container(
                        margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.14),
                       child:SizedBox(
                        height:  MediaQuery.of(context).size.width * 0.13,
                        width: MediaQuery.of(context).size.width * 0.75, 
                        child: ElevatedButton(
            onPressed: (){},
            child: const Text('Disabled',),
            style: ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.purple,
      onSurface: Colors.grey,
    ),
          ),
                        
                      )
                         
                       
                     
                  
                    
                   ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container movieTile12(BuildContext context, {required Movie movie}) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
      ), //box
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 1.0),
                clipBehavior: Clip.antiAlias,
                height: MediaQuery.of(context).size.width*0.5,
                width: MediaQuery.of(context).size.width*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/loup.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Le loup',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.009),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Text(
                              'DAY : 20/09/2021',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18.0,
                              ), //textstyle
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.009),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Text(
                              'PLACE : PATHE',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18.0,
                              ), //textstyle
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.009),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Text(
                              'DATE : 18:00',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18.0,
                              ), //textstyle
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.009),
                              Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Text(
                              'PRIX : 16.00DT',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18.0,
                              ), //textstyle
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
    );
  }
}
