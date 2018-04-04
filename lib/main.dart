import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'DadBot',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Dad Bot'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _jokes = [
    "What time did the man go to the dentist? Tooth hurt-y.",
	  "My dad literally told me this one last week: 'Did you hear about the guy who invented Lifesavers? They say he made a mint.'",
    "A ham sandwich walks into a bar and orders a beer. Bartender says, 'Sorry we don't serve food here.'",
    "Whenever the cashier at the grocery store asks my dad if he would like the milk in a bag he replies, 'No, just leave it in the carton!'",
   "Why do chicken coops only have two doors? Because if they had four, they would be chicken sedans!",
	  "Why did the Clydesdale give the pony a glass of water? Because he was a little horse!",
	  "How do you make a Kleenex dance? Put a little boogie in it!",
    "Two peanuts were walking down the street. One was a salted.",
	  "I used to have a job at a calendar factory but I got the sack because I took a couple of days off.",
	  "How do you make holy water? You boil the hell out of it.","Two guys walk into a bar, the third one ducks.",
    "A woman is on trial for beating her husband to death with his guitar collection. Judge says, 'First offender?' She says, 'No, first a Gibson! Then a Fender!'",
	  "Anytime I do something smart my dad says, 'Wow, you're a fart smella...I mean smart fella!'",
	  "I had a dream that I was a muffler last night. I woke up exhausted!",
    "How do you tell the difference between a frog and a horny toad? A frog says, 'Ribbit, ribbit' and a horny toad says, 'Rub it, rub it.'",
	  "5/4 of people admit that they’re bad with fractions.","You can't plant flowers if you haven't botany.",
	  "What's the difference between a good joke and a bad joke timing.","I was just looking at my ceiling. Not sure if it’s the best ceiling in the world, but it’s definitely up there.",
    "I used to have a job collecting leaves. I was raking it in.","Shout out to my grandma, that's the only way she can hear.","Why aren't jet skis called boatercyles?",
	  "Toasters were the first form of pop-up notifications.",
	  "I've been addicted to cold turkey for 2 years. I keep telling people I'm trying to quit cold turkey but nobody is taking me seriously.",
    "I just read a book about Stockholm syndrome. It was pretty bad at first, but by the end I liked it.",
	  "What's the difference between a hippo and a zippo? One is really heavy, the other is a little lighter."
  ];
  var _txt = "Click the button, get a dad joke!";

  void _changeText() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      var rng = new Random();
      _txt = _jokes[rng.nextInt(_jokes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Welcome to DadBot!',
            ),
            new Padding(
              padding: new EdgeInsets.all(10.0),
              child: new Text(
                _txt,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _changeText,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}