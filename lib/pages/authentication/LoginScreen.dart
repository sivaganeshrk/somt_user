import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String phoneNumber;
  final _formkey = GlobalKey<FormState>();
  String _email, _password;
  bool _obscureText = true;
//  Widget _showLogo() {
//    return Container(
//        child: Image.asset("images/milk_drop.jpg", height: 160, width: 160));
//  }

  Widget _showEmail() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        onSaved: (val) => _email = val,
        validator: (val) => !val.contains('@') ? 'Invalid Email' : null,
        decoration: InputDecoration(
//          border: OutlineInputBorder(),
          labelText: 'Email',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          hintText: 'Enter your Email',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue[400]),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          icon: Icon(Icons.email, color: Colors.white),
        ),
      ),
    );
  }

  Widget _showPassword() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        onSaved: (val) => _password = val,
        validator: (val) => val.length < 7 ? 'Password too short' : null,
        obscureText: _obscureText,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,color:Colors.white),
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
//          border: OutlineInputBorder(),
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue[400]),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: 'Enter your Password',
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(Icons.lock, color: Colors.white),
        ),
      ),
    );
  }

  Widget _showFormActions() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              color: Colors.white,
              onPressed: () {
                _submit();
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => SignupPage()));
            },
            child: Text(
              'New user? Register',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _submit() {
    final form = _formkey.currentState;
    if (form.validate()) {
      form.save();
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => HomePage()));
      print('Email: $_email,Password: $_password');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Opacity(
            opacity: 0.8,
            child: Container(
              height: MediaQuery.of(context).size.height,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.0,],
                  colors: [
                 Colors.blue.shade500,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      //_showLogo(),
                      SafeArea(

                        child: Padding(
                          padding: const EdgeInsets.only(top: 80.0),
                          child: Text(
                            'Welcome to Origina',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),

                      _showEmail(),
                      _showPassword(),
                      _showFormActions(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}