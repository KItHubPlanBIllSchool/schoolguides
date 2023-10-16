// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/pages/description.dart';
import 'package:zoom_widget/zoom_widget.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('cabinet').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.0, bottom: 100),
                child: Zoom(
                  backgroundColor: Colors.white,
                  initTotalZoomOut: true,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Center(
                      child: (currentIndex == 0)
                          ? Stack(
                              children: [
                                SvgPicture.asset(
                                    'lib/assets/images/Group 2.svg'),
                                    
                                Padding(
                                  padding: EdgeInsets.only(left: 2, top: 177),
                                  
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.10')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.10')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.10')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 87,
                                      height: 51,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 143, top: 140),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.9')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.9')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.9')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 54,
                                      height: 51,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 218, top: 126),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.1')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.1')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.1')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 31,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 250, top: 126),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.2')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.2')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.2')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 30,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 282, top: 126),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.3')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.3')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.3')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 29,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 313, top: 126),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.4')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.4')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.4')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 21,
                                      height: 31,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 313, top: 159),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.5')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.5')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.5')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 21,
                                      height: 31,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 313, top: 191),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.6')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.6')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.6')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 21,
                                      height: 32,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 283, top: 187),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.7')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.7')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.7')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 13,
                                      height: 10,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 237, top: 158),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.8')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.8')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.8')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 34,
                                      height: 17,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 36, top: 50),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.11')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.11')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.11')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 45,
                                      height: 19,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 50),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.12')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.12')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.12')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 0, 0, 0),
                                      width: 9,
                                      height: 19,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 17),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.13')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.13')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.13')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 33,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 49, top: 17),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.14')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.14')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.14')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 31,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 81, top: 17),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.15')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.15')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.15')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 31,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 144, top: 2),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.16')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.16')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.16')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 17,
                                      height: 22,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 162, top: 2),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.17')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.17')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.17')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 17,
                                      height: 22,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 181, top: 2),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.18')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.18')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.18')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 15,
                                      height: 22,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 208, top: 2),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.19')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.19')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.19')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 9,
                                      height: 22,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 250, top: 2),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.20')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.20')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.20')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 19,
                                      height: 22,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 278, top: 2),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.21')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.21')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.21')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 19,
                                      height: 58,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 234, top: 35),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.22')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.22')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.22')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 27,
                                      height: 34,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 206, top: 35),
                                  child: GestureDetector(
                                    onTap: () {
                                      FirebaseFirestore.instance
                                          .collection('cabinet')
                                          .doc('1.23')
                                          .get()
                                          .then((DocumentSnapshot
                                              documentSnapshot) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(
                                                      name: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.23')
                                                          .id,
                                                      events: documentSnapshot[
                                                          'events'],
                                                      info: documentSnapshot[
                                                          'info'],
                                                      list: documentSnapshot[
                                                          'list'],
                                                      responsible:
                                                          documentSnapshot[
                                                              'responsible'],
                                                      id: FirebaseFirestore
                                                          .instance
                                                          .collection('cabinet')
                                                          .doc('1.23')
                                                          .id,
                                                    )));
                                      });
                                    },
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 255, 0),
                                      width: 27,
                                      height: 34,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : (currentIndex == 1)
                              ? Stack(
                                  children: [
                                    SvgPicture.asset(
                                        'lib/assets/images/Group 2.svg'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 218, top: 126),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.1')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.1')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.1')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 31,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 250, top: 126),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.2')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.2')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.2')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 31,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 282, top: 126),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.3')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.3')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.3')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 29,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 312, top: 126),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.4')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.4')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.4')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 22,
                                          height: 31,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 312, top: 158),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.5')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.5')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.5')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 22,
                                          height: 32,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 312, top: 191),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.6')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.6')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.6')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 22,
                                          height: 33,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 247, top: 158),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.7')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.7')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.7')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 24,
                                          height: 18,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 206, top: 176),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.8')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.8')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.8')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 8,
                                          height: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 143, top: 192),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.9')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.9')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.9')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 70,
                                          height: 36,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 153, top: 139),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.10')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.10')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.10')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 44,
                                          height: 52,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 23, top: 129),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.11')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.11')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.11')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 66,
                                          height: 46,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 36, top: 49),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.12')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.12')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.12')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 46,
                                          height: 21,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, top: 49),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.13')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.13')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.13')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color: Colors.amber,
                                          width: 9,
                                          height: 21,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 17),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.14')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.14')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.14')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 33,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 49, top: 17),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.15')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.15')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.15')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 31,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 81, top: 17),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.16')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.16')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.16')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 31,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 144, top: 2),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.17')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.17')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.17')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 35,
                                          height: 67,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 198, top: 2),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.18')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.18')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.18')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 19,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 228, top: 2),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.19')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.19')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.19')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 25,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 255, top: 2),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.20')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.20')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.20')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 22,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 278, top: 2),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.21')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.21')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.21')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 19,
                                          height: 29,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 278, top: 32),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.22')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.22')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.22')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 19,
                                          height: 29,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 206, top: 34),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('2.23')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('2.23')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('2.23')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 27,
                                          height: 36,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Stack(
                                  children: [
                                    SvgPicture.asset(
                                        'lib/assets/images/Group 2.svg'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 13, top: 15),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.22')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.22')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.22')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 34,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 48, top: 15),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.23')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.23')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.23')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 31,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 80, top: 15),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.24')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.24')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.24')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 31,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 24, top: 49),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.21')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.21')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.21')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 9,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35, top: 49),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.20')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.20')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.20')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 45,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 190, top: 1),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.25')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.25')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.25')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 25,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 228, top: 1),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.26')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.26')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.26')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 32,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 262, top: 1),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.27')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.27')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.27')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 34,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 277, top: 25),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.28')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.28')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.28')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 19,
                                          height: 35,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 205, top: 34),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.29')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.29')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.29')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 58,
                                          height: 34,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 188, top: 52),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.30')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.30')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.30')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 15,
                                          height: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 217, top: 125),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.1')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.1')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.1')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 31,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 250, top: 125),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.2')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.2')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.2')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 29,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 281, top: 125),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.3')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.3')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.3')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 29,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 312, top: 125),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.4')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.4')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.4')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 20,
                                          height: 31,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 312, top: 158),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.5')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.5')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.5')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 21,
                                          height: 30,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 312, top: 190),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.6')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.6')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.6')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 21,
                                          height: 8,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 312, top: 200),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.7')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.7')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.7')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 21,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 279, top: 185),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.8')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.8')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.8')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 16,
                                          height: 22,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 246, top: 157),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.9')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.9')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.9')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 24,
                                          height: 17,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 201, top: 176),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.10')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.10')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.10')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 12,
                                          height: 15,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 201, top: 192),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.11')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.11')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.11')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 12,
                                          height: 7,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 201, top: 201),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.12')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.12')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.12')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 12,
                                          height: 7,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 190, top: 215),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.13')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.13')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.13')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 22,
                                          height: 12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 177, top: 215),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.14')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.14')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.14')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 0, 0, 1),
                                          width: 11,
                                          height: 12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 165, top: 215),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.15')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.15')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.15')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 11,
                                          height: 12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 154, top: 215),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.16')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.16')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.16')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 9,
                                          height: 12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 142, top: 212),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.17')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.17')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.17')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 0, 0, 1),
                                          width: 10,
                                          height: 15,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 142, top: 197),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.18')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.18')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.18')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(167, 51, 51, 1),
                                          width: 10,
                                          height: 13,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 160, top: 192),
                                      child: GestureDetector(
                                        onTap: () {
                                          FirebaseFirestore.instance
                                              .collection('cabinet')
                                              .doc('3.19')
                                              .get()
                                              .then((DocumentSnapshot
                                                  documentSnapshot) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DescriptionScreen(
                                                          name:
                                                              FirebaseFirestore
                                                                  .instance
                                                                  .collection(
                                                                      'cabinet')
                                                                  .doc('3.19')
                                                                  .id,
                                                          events:
                                                              documentSnapshot[
                                                                  'events'],
                                                          info:
                                                              documentSnapshot[
                                                                  'info'],
                                                          list:
                                                              documentSnapshot[
                                                                  'list'],
                                                          responsible:
                                                              documentSnapshot[
                                                                  'responsible'],
                                                          id: FirebaseFirestore
                                                              .instance
                                                              .collection(
                                                                  'cabinet')
                                                              .doc('3.19')
                                                              .id,
                                                        )));
                                          });
                                        },
                                        child: Container(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          width: 36,
                                          height: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 50),
                child: Container(
                  decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 30,
                  
                ),
              ),
            ],
          );
        });
  }
}
