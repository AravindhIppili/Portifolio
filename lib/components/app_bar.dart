import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(51);
}

class _MyAppBarState extends State<MyAppBar> {
  TextEditingController _searchQueryController = TextEditingController();
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: _isSearching
          ? BackButton(
              onPressed: () {
                setState(() {
                  _isSearching = false;
                });
              },
            )
          : null,
      title: _isSearching ? _buildSearchField() : null,
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                _isSearching = true;
              });
            },
            icon: Icon(Icons.search))
      ],
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
