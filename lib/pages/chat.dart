import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hackathon/data/colors.dart';

class Chat extends StatefulWidget {
  String name = '';
  String lastName = '';
  String email = '';
  String uid = '';
  Chat(
      {super.key,
      required this.name,
      required this.lastName,
      required this.email,
      required this.uid});

  @override
  State<Chat> createState() => _ChatState(name, lastName, email, uid);
}

class _ChatState extends State<Chat> {
  TextEditingController messTextInputController = TextEditingController();
  String name = '';
  String lastName = '';
  String email = '';
  String uid = '';
  _ChatState(this.name, this.lastName, this.email, this.uid);
  @override
  void dispose() {
    messTextInputController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: background,
      appBar: AppBar(
        title: Text(
          '${lastName} ${name}',
          style: TextStyle(color: Colors.white, fontFamily: 'comfortaa'),
        ),
        elevation: 0,
        backgroundColor: appColor,
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 70,
              color: appColor,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      width: 280,
                      child: TextField(
                        style: TextStyle(
                            color: textColor, fontFamily: 'comfortaa'),
                        keyboardType: TextInputType.text,
                        controller: messTextInputController,
                        autocorrect: false,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(176, 182, 189, 1),
                              fontSize: 16,
                              fontFamily: 'comfortaa'),
                          hintText: 'Введите сообщение...',
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send_outlined,
                        color: textColor,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
