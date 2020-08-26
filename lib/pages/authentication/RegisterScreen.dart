import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String phoneNumber;
  final _formkey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _email, _password, _username, _confirmPassword, _mobile;
  bool _obscureText = true;
//  Widget _showLogo() {
//    return Container(
//        child: Image.asset("images/milk_drop.jpg", height: 160, width: 160));
//  }

  Widget _showUsername() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        onSaved: (val)=>_username = val,
        validator: (val)=>val.length < 6 ? 'Username too short' : null,
        decoration: InputDecoration(
          //  border: OutlineInputBorder(),
          labelText: 'Name',
          labelStyle: TextStyle(color: Colors.white),
          hintText: 'Enter your name',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue[400]),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          icon: Icon(Icons.perm_identity, color: Colors.white),
        ),
      ),
    );
  }
  Widget _showMobile() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        onSaved: (val)=>_mobile = val,
        validator: (val)=>val.length < 10 ? 'Enter valid mobile number' : null,
        decoration: InputDecoration(
          //  border: OutlineInputBorder(),
          labelText: 'Mobile',
          labelStyle: TextStyle(color: Colors.white),
          hintText: 'Enter your mobile number',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue[400]),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          icon: Icon(Icons.call, color: Colors.white),
        ),
      ),
    );
  }
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
            child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off ,color:Colors.white),
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
          hintText: 'Enter your Password',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue[400]),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          icon: Icon(Icons.lock, color: Colors.white),
        ),
      ),
    );
  }


  Widget _showConfirmPassword() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        onSaved: (val) => _confirmPassword = val,
        validator: (val) => val.length < 7 ? 'Password too short' : null,
        obscureText: _obscureText,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off , color:Colors.white),
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
//          border: OutlineInputBorder(),
          labelText: 'Confirm Password',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          hintText: 'Enter your Password',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue[400]),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
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
                        "SIGNUP",
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
//                      builder: (context) => LoginPage()));
           },
            child: Text(
              'Already a user? Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
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
      print('Email: $_email,Password: $_password,Name: $_username,mobile : $_mobile');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Opacity(
              opacity: 0.8,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.0],
                    colors: [
                      Colors.blue.shade500,

                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),


            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        //_showLogo(),
                        SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50.0),
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
                         SizedBox(height: 80),
                        _showUsername(),
                        _showEmail(),
                        _showMobile(),
                        _showPassword(),
                        _showConfirmPassword(),
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