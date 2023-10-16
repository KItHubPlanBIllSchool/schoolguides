// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/admin.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/pages/edit_screen.dart';
import 'package:hackathon/var/var.dart';

import '../models/user_model.dart';

class DescriptionScreen extends StatefulWidget {
  String name = '';
  String events = '';
  String id = '';
  String info = '';
  String list = '';
  String responsible = '';
  DescriptionScreen({
    super.key,
    required this.name,
    required this.events,
    required this.info,
    required this.list,
    required this.responsible,
    required this.id,
  });

  @override
  State<DescriptionScreen> createState() =>
      _DescriptionScreenState(name, events, info, list, responsible, id);
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  String name = '';
  String info = '';
  String events = '';
  String id = '';
  String list = '';
  String responsible = '';
  _DescriptionScreenState(
    this.name,
    this.events,
    this.info,
    this.list,
    this.responsible,
    this.id,
  );
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    UserModel loggedInUser = UserModel();
    return Scaffold(
        backgroundColor: background,
        body: Column(children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 30),
              child: Container(
                  height: 650,
                  decoration: BoxDecoration(
                      color: darkMode
                          ? appColor
                          : Color.fromRGBO(226, 229, 238, 1),
                      borderRadius: BorderRadius.all(Radius.circular(17))),
                  child: Column(children: [
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: darkMode
                                  ? appColor
                                  : Color.fromRGBO(226, 229, 238, 1),
                              width: 2),
                          color: darkMode
                              ? Color.fromRGBO(226, 229, 238, 1)
                              : Color.fromRGBO(26, 31, 41, 1),
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back,
                                    color: darkMode
                                        ? Color.fromRGBO(26, 31, 41, 1)
                                        : Color.fromRGBO(226, 229, 238, 1))),
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: darkMode
                                      ? Color.fromRGBO(26, 31, 41, 1)
                                      : Color.fromRGBO(226, 229, 238, 1),
                                  fontFamily: 'comfortaa'),
                            ),
                            IconButton(
                                onPressed: () {
                                  if (admin.contains(user?.email)) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EditScreen(
                                                name: name,
                                                events: events,
                                                info: info,
                                                list: list,
                                                responsible: responsible,
                                                id: id)));
                                  }
                                },
                                icon: Icon(Icons.edit_outlined,
                                    color: (admin.contains(user!.email))
                                        ? darkMode
                                            ? Color.fromRGBO(0, 0, 0, 1)
                                            : Color.fromRGBO(0, 0, 0, 1)
                                        : Color.fromRGBO(255, 255, 255, 0)))
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.person_outline,
                          size: 40,
                          color: darkMode
                              ? Color.fromRGBO(0, 0, 0, 1)
                              : Color.fromRGBO(26, 31, 41, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(responsible,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: darkMode
                                      ? Color.fromRGBO(0, 0, 0, 1)
                                      : Color.fromRGBO(26, 31, 41, 1),
                                  fontFamily: 'comfortaa')),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.info_outline,
                          size: 40,
                          color: darkMode
                              ? Color.fromRGBO(0, 0, 0, 1)
                              : Color.fromRGBO(26, 31, 41, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(info,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: darkMode
                                      ? Color.fromRGBO(0, 0, 0, 1)
                                      : Color.fromRGBO(26, 31, 41, 1),
                                  fontFamily: 'comfortaa')),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.monitor_outlined,
                          size: 40,
                          color: darkMode
                              ? Color.fromRGBO(0, 0, 0, 1)
                              : Color.fromRGBO(0, 0, 0, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(list,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: darkMode
                                      ? Color.fromRGBO(0, 0, 0, 1)
                                      : Color.fromRGBO(26, 31, 41, 1),
                                  fontFamily: 'comfortaa')),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 420,
                      decoration: BoxDecoration(
                          color: darkMode
                              ? Color.fromRGBO(226, 229, 238, 1)
                              : Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: darkMode
                                        ? Color.fromRGBO(0, 0, 0, 1)
                                        : Color.fromRGBO(0, 0, 0, 1),
                                    width: 3),
                                color: darkMode
                                    ? Color.fromRGBO(226, 229, 238, 1)
                                    : Color.fromRGBO(255, 255, 255, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17))),
                            child: Center(
                                child: Text(
                              'События',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: darkMode
                                      ? Color.fromRGBO(26, 31, 41, 1)
                                      : Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'comfortaa'),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Flexible(
                              child: Text(events,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: darkMode
                                          ? Color.fromRGBO(26, 31, 41, 1)
                                          : Color.fromRGBO(226, 229, 238, 1),
                                      fontFamily: 'comfortaa')),
                            ),
                          )
                        ],
                      ),
                    ),
                  ])),
            ),
          ),
        ]));
  }
}
