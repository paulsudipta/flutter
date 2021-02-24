import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget {
  @override
  _firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState.validate()) {
      print("Valid");
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("second_screen"),
        ),
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: Form(
              autovalidate: true,
              key: formkey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Name", border: OutlineInputBorder()),
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Required";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Contact Number",
                        border: OutlineInputBorder()),
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Required";
                      } else if (val.length < 10) {
                        return "Atleat 10 number required";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email", border: OutlineInputBorder()),
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Required";
                      } else {
                        return null;
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: MaterialButton(
                      color: Colors.blue[900],
                      height: 40.0,
                      minWidth: 200.0,
                      splashColor: Colors.green,
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      shape: StadiumBorder(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
