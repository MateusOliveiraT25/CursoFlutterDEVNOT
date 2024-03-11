import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedWidgetExample(),
    );
  }
}

class AnimatedWidgetExample extends StatefulWidget {
  @override
  _AnimatedWidgetExampleState createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample> {
  bool _isAnimated = false;

  void _toggleAnimation() {
    setState(() {
      _isAnimated = !_isAnimated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animação de Widget'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleAnimation,
          child: AnimatedContainer(
            width: _isAnimated ? 200 : 100,
            height: _isAnimated ? 200 : 100,
            color: _isAnimated ? Colors.blue : Colors.red,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Center(
              child: Text(
                'Clique para animar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
