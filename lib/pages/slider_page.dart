import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  final double initialValue;

  SliderPage({this.initialValue = 50});

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  late double _sliderValue;

  @override
  void initState() {
    super.initState();
    _sliderValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Seite')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('Wert: ${_sliderValue.round()}'),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: _sliderValue + 50,
              color: Colors.blue.withOpacity(_sliderValue / 100),
              child: Center(child: Text("Dynamische Box")),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Speichern und zurück'),
              onPressed: () {
                Navigator.pop(context, _sliderValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
