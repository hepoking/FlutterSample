import 'package:flutter/material.dart';
import 'package:flutter_sample/common/sample_bottom_navigation_bar.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  @override
  _Setting createState() => _Setting();
}



class _Setting extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('設定'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: SampleBottomNavigationBar(),
    );
  }
}
