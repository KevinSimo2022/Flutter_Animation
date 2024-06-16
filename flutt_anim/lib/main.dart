import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimationExample(),
    );
  }
}

class AnimationExample extends StatefulWidget {
  @override
  _AnimationExampleState createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animation Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: _isExpanded ? 200 : 100,
              height: _isExpanded ? 200 : 100,
              color: _isExpanded ? Colors.blue : Colors.red,
              child: Center(
                child: Text(
                  'Tap Me',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Text('Animate!'),
            ),
          ],
        ),
      ),
    );
  }
}
