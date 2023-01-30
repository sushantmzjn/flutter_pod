import 'package:book_app_ui/tabs/secound_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tabs/first_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(width);
    print(height);

    return Scaffold(
      backgroundColor: Color(0xffFEFBF6),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleSpacing: 25.0,
          title: Text(
            'Hi John,',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.bell,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5.0)
          ],
        ),
        body: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/banner.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.only(left: 20.0, right: 20.0),
                  unselectedLabelColor: Colors.grey,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 4.0,
                      color: Colors.blue,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text('Recommended',
                          style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child: Text('Popular books',
                          style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child: Text('My books',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  FirstTab(),
                  SecondTab(),
                  SecondTab(),
                  SecondTab(),
                ]),
              )
            ],
          ),
        ));
  }
}
