// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/var/var.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/user_model.dart';

class AccountBody extends StatefulWidget {
  const AccountBody({super.key});

  @override
  State<AccountBody> createState() => _AccountBodyState();
}

class _AccountBodyState extends State<AccountBody> {
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  Widget build(BuildContext context) {
    if (loggedInUser.firstName == null) {
      return Scaffold(
          backgroundColor: background,
          body: Stack(
            children: [
              SvgPicture.asset('lib/assets/images/Group 47492.svg'),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('lib/assets/images/Group 47489.svg'),
                    CircularProgressIndicator(
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ));
    }
    return ListView(
      children: [
        Container(
          height: 90,
          decoration: BoxDecoration(color: mapColor),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.person_outline,
                    size: 35,
                    color: appColor,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '${loggedInUser.firstName} ${loggedInUser.secondName}',
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'comfortaa', color: appColor),
                  )
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/account');
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: mapColor, border: Border.all(width: 1, color: mapColor)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 290,
                  child: Text(
                    'Редактировать профиль',
                    style: TextStyle(
                        fontFamily: 'comfortaa', fontSize: 14, color: appColor),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            await launchUrl(Uri.parse('https://sgo.e-yakutia.ru/'));
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: mapColor, border: Border.all(width: 1, color: mapColor)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 290,
                  child: Text(
                    'Электронный дневник',
                    style: TextStyle(
                        fontFamily: 'comfortaa', fontSize: 14, color: appColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
