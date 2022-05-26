import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormController extends GetxController {
  var nama = "".obs;
  var alamat = "".obs;
  var nohp = "".obs;
  var car = "".obs;

  final _minimumPadding = 5.0;
  final namactrl = TextEditingController();
  final alamatctrl = TextEditingController();
  final nohpctrl = TextEditingController();
  final carctrl = TextEditingController();

  onPressed() {
    nama = namactrl.text.obs;
    alamat = alamatctrl.text.obs;
    nohp = nohpctrl.text.obs;
    car = carctrl.text.obs;
  }

  @override
  void onClose() {
    namactrl.dispose();
    alamatctrl.dispose();
    nohpctrl.dispose();
    carctrl.dispose();
  }
}
