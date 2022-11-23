import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projek_pas/Login/UI/custom_surfix_icon.dart';
import 'package:projek_pas/Login/UI/sosial_button.dart';
import 'package:projek_pas/bottom_navigation/bottom_navigation.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title:
        Text("Sign Up",
        style: TextStyle(
          color: Color(0XFF8B8B8B),
          fontSize: 16,
        ),),
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              SizedBox(width: double.infinity,),
              Text("Register Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              Text("Compleate your detail or continue \nwith social media",
                textAlign: TextAlign.center,),
              const SizedBox(height: 70.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter Your Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg",),
                    contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Color(0xFF757575)),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide:   BorderSide(color: Color(0xFF757575)),
                        gapPadding: 10
                    )
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg",),
                    contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Color(0xFF757575)),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide:   BorderSide(color: Color(0xFF757575)),
                        gapPadding: 10
                    )
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Re-enter Your Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg",),
                    contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Color(0xFF757575)),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide:   BorderSide(color: Color(0xFF757575)),
                        gapPadding: 10
                    )
                ),
              ),
              const SizedBox(height: 30.0),
              SizedBox(
                width: double.infinity,
                height: (56),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MaterialYou()));},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: (18),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 55.0),
              Hero(
                tag: 'social_buttons',
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SocialButton(
                      backgroundColor: Colors.blue,
                      icon: FontAwesomeIcons.facebookF,
                      onPressed: () {},
                    ),
                    SocialButton(
                      backgroundColor: Colors.red,
                      icon: FontAwesomeIcons.google,
                      onPressed: () {},
                    ),
                    SocialButton(
                      backgroundColor: Colors.blue,
                      icon: FontAwesomeIcons.twitter,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("By continung your confirm that you agree\nwith our Team and Condition",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}