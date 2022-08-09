import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Column(
          children: [
            Text("© 2022 Arslan Arge. Tüm Hakları Saklıdır."),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Developed with ",
                ),
                InkWell(
                  onTap: () => openURL("https://github.com/pvtfurkan"),
                  child: const Text(
                    "Flutter",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
