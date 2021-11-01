import 'package:download_image/model/data.dart';
import 'package:download_image/service/reponse.dart';
import 'package:download_image/src/values/dc_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewHozion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateListViewHozion();
  }
}

class StateListViewHozion extends State<ListViewHozion> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Results>?>(
      future: getdata(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final name = snapshot.data![index];
                  return Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: AppAssetColors.dividerColors),
                            top: BorderSide(color: Colors.black12))),
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Stack(
                                  children: [
                                    ClipOval(
                                      child: Image.network(name.picture.large!),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: ClipOval(
                                        child: Container(
                                          height: 15,
                                          width: 15,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Text(
                                  name.name.first!,
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyleMessnger.StateOnline,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  );
                });
          }
        }
        return Text("${snapshot.connectionState}");
      },
    );
  }
}
