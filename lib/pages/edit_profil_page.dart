import 'package:flutter/material.dart';

import 'package:tmoney/themes/themes.dart';

class EditProfilPage extends StatelessWidget {
  const EditProfilPage({super.key});

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
              Text(
                "Foto profile",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                //untuk menyusun ke samping
                children: [
                  Image.asset("assets/Tmoney.png",
                      height: 50, width: 50, fit: BoxFit.fill),
                  SizedBox(
                    width: 10,
                  ),
                  Spacer(),
                  Text(
                    "Ubah",
                    style: secondaryTextstyle,
                  ),
                ],
              ),
              

              SizedBox(
                height: 15,
              ),

               //nama lengkap
              Text("Nama Lengkap",
                  style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                  ),
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
                  fontWeight: FontWeight.w600,
                ),),
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
                  fontWeight: FontWeight.w600,
                ),),
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
