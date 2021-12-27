import 'dart:ui';

import 'package:desi_foods/about_screen.dart';
import 'package:desi_foods/utils/dialogue.dart';
import 'package:desi_foods/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                // color: Colors.amber,
                ),
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.home),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 13.0, top: 5.0),
            child: Text(
              'Communication',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context);
              await canLaunch("https://www.facebook.com/HomeofDesiFoodz/")
                  ? await launch("https://www.facebook.com/HomeofDesiFoodz/")
                  : throw 'Could not launch';
            },
            title: Text(
              'Facebook',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.facebook),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context);
              await canLaunch("https://www.instagram.com/HomeofDesiFoodz/")
                  ? await launch("https://www.instagram.com/HomeofDesiFoodz/")
                  : throw 'Could not launch';
            },
            title: Text(
              'Instagram',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: ImageIcon(
              AssetImage("assets/insta.png"),
            ),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context);
              await canLaunch("https://twitter.com/homeofdesifoodz")
                  ? await launch("https://twitter.com/homeofdesifoodz")
                  : throw 'Could not launch';
            },
            title: Text(
              'Twitter',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: ImageIcon(
              AssetImage(
                "assets/twitter.png",
              ),
            ),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context);
              await canLaunch("https://www.linkedin.com/in/homeofdesifoodz/")
                  ? await launch("https://www.linkedin.com/in/homeofdesifoodz/")
                  : throw 'Could not launch';
            },
            title: Text(
              'LinkedIn',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.social_distance_rounded),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 13.0, top: 5.0),
            child: Text(
              'Application',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context);
              await DialogClass(
                dialogTitle: "Home Of Desi Foodz (Pvt) Ltd",
                dialogContent: [
                  Utils.getTitileTextForDialogue("Privacy Policy"),
                  Utils.getSubTitileTextForDialogue("Short Description:"),
                  Utils.getParaTextForDialogue(
                      "our aim to provides pure organic Desi and healthy food for your good health."),
                  Utils.getSubTitileTextForDialogue("Company Description:"),
                  Utils.getParaTextForDialogue(
                      "Our aim to provides pure organic, Desi and healthy food for your good health. We are collecting organic desi food from the local as well throughout the country as no individual previously took steps to address this food purity issue. We are stepping forward to provide healthy homemade/local products to our customers at the doorstep with a single click as well physical existence. These products will include Desi ghee, pure honey, mustard oil, Sun flower oil, Olive oil, desi eggs, and dry fruits etc. we incorporating IT tools and plugins to stretch our business countrywide as well expend to globally and associate our services with the internet technology to cope up with recent digital globe. We are active on E-commerce, websites, Daraz, OlX, and social media presence which are the contemporary world business platforms for the entrepreneurs."),
                  Utils.getSubTitileTextForDialogue(
                      "Shopping Through Physical Franchises as well Presence at online Platform:"),
                  Utils.getParaTextForDialogue(
                      "“Home of Desi Foodz (Pvt) Ltd” is a Franchises based and online ecommerce marketplace that operates to provides Organic Desi Food at doorstep. It is the leading online shopping as well physical platform, enabling users to get access to everything which you want.If you have been looking for some of the best deals and discounts on your favorite organic desi food products at affordable price within one place, then “Home Of Desi Foodz” is the best solution, the company have the following features including flash deals, voucher and discounts at special day and much more."),
                  Utils.getSubTitileTextForDialogue("Main Features:"),
                  Utils.getParaTextForDialogue(
                      "= Online Shopping\n= Online Desi food provider\n= Pure Hygienic food provider\n= Organic food provider\n= Street food provider\n= Healthy food provider"),
                  Utils.getSubTitileTextForDialogue("How to Use:"),
                  Utils.getParaTextForDialogue(
                      "= Open application\n= Select Desire Food Item\n= Add to cart\n= Payment (It may be Online, Credit card, Debit Card, and Cash on delivery)\n= All Step Cover in just one click\n= Now wait for your courier boy"),
                  Utils.getSubTitileTextForDialogue("Note: "),
                  Utils.getParaTextForDialogue(
                      "Keep in mind this application is not belong to any other company, this product is property of “Home of Desi Foodz (Pvt)Ltd” which developed by Syed Sulaiman and their team, this application helps you to find out healthy, organic, pure desi, and hygienic food items in one place."),
                  Utils.getSubTitileTextForDialogue("Personal Information:"),
                  Utils.getParaTextForDialogue(
                      "We do not collect any Personal Information about you. “Personal Information” means personally identifiable information, such as your name, email address, physical address, calendar entries, contact entries, files, photos, etc."),
                  Utils.getSubTitileTextForDialogue(
                      "Changes to this privacy policy:"),
                  Utils.getParaTextForDialogue(
                      "We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page."),
                  Utils.getSubTitileTextForDialogue("Contact Us:"),
                  Utils.getParaTextForDialogue(
                      "If you have any questions or suggestions about our software and privacy policy, do not hesitate and feel free to contact with us, it will be pleasure for us."),
                  Utils.getSubTitileTextForDialogue("Contact:"),
                  Utils.getParaTextForDialogue(
                      "= Email: 	contact@homeofdesifoodz.com\n= WhatsApp: 	+92-3451754735\n= Phone: 	+92-939500735\n= Address: 	Ghurghushto, Khadukhel, Buner, KPK, Pakistan\n= Postal Code: 	23434"),
                  Utils.getSubTitileTextForDialogue("Online Shop:"),
                  Utils.getParaTextForDialogue(
                      "= Website: 	https://www. homeofdesifoodz.com\n= Daraz: 	@ homeofdesifoodz\n= Olx:	 	@ homeofdesifoodz"),
                  Utils.getSubTitileTextForDialogue("Social Media Platform:"),
                  Utils.getParaTextForDialogue(
                      "= Facebook: 	@ homeofdesifoodz\n= Twitter: 	@ homeofdesifoodz\n= Instagram: 	@ homeofdesifoodz\n= LinkedIn: 	@ homeofdesifoodz\n= Tok-tok: 	@ homeofdesifoodz\n= Likee: 	@ homeofdesifoodz\n= Snack Video: 	@ homeofdesifoodz\n= Pinterest: 	@ homeofdesifoodz\n= BIGO LIVE: 	@ homeofdesifoodz"),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Copyrights © 2020 Home of Desi Foodz (Pvt) Ltd. All Rights Reserved."),
                      ),
                    ),
                  ),
                ],
              ).showMyDialog(context);
            },
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.privacy_tip),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AbourScreen(),
                ),
              );
            },
            title: Text(
              'About Us',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.info),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context);
              Utils.showToast(
                title: "Please wait..",
                color: Colors.amber,
              );
              PackageInfo pck = await Utils.getPackageName();

              Utils.shareText(pck.packageName);
            },
            title: Text(
              'Share App',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
