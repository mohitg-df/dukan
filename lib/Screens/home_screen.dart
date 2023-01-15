import 'package:dukan/API/get_pro_API.dart';
import 'package:dukan/Model/product_model.dart';
import 'package:dukan/Screens/rpro_screen.dart';
import 'package:dukan/Utils/linear_loader_util.dart';
import 'package:dukan/constants.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<RetailProduct> product = [];

  Future apicall() async {
    final product = await GetProduct().getretailproduct();

    setState(
      () => this.product = product,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "${appbar_title}",
          style: appbar__title_style(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
              },
              child: Text(
                "${wsbuttonname}",
              ),
            ),
            OutlinedButton(
              onPressed: () {
                apicall();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Linearloaderutil(),
                  ),
                );
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rproscreen()),
                  );
                });
              },
              child: Text(
                "${rbuttonname}",
              ),
            )
          ],
        ),
      ),
    );
  }
}
