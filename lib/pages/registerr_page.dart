import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';
import 'package:tmoney/pages/loginn_page.dart';
import 'package:tmoney/pages/main_page.dart';
import 'package:tmoney/themes/themes.dart';


class RegisterrPage extends StatelessWidget {
  const RegisterrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: MediaQuery.of(context).size.height * 0.10),
        child: ListView(
          children: [
            Text("Buat Akun", 
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
                  fontSize: 25,
              ),),
              SizedBox(
              height: 10,
            ),
            Text("Buat akun untuk mulai",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w100,
                  fontSize: 17,
                )),
                SizedBox(
              height: 20,
            ),

            //nama lengkap
            Text("Nama Lengkap",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
            SizedBox(
              height: 10,
            ),
            TextFormField( // buat garis yang bisa di ketik user
             keyboardType: TextInputType.name,
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              hintText: "Masukkan Nama Lengkap",
              hintStyle: greyTextstyle,
            )),
            SizedBox(
              height: 10,
            ),

            //email
            Text("Email",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
            SizedBox(
              height: 10,
            ),
            TextFormField( // buat garis yang bisa di ketik user
              keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              hintText: "Masukkan Email",
              hintStyle: greyTextstyle,
            )),

            
            SizedBox(height: 10,),

            //no hp
            Text("Nomor Telepon",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
            SizedBox(
              height: 10,
            ),
            TextFormField( // buat garis yang bisa di ketik user
              keyboardType: TextInputType.phone,
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              hintText: "Masukkan Nomor Telepon",
              hintStyle: greyTextstyle,
            )),

            SizedBox(
              height: 10,
            ),

            //password
            Text("Password",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
            SizedBox(
              height: 10,
            ),
            TextFormField( // buat garis yang bisa di ketik user
              keyboardType: TextInputType.visiblePassword, // pakai .phone untuk no hp
              obscureText: true, // membuat password yg di input jadi ********
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.visibility),),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              hintText: "Masukkan Password",
              hintStyle: greyTextstyle,
            )),

            SizedBox(height: 60,),

            //buttom
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
            },
              child: Container(
                height: 55,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                  ),
                onPressed: null, 
                child: Text("Masuk", 
                style: whiteTextstyle,),
                ),
              ),
            ),


            //belum punya akun? ....
            SizedBox(height:100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun?", style: blackTextstyle,),
                 GestureDetector(
                  onTap: () {
                 //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginnPage()));
                },
                child: Text(" Masuk", style: secondaryTextstyle,)),

                // tambahkan di belakan text yang ingin bisa di klik :
                //
                // GestureDetector(
                //onTap: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                //},
                // child: Text......

              ],
            )
          ],
        ),
      ),
    );
  }
}