import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moscow'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              // Refresh button functionality here
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Burger menu functionality here
          },
        ),
      ),
      body: Column(
        children: [
          // Main information block
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '22.1 °C',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sunny',
                  style: TextStyle(fontSize: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Wind: 18.0 km/h'),
                    Text('Pressure: 760.6 mmHg'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Humidity: 83%'),
                    Text('UV Index: 7.96 (High)'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sunrise: 04:24'),
                    Text('Sunset: 19:47'),
                  ],
                ),
                Icon(
                  Icons.wb_sunny,
                  size: 50,
                ),
              ],
            ),
          ),
          // Graphs block
          Expanded(
            child: Center(
              child: Text('Graphs will be displayed here'),
            ),
          ),
        ],
      ),
    );
  }
}
