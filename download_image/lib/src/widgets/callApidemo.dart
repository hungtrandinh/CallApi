import 'package:download_image/model/data.dart';
import 'package:download_image/service/reponse.dart';
import 'package:download_image/src/values/dc_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallApi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateCallApi();
  }
}

class StateCallApi extends State<CallApi> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Results>?>(
        future: getdata(),
        builder: (context, AsyncSnapshot<List<Results>?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data!.length);
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final user = snapshot.data![index];
                  return Container(
                    height: 80,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Stack(
                                children: [
                                  ClipOval(
                                    child: Image.network(user.picture.large!),
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
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: AppAssetColors.dividerColors)),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 4,
                                            child: Container(
                                              child: Text(
                                                "${user.name.first}",
                                                style:
                                                    TextStyleMessnger.StyleName,
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              "08:40am",
                                              style: TextStyleMessnger
                                                  .StyleTimeseen,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Text("${user.email}",
                                            style:
                                                TextStyleMessnger.StyleTimeseen)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          }
          return Text("${snapshot.connectionState}");
        });
  }
}
