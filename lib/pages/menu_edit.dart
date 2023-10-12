// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/pages/menu_screen.dart';
import 'package:hackathon/var/var.dart';

class MenuEditScreen extends StatefulWidget {
  const MenuEditScreen({super.key});

  @override
  State<MenuEditScreen> createState() => _MenuEditScreenState();
}

class _MenuEditScreenState extends State<MenuEditScreen> {
  final formKey = GlobalKey<FormState>();
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
                        MaterialPageRoute(builder: (context) => MenuScreen()),
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
            backgroundColor: background,
            body: Form(
              key: formKey,
              child: ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  TextEditingController breakfastTextInputController =
                      TextEditingController();
                  TextEditingController lanchTextInputController =
                      TextEditingController();
                  TextEditingController lanch2TextInputController =
                      TextEditingController();
                  TextEditingController dinnerTextInputController =
                      TextEditingController();
                  @override
                  void dispose() {
                    breakfastTextInputController.dispose();
                    lanchTextInputController.dispose();
                    lanch2TextInputController.dispose();
                    dinnerTextInputController.dispose();

                    super.dispose();
                  }

                  breakfastTextInputController.text =
                      snapshot.requireData.docs[index]['breakfast']!;
                  lanchTextInputController.text =
                      snapshot.requireData.docs[index]['lanch']!;
                  lanch2TextInputController.text =
                      snapshot.requireData.docs[index]['lanch2']!;
                  dinnerTextInputController.text =
                      snapshot.requireData.docs[index]['dinner']!;
                  return Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
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
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
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
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onEditingComplete: () async {
                          await FirebaseFirestore.instance
                              .collection('menu')
                              .doc((index + 1).toString())
                              .update({
                            'name': 'Понедельник',
                            'breakfast': breakfastTextInputController.text,
                            'lanch': lanchTextInputController.text,
                            'lanch2': lanch2TextInputController.text,
                            'dinner': dinnerTextInputController.text
                          });
                        },
                        style: TextStyle(
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1),
                            fontFamily: 'comfortaa'),
                        keyboardType: TextInputType.text,
                        controller: breakfastTextInputController,
                        autocorrect: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                          hintStyle: TextStyle(
                              color: (darkMode)
                                  ? textColor
                                  : Color.fromRGBO(26, 31, 41, 1),
                              fontSize: 16,
                              fontFamily: 'comfortaa'),
                          hintText: 'Завтрак',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
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
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onEditingComplete: () {
                          setState(() async {
                            await FirebaseFirestore.instance
                                .collection('menu')
                                .doc((index + 1).toString())
                                .update({
                              'name': 'Понедельник',
                              'breakfast': breakfastTextInputController.text,
                              'lanch': lanchTextInputController.text,
                              'lanch2': lanch2TextInputController.text,
                              'dinner': dinnerTextInputController.text
                            });
                          });
                        },
                        style: TextStyle(
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1),
                            fontFamily: 'comfortaa'),
                        keyboardType: TextInputType.text,
                        controller: lanchTextInputController,
                        autocorrect: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                          hintStyle: TextStyle(
                              color: (darkMode)
                                  ? textColor
                                  : Color.fromRGBO(26, 31, 41, 1),
                              fontSize: 16,
                              fontFamily: 'comfortaa'),
                          hintText: 'Обед',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
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
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onEditingComplete: () {
                          setState(() async {
                            await FirebaseFirestore.instance
                                .collection('menu')
                                .doc((index + 1).toString())
                                .update({
                              'name': 'Понедельник',
                              'breakfast': breakfastTextInputController.text,
                              'lanch': lanchTextInputController.text,
                              'lanch2': lanch2TextInputController.text,
                              'dinner': dinnerTextInputController.text
                            });
                          });
                        },
                        style: TextStyle(
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1),
                            fontFamily: 'comfortaa'),
                        keyboardType: TextInputType.text,
                        controller: lanch2TextInputController,
                        autocorrect: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                          hintStyle: TextStyle(
                              color: (darkMode)
                                  ? textColor
                                  : Color.fromRGBO(26, 31, 41, 1),
                              fontSize: 16,
                              fontFamily: 'comfortaa'),
                          hintText: 'Полдник',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
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
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onEditingComplete: () {
                          setState(() async {
                            await FirebaseFirestore.instance
                                .collection('menu')
                                .doc((index + 1).toString())
                                .update({
                              'name': 'Понедельник',
                              'breakfast': breakfastTextInputController.text,
                              'lanch': lanchTextInputController.text,
                              'lanch2': lanch2TextInputController.text,
                              'dinner': dinnerTextInputController.text
                            });
                          });
                        },
                        style: TextStyle(
                            color: (darkMode)
                                ? textColor
                                : Color.fromRGBO(26, 31, 41, 1),
                            fontFamily: 'comfortaa'),
                        keyboardType: TextInputType.text,
                        controller: dinnerTextInputController,
                        autocorrect: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                          hintStyle: TextStyle(
                              color: (darkMode)
                                  ? textColor
                                  : Color.fromRGBO(26, 31, 41, 1),
                              fontSize: 16,
                              fontFamily: 'comfortaa'),
                          hintText: 'Ужин',
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        });
  }
}
