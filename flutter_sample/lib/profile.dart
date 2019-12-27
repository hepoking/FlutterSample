import 'package:flutter/material.dart';

import 'common/sample_bottom_navigation_bar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('プロフィール'),
        leading: IconButton(
          icon: Icon(Icons.group_add),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.dashboard),
          ),
        ],
      ),
      bottomNavigationBar: SampleBottomNavigationBar(),
    );
  }
}
