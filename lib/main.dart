import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            formField(
              hintText: "Enter Name",
              icon: Icon(Icons.person),
            ),
            SizedBox(
              height: 10,
            ),
            formField(
              hintText: "Enter Email",
              icon: Icon(Icons.email),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10,
            ),
            formField(
              hintText: "Enter Mobile No",
              icon: Icon(Icons.call),
              maxLength: 10,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            formField(
              hintText: "Enter Address",
              icon: Icon(Icons.location_city),
            ),
            SizedBox(
              height: 10,
            ),
            formField(
              hintText: "Enter Password",
              icon: Icon(Icons.lock),
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }
}

class formField extends StatelessWidget {
  String hintText;
  TextInputType keyboardType;
  Icon icon;
  int maxLength;
  TextEditingController controller;
  bool isPassword;

  formField({
    this.keyboardType,
    this.hintText,
    this.maxLength,
    this.icon,
    this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: TextStyle(fontSize: 13),
      maxLength: maxLength,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: "${hintText}",
        hintStyle: TextStyle(
          fontSize: 13,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.only(left: 15, right: 8, top: 5, bottom: 5),
        counterText: "",
        prefixIcon: icon,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
    );
  }
}
