import 'package:flutter/material.dart';
import 'package:tmoney/pages/edit_password._page.dart';
import 'package:tmoney/pages/edit_profil_page.dart';
import 'package:tmoney/pages/loginn_page.dart';
import 'package:tmoney/themes/themes.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
    

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
          ),
        ),
        elevation: 0,
        centerTitle: true, // membuat tulisan jadi di tengah
        title: Text(
          "Profile",
          style: whiteTextstyle.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

        body: Container(
          margin: EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
      child: ListView(
        children: [
          CircleAvatar(
            radius: 50,
            // child: Image.asset('assets/img-profil.png', height: 100, width: 100, fit: BoxFit.fill),
                  // backgroundImage: AssetImage('assets/img-profil.png'),
          ),
          SizedBox(height: 10),

          Text(
            "Rafif Radhi Rachman", textAlign: TextAlign.center,
            style: blackTextstyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20,),
          
          
            InkWell( onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilPage()));
            },
              child: Row(
                children: [
                  Text("Edit Profile", style: blackTextstyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: blackColor,),
                ],
              ),
            ),
            Divider(thickness: 2,),
        
          
          SizedBox(height: 20,),

          
          InkWell( onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EditPasswordPage()));
          },
            child: Row(
              children: [
                Text("Ubah Password", style: blackTextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: blackColor,),
              ],
            ),
          ),
          Divider(thickness: 2,),
          
          
          SizedBox(height: 20,),


          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginnPage()));
            },
            child: Text("Sign Out", style: secondaryTextstyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600),),
          ),

            

        ],
      ),
    ));
  }
}
