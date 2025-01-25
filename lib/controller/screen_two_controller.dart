import 'dart:developer';

import 'package:flt_task1/model/image_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScreenTwoController extends ChangeNotifier {
  List<ImageResModel> imageList = [];
  bool isLoading = false;

  Future<void> getImages() async {
    isLoading = true;
    notifyListeners();

    final url =
        Uri.parse("https://api.pexels.com/v1/curated?per_page=10000000");
    try {
      var res = await http.get(url, headers: {
        "Authorization":
            "ziUAmbzZ7nhOwdtNxz3sYCJHcOTIL13RHzIrWxaey1bPZZKAeap9ZwsM"
      });
      if (res.statusCode == 200) {
        log(res.statusCode.toString());
        imageList = imageResModelFromJson(res.body) as List<ImageResModel>;
        isLoading = false;
      }
    } catch (e) {
      print(e);
    }

    isLoading = false;
    notifyListeners();
  }
}
