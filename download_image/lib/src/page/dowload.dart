import 'package:download_image/provider/dowload_image.dart';
import 'package:flutter/material.dart';

class DownloadImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateDownloadImage();
  }
}

class StateDownloadImage extends State<DownloadImage>
    with DowloadImageStateFull {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          dowloadimage("haha",
              "https://d25tv1xepz39hi.cloudfront.net/2016-01-31/files/1045.jpg");
        },
        child: Text("download image"),
      ),
    );
  }
}
