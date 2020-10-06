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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(40.0),
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                    hintText: '入力してください'
                ),
              )
        ),
            Container(
              margin: EdgeInsets.all(40.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'チェックイン回数',
                        style: TextStyle(
                          fontSize: 12.0,
                          letterSpacing: 0,
                        ),
                      ),
                      Text(
                        '1回',
                        style: TextStyle(
                          fontSize: 12.0,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images/sample.jpg"))),
                      ),
                      Text(
                        'test user',
                        style: TextStyle(
                          fontSize: 12.0,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '記事投稿回数',
                        style: TextStyle(
                          fontSize: 12.0,
                          letterSpacing: 0,
                        ),
                      ),
                      Text(
                        '3回',
                        style: TextStyle(
                          fontSize: 12.0,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SampleBottomNavigationBar(),
    );
  }
}
