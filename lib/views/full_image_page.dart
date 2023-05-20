import 'package:flutter/material.dart';

class FullImagePage extends StatefulWidget {
  String imagePath;

  FullImagePage({required this.imagePath});

  @override
  State<FullImagePage> createState() => _FullImagePageState();
}

class _FullImagePageState extends State<FullImagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
            Expanded(
              child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset(widget.imagePath,fit: BoxFit.fitWidth,)),
            ),
            SizedBox(height: 55,),

          ],
        ),
      ),
    );
  }
}
