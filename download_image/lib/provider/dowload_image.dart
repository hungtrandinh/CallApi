import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

mixin DowloadImageStateFull<T extends StatefulWidget> on State<T> {
  Future<void> dowloadimage(String name, String url) async {
    try {
      final reponse = await Dio().get(
        url,
        options: Options(responseType: ResponseType.bytes),
      );
      print(reponse.data);
      final result = await ImageGallerySaver.saveImage(
          Uint8List.fromList(reponse.data),
          quality: 80,
          name: name);
      if (result != null) {}
    } catch (e) {
      return;
    }
  }
}
