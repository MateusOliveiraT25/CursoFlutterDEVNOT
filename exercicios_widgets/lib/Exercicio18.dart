import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Integração de Imagens',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImageExample(),
    );
  }
}

class ImageExample extends StatefulWidget {
  @override
  _ImageExampleState createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  Image _networkImage;
  Image _localImage;

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  void _loadImages() async {
    final networkImageResponse =
        await http.get(Uri.parse('https://via.placeholder.com/200'));
    final networkImageBytes = networkImageResponse.bodyBytes;

    setState(() {
      _networkImage = Image.memory(networkImageBytes);
      _localImage = Image.asset('assets/local_image.jpg');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integração de Imagens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (_networkImage != null) _networkImage,
            SizedBox(height: 20),
            if (_localImage != null) _localImage,
          ],
        ),
      ),
    );
  }
}
