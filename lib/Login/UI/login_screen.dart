import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projek_pas/Login/UI/custom_surfix_icon.dart';
import 'package:projek_pas/Login/UI/sign_up.dart';
import 'package:projek_pas/Login/UI/sosial_button.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title:
        Text("Sign In",
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
              Text("Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Text("Sign in with your email and password \nor continue with social media",
              textAlign: TextAlign.center,),
              const SizedBox(height: 80.0),
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
              const SizedBox(height: 1.0),
              Row(
                children: [
               Checkbox(value: false, onChanged: (value){}),
                  Text("Remember me"),
                  Spacer(),
                  Text("Forgot Password", style: TextStyle(decoration: TextDecoration.underline),)
                ],
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

                onPressed: () {},
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: (18),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
              const SizedBox(height: 60.0),
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
                  Text("Don't have an account? ",
                    style: TextStyle(fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp())),
                    child: Text("Sign Up ",
                      style: TextStyle(fontSize: 16,
                      color:  Color(0xFFFF7643)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
