import 'package:dukan/Components/rpro_component.dart';
import 'package:dukan/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class Rproscreen extends StatefulWidget {
  const Rproscreen({Key? key}) : super(key: key);

  @override
  State<Rproscreen> createState() => _RproscreenState();
}

class _RproscreenState extends State<Rproscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Retails Product"),
          leading: BackButton(
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Homescreen()),
              );
            },
          ),
        ),
        body: Rprocomponent(),
      ),
    );
  }
}
