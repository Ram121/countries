import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:countries/country.dart';

class CountryDetails extends StatefulWidget {
  final Country country;
  const CountryDetails({Key key, this.country}) : super (key: key);
  @override
  _CountryDetailsState createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.country.name),
      ),
      body: Container(
        height: screenHeight*0.8,
        alignment: Alignment.topCenter,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                        widget.country.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage(widget.country.mapPath),
                  height: screenHeight*0.5,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: screenHeight*0.6, left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Continent - '+ widget.country.continent),
                  SizedBox(height: 10.0,),
                  Text('Language - '+widget.country.language),
                  SizedBox(height: 10.0,),
                  Text('Capital - '+widget.country.capital),
                  SizedBox(height: 10.0,),
                  Text('Government - '+widget.country.government),
                  SizedBox(height: 10.0,),
                  Text('Border area is - '+widget.country.border)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
