// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/models/user_model.dart';
import 'package:hackathon/scripts/snack_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  bool isHiddenPassword = true;
  TextEditingController firstNameTextInputController = TextEditingController();
  TextEditingController secondNameTextInputController = TextEditingController();
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  TextEditingController passwordTextRepeatInputController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    passwordTextRepeatInputController.dispose();
    firstNameTextInputController.dispose();
    secondNameTextInputController.dispose();

    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> signUp() async {
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    if (passwordTextInputController.text !=
        passwordTextRepeatInputController.text) {
      SnackBarService.showSnackBar(
        context,
        'Пароли должны совпадать',
        true,
      );
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e.code);

      if (e.code == 'email-already-in-use') {
        SnackBarService.showSnackBar(
          context,
          'Такой Email уже используется, повторите попытку с использованием другого Email',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
      }
    }

    PostDetailsToFirestore();

    navigator.pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  // ignore: non_constant_identifier_names
  PostDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = firstNameTextInputController.text;
    userModel.secondName = secondNameTextInputController.text;

    await firebaseFirestore
        .collection('users')
        .doc(user.uid)
        .set(userModel.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        leading: BackButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 1))),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: background,
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 30),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SvgPicture.asset(
                  'lib/assets/images/Vector.svg',
                  height: 105,
                ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 180, 0),
                  child: Center(
                      child: Text(
                    'Регистрация',
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'onest'),
                  )),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 100, 0),
                  child: Center(
                      child: Text(
                    'Введите свою личную информацию',
                    style: TextStyle(
                        color: const Color.fromRGBO(164, 172, 183, 1),
                        fontSize: 12,
                        fontFamily: 'onest'),
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 250, 0),
                  child: Center(
                      child: Text(
                    'ФИО',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'onest'),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(153, 216, 216, 216),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                  style: TextStyle(color: textColor, fontFamily: 'onest'),
                  keyboardType: TextInputType.name,
                  controller: firstNameTextInputController,
                  autocorrect: false,
                  validator: (firstName) =>
                      firstName != null && firstName.isEmpty
                          ? 'Введите Имя'
                          : null,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(176, 182, 189, 1),
                        fontSize: 16,
                        fontFamily: 'onest'),
                    hintText: 'Имя',
                  ),
                ),
                ),
               
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(153, 216, 216, 216),
                    borderRadius: BorderRadius.circular(20),
                  ),
                 child: TextFormField(
                  style: TextStyle(color: textColor, fontFamily: 'onest'),
                  keyboardType: TextInputType.name,
                  controller: secondNameTextInputController,
                  autocorrect: false,
                  validator: (secondname) =>
                      secondname != null && secondname.isEmpty
                          ? 'Введите Фамилию'
                          : null,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(176, 182, 189, 1),
                        fontSize: 16,
                        fontFamily: 'onest'),
                    hintText: 'Фамилия',
                  ),
                ),
                ),
                
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 250, 0),
                  child: Center(
                      child: Text(
                    'Почта',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'onest'),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(153, 216, 216, 216),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                  style: TextStyle(color: textColor, fontFamily: 'onest'),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  controller: emailTextInputController,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Введите правильный Email'
                          : null,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsetsDirectional.fromSTEB(50, 7, 0, 0),
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(176, 182, 189, 1),
                        fontSize: 16,
                        fontFamily: 'onest'),
                    hintText: 'Введите Email',
                  ),
                ),
                ),

                
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 250, 0),
                  child: Center(
                      child: Text(
                    'Пароль',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'onest'),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(153, 216, 216, 216),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                  style: TextStyle(color: textColor, fontFamily: 'onest'),
                  autocorrect: false,
                  controller: passwordTextInputController,
                  obscureText: isHiddenPassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => value != null && value.length < 6
                      ? 'Минимум 6 символов'
                      : null,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(176, 182, 189, 1),
                        fontSize: 16,
                        fontFamily: 'onest'),
                    hintText: 'Введите пароль',
                    suffix: InkWell(
                      onTap: togglePasswordView,
                      child: Icon(
                        isHiddenPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                ),
                
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 140, 0),
                  child: Center(
                      child: Text(
                    'Повторить пароль',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'onest'),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(153, 216, 216, 216),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: textColor, fontFamily: 'onest'),
                    autocorrect: false,
                    controller: passwordTextRepeatInputController,
                    obscureText: isHiddenPassword,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value != null && value.length < 6
                        ? 'Минимум 6 символов'
                        : null,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(176, 182, 189, 1),
                          fontSize: 16,
                          fontFamily: 'onest'),
                      hintText: 'Введите пароль еще раз',
                      suffix: InkWell(
                        onTap: togglePasswordView,
                        child: Icon(
                          isHiddenPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(5),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(64, 123, 255, 1))),
                    onPressed: signUp,
                    child: const SizedBox(
                        height: 54,
                        width: 345,
                        child: Center(
                            child: Text(
                          'Зарегистрироваться',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'onest'),
                        ))),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
