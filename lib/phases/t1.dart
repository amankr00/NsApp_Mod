import 'package:flutter/material.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Column(
            children: [
              AppBar(
                title: Text('Custom Drawer Demo'),
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: _toggleDrawer,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text('Main Content Area'),
                ),
              ),
            ],
          ),
          if (_isDrawerOpen)
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                width: 250,
                color: Colors.white,
                child: Column(
                  children: [
                    DrawerHeader(
                      child: Text('Drawer Header'),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                      onTap: () {
                        // Handle Home tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                      onTap: () {
                        // Handle Settings tap
                      },
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
