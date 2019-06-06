import 'package:flutter/material.dart';

void main() => runApp(
      new MyApp(),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showPass = false;
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  var _usernameError = "tai khoan khong hop le";
  var _passwordError = "mat khau phai duoi 6 ki tu";
  bool _userInvalid = false;
  bool _passwordInvalid = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('LOGIN'),
        ),
        body: new Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            width: double.infinity,
            alignment: Alignment.topLeft,
            //Show Widget with Column
            child: SingleChildScrollView(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Column 1
                  new Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    child: new Image(
                      image: new AssetImage('images/user.png'),
                      width: 60.0,
                      height: 60.0,
                    ),
                  ),

                  //Column 2
                  new Container(
                    padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
                    child: new Text("Hello -_- \nWelcome Back",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),

                  //Column 3
                  new Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: new TextField(
                        controller: _userController,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          labelText: "Username",
                          errorText: _userInvalid ? _usernameError : null,
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 18.0),
                        ),
                      )),

                  //Column 4
                  new Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      new Padding(
                          padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
                          child: new TextField(
                            obscureText: !_showPass,
                            controller: _passwordController,
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              labelText: "Password",
                              errorText:
                                  _passwordInvalid ? _passwordError : null,
                              labelStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18.0),
                            ),
                          )),
                      new Container(
                          child: new GestureDetector(
                        onTap: onToggleShowPass,
                        child: new Text(
                          _showPass ? "Hide" : "Show",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                    ],
                  ),

                  //Column 5
                  new Container(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    width: double.infinity,
                    height: 100.0,
                    child: new RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: onSignInClicked,
                      color: Colors.blue,
                      child: new Text(
                        "SIGN IN",
                        style: TextStyle(fontSize: 24.0, color: Colors.white),
                      ),
                    ),
                  ),

                  //Column 6
                  new Container(
                      padding: const EdgeInsets.fromLTRB(0, 16, 16, 32),
                      child: Row(
                        children: <Widget>[
                          new Expanded(
                              flex: 5,
                              child: new Row(
                                children: <Widget>[
                                  new Text("NEW USER?",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      )),
                                  new Text(
                                    " SIGN UP",
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.blue),
                                  ),
                                ],
                              )),
                          new Expanded(
                            flex: 5,
                            child: new Text(
                              "FORGOT PASSWORD?",
                              style:
                                  TextStyle(fontSize: 16.0, color: Colors.blue),
                              textAlign: TextAlign.right,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            )),
      ),
    );
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onSignInClicked() {
    setState(() {
      if (!_userController.text.contains("@") ||
          _userController.text.length < 6) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }

      if (_passwordController.text.length < 6) {
        _passwordInvalid = true;
      } else {
        _passwordInvalid = false;
      }
    });
  }
}
