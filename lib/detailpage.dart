import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mycard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 72.0,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Welcome User',style: TextStyle(fontSize: 20.0,color: Colors.white),),
    );

    final content=Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apumLorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apumLorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apumLorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.Lorem ipsum dolor sit apum.',
      style: TextStyle(fontSize: 16.0,color: Colors.white),),
    );

    final body=Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.redAccent,Colors.red])
      ),
      child: Column(
        children: <Widget>[mycard,welcome,content],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
