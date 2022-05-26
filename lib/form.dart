import 'package:flutter/material.dart';
import 'package:postest6_1915016055_adyafaradillah/home.dart';
import 'package:get/get.dart';
import 'package:postest6_1915016055_adyafaradillah/main.dart';
import 'package:postest6_1915016055_adyafaradillah/alert_dialog.dart';
import 'package:postest6_1915016055_adyafaradillah/textform_ctrl.dart';

class formpage extends StatelessWidget {
  const formpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _myController = TextEditingController();
    final TextFormController tfc = Get.put(TextFormController());

    SnackBar mySnackBar(String text) {
      return SnackBar(
        content: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        // duration: Duration(seconds: 7),
        // backgroundColor: Colors.amber,
        padding: EdgeInsets.all(15),
      );
    }

    return Scaffold(
      body: Container(
        // margin: EdgeInsets.all(_minimumPadding * 1),
        color: Color.fromARGB(234, 77, 21, 2),
        child: ListView(
          children: <Widget>[
            Positioned(
              child: Container(
                // padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  '-CAR WASH UFYA- ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Color.fromARGB(220, 240, 225, 151),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: TextField(
                controller: tfc.namactrl,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // icon: Icon(
                    //   Icons.boy,
                    //   color: Color.fromARGB(255, 253, 0, 0),
                    // ),
                    labelText: "Nama: ",
                    labelStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Masukkan Nama Lengkap Anda'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: TextField(
                controller: tfc.alamatctrl,
                decoration: const InputDecoration(
                    // icon: Icon(
                    //   Icons.place,
                    //   color: Colors.white24,
                    // ),
                    border: OutlineInputBorder(),
                    labelText: "Alamat: ",
                    labelStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Masukkan Alamat Lengkap'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: TextField(
                controller: tfc.nohpctrl,
                decoration: const InputDecoration(
                    // icon: Icon(
                    //   Icons.phone,
                    //   color: Colors.white24,
                    // ),
                    border: OutlineInputBorder(),
                    labelText: "No Hp: ",
                    labelStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Masukkan Nomor WA Anda'),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(),
                child: TextField(
                  controller: tfc.carctrl,
                  decoration: const InputDecoration(
                    // icon: Icon(
                    //   Icons.car_rental,
                    //   color: Colors.white24,
                    // ),
                    labelText: "Merek Mobil / Nomor Plat: ",
                    labelStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Masukkan Merek dan Plat Mobil Anda',
                    border: OutlineInputBorder(),
                  ),
                )),
            ElevatedButton(
              onPressed: tfc.onPressed,
              child: const Text("DAFTAR", textScaleFactor: 1.5),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 159, 158, 156)),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '--Terima Kasih Telah Mendaftar--',
                    style: const TextStyle(
                        color: Color.fromARGB(220, 240, 225, 151),
                        fontSize: 18,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    'Nama : ${tfc.nama}',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 159, 158, 156),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Alamat : ${tfc.alamat}',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 159, 158, 156),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'No Hp : ${tfc.nohp}',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 159, 158, 156),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Merek/Plat Mobil : ${tfc.car}',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 159, 158, 156),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  // gambar(),
                  icontempat(),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text('Adya Faradillah ~ 1915016055',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 5,
                            color: Color.fromARGB(255, 215, 240, 240))),
                    color: Colors.black45,
                  ),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromARGB(255, 60, 8, 5))),
                  onPressed: () {
                    Alertdialog(context, _myController.text);
                  },
                  color: Color.fromARGB(255, 222, 187, 10),
                  textColor: Colors.white,
                  child:
                      Text("End".toUpperCase(), style: TextStyle(fontSize: 14)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget icontempat() {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10),
      //padding: EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
          Widget>[
        Icon(Icons.place, color: Colors.amber),
        Text('Jl. Kestela 9 ',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w100)),
        Icon(Icons.timer, color: Colors.amber),
        Text('08.00 - 17.00',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w100)),
        Icon(Icons.payment, color: Colors.amber),
        Text('Rp. 50.000',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w100)),
      ]),
    );
  }
}
