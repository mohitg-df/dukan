import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic base_url = "https://33ff-122-168-188-18.in.ngrok.io/dukanapp/api/";
dynamic bearer_token = "276d8a60-17ca-41fc-be03-a632e63bbb79";
dynamic appbar_title = "Let'S Buy";
dynamic cart_title = "Cart";
dynamic wsbuttonname = "Wholesale Product";
dynamic rbuttonname = "Retail Product";

const kPrimaryColor = Color(0xFFFFC200);
const kTextcolor = Color(0xFF241424);
const kDarkButton = Color(0xFF372930);

const apptextxcolor = Colors.white;
dynamic nonreload = false;
dynamic haspressed = false;
dynamic addtocartstatus;
const String = "Item Added in the Cart";

TextStyle appbar__title_style() => GoogleFonts.acme(
  textStyle: TextStyle(
    color: apptextxcolor,
    // fontSize: 18,
  ),
);
