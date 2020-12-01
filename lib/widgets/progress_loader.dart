import 'package:flutter/material.dart';

class ProgressLoader extends StatelessWidget {

  const ProgressLoader({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  }
}