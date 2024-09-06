import 'package:flutter/material.dart';

import 'package:tmoney/themes/themes.dart';

class EditPasswordPage extends StatelessWidget {
  const EditPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: blackColor,
          ),
        ),
        elevation: 0,
        centerTitle: true, // membuat tulisan jadi di tengah
        title: Text(
          "Edit profile",
          style: blackTextstyle.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 12,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [

              //password
              Text("Password Lama",
                  style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField( // buat garis yang bisa di ketik user
                keyboardType: TextInputType.visiblePassword, // pakai .phone untuk no hp
                obscureText: true, // membuat password yg di input jadi ********
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.visibility),),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: borderColor),
                ),
                hintText: "Masukkan Password Lama",
                hintStyle: greyTextstyle,
              )),

              SizedBox(
                height: 15,
              ),

               //password
              Text("Password Baru",
                  style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField( // buat garis yang bisa di ketik user
                keyboardType: TextInputType.visiblePassword, // pakai .phone untuk no hp
                obscureText: true, // membuat password yg di input jadi ********
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.visibility),),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: borderColor),
                ),
                hintText: "Masukkan Password Baru",
                hintStyle: greyTextstyle,
              )),

              SizedBox(
                height: 15,
              ),

              //password
              Text("Konfirmasi Password Baru",
                  style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField( // buat garis yang bisa di ketik user
                keyboardType: TextInputType.visiblePassword, // pakai .phone untuk no hp
                obscureText: true, // membuat password yg di input jadi ********
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.visibility),),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: borderColor),
                ),
                hintText: "Masukkan Password Baru",
                hintStyle: greyTextstyle,
              )),
              

              SizedBox(
                height: 60,
              ),

              GestureDetector(
                onTap: () {
                        Navigator.pop(context);
                      },
                child: Container(
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                    onPressed: null,
                    child: Text(
                      "Simpan",
                      style: whiteTextstyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
