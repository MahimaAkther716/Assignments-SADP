import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final List<Map<String, String>> cities = [
    {
      'city': 'New York',
      'temp': '21°C',
      'icon': 'https://cdn-icons-png.flaticon.com/512/869/869869.png',
    },
    {
      'city': 'London',
      'temp': '15°C',
      'icon': 'https://cdn-icons-png.flaticon.com/512/1163/1163620.png',
    },
    {
      'city': 'Tokyo',
      'temp': '18°C',
      'icon': 'https://cdn-icons-png.flaticon.com/512/869/869869.png',
    },
    {
      'city': 'Paris',
      'temp': '17°C',
      'icon': 'https://cdn-icons-png.flaticon.com/512/1163/1163624.png',
    },
    {
      'city': 'Moscow',
      'temp': '-5°C',
      'icon': 'https://cdn-icons-png.flaticon.com/512/1116/1116453.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Temperatures'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue[100]!, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: cities.length,
          itemBuilder: (context, index) {
            final city = cities[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Image.network(city['icon']!, height: 40),
                title: Text(
                  city['city']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                trailing: Text(
                  city['temp']!,
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
