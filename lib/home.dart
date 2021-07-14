import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:todo/first_screen.dart';
import 'package:todo/second_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ScreenHiddenDrawer> items = [];
  TextEditingController _searchQueryController = TextEditingController();
  bool _isSearching = false;

  @override
  void initState() {

    items.add(new ScreenHiddenDrawer(
      ItemHiddenMenu(
        name: "Home",
        baseStyle: TextStyle(color: Colors.white),
        selectedStyle: TextStyle(color: Colors.white),
      ),
      FirstScreen(),
    ));

    items.add(new ScreenHiddenDrawer(
      ItemHiddenMenu(
        name: "Screen2",
        baseStyle: TextStyle(color: Colors.white),
        selectedStyle: TextStyle(color: Colors.white),
      ),
      SecondScreen(),
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HiddenDrawerMenu(
        initPositionSelected: 0,
        backgroundColorMenu: Colors.red,
        screens: items,
        elevationAppBar: 0,
        tittleAppBar: _isSearching ? _buildSearchField() : null,
        actionsAppBar: [
          IconButton(
              onPressed: () {
                setState(() {
                  _isSearching = true;
                });
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchQueryController,
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Search..",
        border: InputBorder.none,
      ),
      style: TextStyle(color: Colors.white, fontSize: 16.0),
    );
  }
}
