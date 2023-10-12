// ignore_for_file: avoid_web_libraries_in_flutter, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/models/user_model.dart';

enum MenuItem { item1, item2 }

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  UserModel loggedInUser = UserModel();
  User? user = FirebaseAuth.instance.currentUser;
  bool isHiddenPassword = true;
  TextEditingController firstNameTextInputController = TextEditingController();
  TextEditingController secondNameTextInputController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameTextInputController.dispose();
    secondNameTextInputController.dispose();

    super.dispose();
  }

  Future<void> rename() async {
    final navigator = Navigator.of(context);
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    await FirebaseFirestore.instance.collection('users').doc(user!.uid).update({
      'email': user?.email,
      'firstName': firstNameTextInputController.text,
      'secondName': secondNameTextInputController.text,
      'uid': user?.uid
    });
    setState(() {
      navigator.pushNamedAndRemoveUntil(
          '/home', (Route<dynamic> route) => false);
    });
  }

  Future<void> signOut() async {
    final navigator = Navigator.of(context);
    FirebaseAuth.instance.signOut();
    navigator.pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  Future<void> delete() async {
    final navigator = Navigator.of(context);
    FirebaseFirestore.instance.collection('users').doc(user!.uid).delete();
    FirebaseAuth.instance.currentUser!.delete();
    navigator.pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

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

  @override
  Widget build(BuildContext context) {
    ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails) {
      return Scaffold(
          backgroundColor: background,
          body: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('lib/assets/images/Vector.svg'),
                    const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ));
    };
    firstNameTextInputController.text = loggedInUser.firstName!;
    secondNameTextInputController.text = loggedInUser.secondName!;
    return Scaffold(
      backgroundColor: background,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: appColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(176, 182, 189, 1),
          ),
        ),
        title: const Text(
          'Редактирование профиля',
          style: TextStyle(
              color: Color.fromRGBO(176, 182, 189, 1),
              fontWeight: FontWeight.bold,
              fontFamily: 'comfortaa',
              fontSize: 17),
        ),
        actions: [
          PopupMenuButton<MenuItem>(
            icon: const Icon(
              Icons.more_vert,
              color: Color.fromRGBO(176, 182, 189, 1),
            ),
            onSelected: (value) async {
              setState(() {
                if (value == MenuItem.item1) {
                  signOut();
                } else {
                  delete();
                }
              });
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                  value: MenuItem.item1,
                  child: Text(
                    'Выйти из аккаунта',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'comfortaa',
                        fontSize: 17),
                  )),
              PopupMenuItem(
                  value: MenuItem.item2,
                  child: Text(
                    'Удалить аккаунт',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'comfortaa',
                        fontSize: 17),
                  ))
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextStyle(color: textColor, fontFamily: 'comfortaa'),
                keyboardType: TextInputType.name,
                validator: (firstName) => firstName != null && firstName.isEmpty
                    ? 'Введите Имя'
                    : null,
                controller: firstNameTextInputController,
                autocorrect: false,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(162, 162, 162, 1),
                      fontSize: 16,
                      fontFamily: 'comfortaa'),
                  hintText: 'Введите имя',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(color: textColor, fontFamily: 'comfortaa'),
                keyboardType: TextInputType.name,
                validator: (secondname) =>
                    secondname != null && secondname.isEmpty
                        ? 'Введите Фамилию'
                        : null,
                controller: secondNameTextInputController,
                autocorrect: false,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(162, 162, 162, 1),
                      fontSize: 16,
                      fontFamily: 'comfortaa'),
                  hintText: 'Введите фамилию',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(5),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mapColor)),
                onPressed: rename,
                child: const SizedBox(
                    height: 34,
                    child: Center(
                        child: Text(
                      'Сохранить',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'comfortaa',
                          fontWeight: FontWeight.bold),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
