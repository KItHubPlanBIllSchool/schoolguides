// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hackathon/data/colors.dart';
import 'package:hackathon/scripts/snack_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHiddenPassword = true;
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final user = FirebaseAuth.instance.currentUser;

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();

    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e.code);

      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        SnackBarService.showSnackBar(
          context,
          'Неправильный email или пароль. Повторите попытку',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
        return;
      }
    }

    navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(30.10),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SvgPicture.asset(
                'lib/assets/images/Vector.svg',
                height: 75,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Вход',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'onest',
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Введите данные своего аккаунта',
                    style: TextStyle(
                        color: const Color.fromRGBO(164, 172, 183, 1),
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(153, 216, 216, 216),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  style: TextStyle(color: textColor),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  controller: emailTextInputController,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Введите правильный Email'
                          : null,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 0, 0),
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.573),
                        fontSize: 16,
                        fontFamily: 'onest'),
                    hintText: 'Введите эл.почту',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(153, 216, 216, 216),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: textColor,
                  ),
                  autocorrect: false,
                  controller: passwordTextInputController,
                  obscureText: isHiddenPassword,
                  validator: (value) => value != null && value.length < 6
                      ? 'Минимум 6 символов'
                      : null,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(15, -10, 10, -5),
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 16,
                        fontFamily: 'onest'),
                    hintText: 'Пароль',
                    suffix: GestureDetector(
                      onTap: togglePasswordView,
                      child: Icon(
                        isHiddenPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 60.0,
                width: 1001,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(64, 123, 255, 1)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                  ),
                  onPressed: login,
                  child: const SizedBox(
                      height: 34,
                      width: 221,
                      child: Center(
                          child: Text(
                        'Войти',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'onest'),
                      ))),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed('/signup'),
                child: Text(
                  'Нет аккаунта? Регистрация',
                  style: TextStyle(
                      color: Color.fromRGBO(176, 182, 189, 1),
                      fontFamily: 'comfortaa',
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
