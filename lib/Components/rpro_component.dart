import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dukan/constants.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Rprocomponent extends StatefulWidget {
  const Rprocomponent({Key? key}) : super(key: key);

  @override
  _RprocomponentState createState() => _RprocomponentState();
}

class _RprocomponentState extends State<Rprocomponent> {
  List<dynamic> retailproduct = [];

  // final ImagePicker _picker = ImagePicker();

  loadeddata() {
    final box = GetStorage();
    retailproduct = box.read("retailsproducts");
    // print(product);
  }

  clearData() {
    final box = GetStorage();
    box.remove("retailsproducts");
  }

  // _pickimage() async{
  //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  //   print(image);
  // }

  @override
  void initState() {
    loadeddata();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // clearData();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        retailproduct != null
            ? Expanded(
                child: ListView.builder(
                    itemCount: retailproduct.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 10.0, top: 10.0, bottom: 10.0),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: 10 * MediaQuery.of(context).size.height * 0.01,
                                    child: Image.asset("assets/product.png")
                                    // Image.network(
                                    //   "${retailproduct[index]["imageurl"]}", // I thought this would fill up my Container but it doesn't
                                    // ),
                                    ),
                                SizedBox(
                                  width: 10 * MediaQuery.of(context).size.width * 0.01,
                                ),
                                Column(
                                  children: [
                                    Text("${retailproduct[index]["name"]}"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 50 * MediaQuery.of(context).size.width * 0.01,
                                      height: 5 * MediaQuery.of(context).size.height * 0.01,
                                      color: Colors.amber,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Add to Cart",
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // ListTile(
                            //   leading: Container(
                            //       // height: 15 * MediaQuery.of(context).size.height * 0.01,
                            //       child: Image.asset("assets/product.png")
                            //     // Image.network(
                            //     //   "${retailproduct[index]["imageurl"]}", // I thought this would fill up my Container but it doesn't
                            //     // ),
                            //   ),
                            //   title: Text("${retailproduct[index]["name"]}"),
                            //   trailing: Column(
                            //     mainAxisSize: MainAxisSize.min,
                            //     children: [
                            //     ],
                            //   ),
                            // ),

                            Divider(
                              color: Colors.blueGrey.withOpacity(0.34),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            : Center(
                child: Text("No Item Found"),
              ),
      ],
    );
  }
}
