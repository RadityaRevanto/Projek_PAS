import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/Warm Jacket.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sauka Raditya",
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "saukaraditya@gmail.com",
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    )),
                height: 50,
                width: 500,
                child: Center(
                  child: Text(
                    "Upgrade To Premium",
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ProfileMenu(
                text: 'Order History',
                icon: Icons.shopping_bag_outlined,
                arrowShown: true,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileMenu(
                text: 'Help and Supprot',
                icon: Icons.help_outline,
                arrowShown: true,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileMenu(
                text: 'Load gift voucher',
                icon: Icons.card_giftcard,
                arrowShown: true,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileMenu(
                text: 'Log Out',
                icon: Icons.logout,
                arrowShown: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  ProfileMenu(
      {required this.text, required this.icon, required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            )),
        height: 50,
        width: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Icon(
                    icon,
                    size: 30,

                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "$text",

                ),
              ],
            ),
            arrowShown
                ? Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Colors.black,
                    ),
                  )
                : Container(),
          ],
        ));
  }
}
