import 'package:flutter/material.dart';

void main() {
  runApp(AboutUsApp());
}

class AboutUsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ProximaNova',
        primarySwatch: Colors.amber,
      ),
      home: new AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AboutUsPageState();
  }
}

class AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABOUT ME"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
        child: Column(
          children: <Widget>[
            ImageLabelRowWidget(),
            AboutDescriptionWidget(),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: RaisedButton.icon(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
          ),
          icon: Icon(Icons.call,color: Colors.white,),
          label: Text("CONTACT ME",style: TextStyle(color: Colors.white,fontSize: 20),),
          color: Colors.amber,
        ),
      ),
    );
  }
}

class AboutDescriptionWidget extends StatelessWidget {
  final description =
      "A motivated and skilful person with 3.5 years of experience working in native android development. Skills include developing, debugging and testing and releasing android applications. Able to communicate effectively with a team and very keen to develop more professional skills. ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 0.0),
        child: Text(
          description,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

class ImageLabelRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image(
              width: 100,
              height: 100,
              image: AssetImage("assets/images/me.jpg"),
            ),
          ),
          AboutMeHeaderWidget(),
        ],
      ),
    );
  }
}

class AboutMeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "JUNAID AHMAD",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Android Dev",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
