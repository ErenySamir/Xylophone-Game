import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class GetData extends StatefulWidget {
  //constuctor
  String title;
  GetData({required this.title});
  @override
  State<GetData> createState() {
 return GetDataState();
  }

}
class GetDataState extends State<GetData>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}