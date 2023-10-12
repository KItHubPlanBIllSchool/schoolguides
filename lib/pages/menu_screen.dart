// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/pages/main_screen.dart';
import 'package:hackathon/pages/menu_edit.dart';
import 'package:hackathon/var/var.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('menu').snapshots(),
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: appColor,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Screen()),
                        (route) => false);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: textColor,
                  )),
              title: Text('Столовое меню',
                  style: TextStyle(
                      fontFamily: 'comfortaa', fontSize: 25, color: textColor)),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuEditScreen()));
              },
              backgroundColor: textColor,
            ),
            backgroundColor: background,
            body: ListView.builder(
              itemCount: snapshot.requireData.size,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 30, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.requireData.docs[index]['name']!,
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 25,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Завтрак:',
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 20,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        snapshot.requireData.docs[index]['breakfast']!,
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 15,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Обед:',
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 20,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        snapshot.requireData.docs[index]['lanch']!,
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 15,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Полдник:',
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 20,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        snapshot.requireData.docs[index]['lanch2']!,
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 15,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ужин:',
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 20,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        snapshot.requireData.docs[index]['dinner']!,
                        style: TextStyle(
                            fontFamily: 'comfortaa',
                            fontSize: 15,
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
