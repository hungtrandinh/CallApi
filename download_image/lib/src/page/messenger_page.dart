import 'package:download_image/src/widgets/ListviewHozion.dart';
import 'package:download_image/src/widgets/callApidemo.dart';
import 'package:download_image/src/values/app_assets_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Messenger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MessengerState();
  }
}

class MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff242A37),
      appBar: AppBar(
        shadowColor: Color(0xff242A37),
        backgroundColor: Color(0xff242A37),
        leading: Icon(Icons.arrow_back_rounded),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(
                        "Messenger                           ",
                        style: GoogleFonts.aBeeZee(
                            textStyle: TextStyleMessnger.StyleTitle),
                      ),
                    ),
                  ),
                  Expanded(flex: 3, child: ListViewHozion()),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: CallApi(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff242A37),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xff242A37),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
