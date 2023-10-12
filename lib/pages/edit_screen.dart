import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/colors.dart';

class EditScreen extends StatefulWidget {
  String name = '';
  String events = '';
  String id = '';
  String info = '';
  String list = '';
  String responsible = '';
  EditScreen({
    super.key,
    required this.name,
    required this.events,
    required this.info,
    required this.list,
    required this.responsible,
    required this.id,
  });

  @override
  State<EditScreen> createState() =>
      _EditScreenState(name, events, info, list, responsible, id);
}

class _EditScreenState extends State<EditScreen> {
  String name = '';
  String info = '';
  String events = '';
  String id = '';
  String list = '';
  String responsible = '';
  _EditScreenState(
    this.name,
    this.events,
    this.info,
    this.list,
    this.responsible,
    this.id,
  );
  @override
  final formKey = GlobalKey<FormState>();
  TextEditingController nameTextInputController = TextEditingController();
  TextEditingController eventTextInputController = TextEditingController();
  TextEditingController infoTextInputController = TextEditingController();
  TextEditingController listTextInputController = TextEditingController();
  TextEditingController responsibleTextInputController =
      TextEditingController();
  @override
  void dispose() {
    nameTextInputController.dispose();
    eventTextInputController.dispose();
    infoTextInputController.dispose();
    listTextInputController.dispose();
    responsibleTextInputController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    nameTextInputController.text = name;
    eventTextInputController.text = events;
    infoTextInputController.text = info;
    listTextInputController.text = list;
    responsibleTextInputController.text = responsible;
    return Scaffold(
      backgroundColor: background,
      body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(color: textColor, fontFamily: 'comfortaa'),
                    keyboardType: TextInputType.text,
                    controller: nameTextInputController,
                    autocorrect: false,
                    validator: (name) => name != null && name.isEmpty
                        ? 'Введите название'
                        : null,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(162, 162, 162, 1),
                          fontSize: 16,
                          fontFamily: 'comfortaa'),
                      hintText: 'Название',
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: textColor, fontFamily: 'comfortaa'),
                    keyboardType: TextInputType.text,
                    controller: eventTextInputController,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(176, 182, 189, 1),
                          fontSize: 16,
                          fontFamily: 'comfortaa'),
                      hintText: 'Мероприятия',
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: textColor, fontFamily: 'comfortaa'),
                    keyboardType: TextInputType.text,
                    controller: infoTextInputController,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(176, 182, 189, 1),
                          fontSize: 16,
                          fontFamily: 'comfortaa'),
                      hintText: 'Информация',
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: textColor, fontFamily: 'comfortaa'),
                    keyboardType: TextInputType.text,
                    controller: listTextInputController,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(176, 182, 189, 1),
                          fontSize: 16,
                          fontFamily: 'comfortaa'),
                      hintText: 'Список оборудования',
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: textColor, fontFamily: 'comfortaa'),
                    keyboardType: TextInputType.text,
                    controller: responsibleTextInputController,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(176, 182, 189, 1),
                          fontSize: 16,
                          fontFamily: 'comfortaa'),
                      hintText: 'Ответственный',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(5),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(150, 166, 192, 1))),
                      onPressed: () async {
                        final navigator = Navigator.of(context);
                        final isValid = formKey.currentState!.validate();
                        if (!isValid) return;

                        await FirebaseFirestore.instance
                            .collection('cabinet')
                            .doc(id)
                            .update({
                          'events': eventTextInputController.text,
                          'info': infoTextInputController.text,
                          'list': listTextInputController.text,
                          'name': nameTextInputController.text,
                          'responsible': responsibleTextInputController.text
                        });
                        setState(() {
                          navigator.pushNamedAndRemoveUntil(
                              '/home', (Route<dynamic> route) => false);
                        });
                      },
                      child: const SizedBox(
                          height: 34,
                          width: 345,
                          child: Center(
                              child: Text(
                            'Изменить',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'comfortaa'),
                          ))),
                    ),
                  ),
                ],
              ))),
    );
  }
}
