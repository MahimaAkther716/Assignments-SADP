import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final List<Map<String, String>> temperatureTypes = [
    {
      'title': 'Sunny',
      'image': 'https://cdn-icons-png.flaticon.com/512/869/869869.png',
    },
    {
      'title': 'Rainy',
      'image': 'https://cdn-icons-png.flaticon.com/512/1163/1163624.png',
    },
    {
      'title': 'Snowy',
      'image': 'https://cdn-icons-png.flaticon.com/512/1116/1116453.png',
    },
    {
      'title': 'Cloudy',
      'image': 'https://cdn-icons-png.flaticon.com/512/1163/1163620.png',
    },
    {
      'title': 'Windy',
      'image': 'https://cdn-icons-png.flaticon.com/512/1116/1116459.png',
    },
    {
      'title': 'Thunder',
      'image': 'https://cdn-icons-png.flaticon.com/512/1146/1146869.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Types'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange[100]!, Colors.orange[200]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: GridView.builder(
          padding: EdgeInsets.all(16),
          itemCount: temperatureTypes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 3 / 4,
          ),
          itemBuilder: (context, index) {
            final item = temperatureTypes[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(item['image']!, height: 80),
                  SizedBox(height: 12),
                  Text(
                    item['title']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
