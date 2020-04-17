import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget topSection = Container(
      child: Row(
        children: [
          IconButton(
              onPressed: () => {},
              icon: Icon(Icons.location_on),
              color: Colors.grey),
        ],
      ),
    );

    Widget CatIconSection = Container(
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                _buildButtonColumn(Icons.restaurant, 'Restaurant'),
                _buildButtonColumn(Icons.book, 'Education'),
                _buildButtonColumn(Icons.local_offer, 'Etc'),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                _buildButtonColumn(Icons.local_cafe, 'Dessert'),
                _buildButtonColumn(Icons.face, 'Beauty'),
                _buildButtonColumn(Icons.location_city, 'Facility'),
              ],
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            topSection,
            CatIconSection,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //onTap: onTabTapped, // new
          //currentIndex: _currentIndex, // new
          items: [
            _buildNavButton(Icons.chat_bubble, 'Community'),
            _buildNavButton(Icons.bookmark, 'Bookmark'),
            _buildNavButton(Icons.home, 'Home'),
            _buildNavButton(Icons.search, 'Search'),
            _buildNavButton(Icons.person, 'My'),
          ],
        ),
      ),
    );
  }

  FlatButton _buildButtonColumn(IconData icon, String label) {
    return FlatButton(
      onPressed: () => {},
      child: Column(
        children: <Widget>[Icon(icon, color: Colors.grey), Text(label)],
      ),
    );
  }

  BottomNavigationBarItem _buildNavButton(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(label),
    );
  }
}
