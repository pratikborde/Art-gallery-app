import 'package:art_gallery_app/molecules/BottomPanel.dart';
import 'package:art_gallery_app/molecules/CustomHeader.dart';
import 'package:art_gallery_app/molecules/middlePanel.dart';
import 'package:flutter/material.dart';

class HomeElement extends StatefulWidget {
  @override
  _HomeElementState createState() => _HomeElementState();
}

class _HomeElementState extends State<HomeElement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: new CustomAppBar(),
      ),
      body: Column(
        children: <Widget>[
          new MiddlePanelComponent(),
          new BottomPanelComponent(),
        ],
      ),
    );
  }
}
