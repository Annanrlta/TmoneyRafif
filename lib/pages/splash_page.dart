import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';
import 'package:tmoney/pages/loginn_page.dart';
import 'package:tmoney/themes/themes.dart';


class SplashhPage extends StatefulWidget {
  const SplashhPage({super.key});

  @override
  State<SplashhPage> createState() => _SplashhPageState();
}

class _SplashhPageState extends State<SplashhPage> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    movingPage();
  }

  // function setelah 2 detik akan berpindah halaman
void movingPage(){
  Timer(
    Duration(seconds: 2),(){
      // masukkan fungsi navigation
       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginnPage()));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginnPage()));
    }
  );
}

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    
           
            Spacer(), // menghabiskan/full sisa gambar ke pinggiran layar 
            // baris ke-3
            Image.asset("assets/splahsTmoney.png", fit: BoxFit.cover, height: 865, width: 450,),
          ],
        ),
      ),
    );
  }
}