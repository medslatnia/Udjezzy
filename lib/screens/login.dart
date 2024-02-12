import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  var _formKey = GlobalKey<FormState>();

  final _minimumPadding = 5.0;

  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();

  String _check() {
    double email = double.parse(emailContoller.text);
    double password = double.parse(passwordContoller.text);
    String result = 'Login success';
    return result;
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(
      image: assetImage,
      width: 580.0,
      height: 250.0,);
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 1.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme
        .of(context)
        .textTheme
        .headline6;

    return Scaffold(

      appBar: AppBar(
        title: Text(
            "Login",
            style: TextStyle(color: Colors.white)
        )
        ,
        backgroundColor
            :
        Color
          (
            0xFFE3001B
        )
        ,
      )
      ,

      body:

      Form(
        key: _formKey,
        child:
        Padding(
          padding: EdgeInsets.all(_minimumPadding * 1.5),
          child: ListView(
            children: <Widget>[
              getImageAsset(),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding * 1.0,
                      bottom: _minimumPadding * 1.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: textStyle,
                    controller: emailContoller,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: "Enter your email",
                        labelStyle: textStyle,
                        errorStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 15.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  )),

              Padding(
                  padding: EdgeInsets.only(
                    top: _minimumPadding * 1.0, bottom: _minimumPadding * 1.0,),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: textStyle,
                    controller: passwordContoller,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: "Enter your password",
                        labelStyle: textStyle,
                        errorStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 15.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  )),

              Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme
                              .of(context)
                              .primaryColor,
                          onPrimary: Theme
                              .of(context)
                              .primaryColor,
                        ),
                        child: Text(
                          'Login',
                          textScaleFactor: 1.5,
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Form is valid, proceed with form submission or other actions
                            return null; // Placeholder, replace with your actual logic
                          }
                        },


                      ),
                    ),
                  ],
                ),


              )


              ,
              Container
                (
                width: _minimumPadding * 5,
              ),

              Row(

                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          print("Forgot Password? button pressed");
                        },
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // Aligns the children to the bottom
                crossAxisAlignment: CrossAxisAlignment.center,
                // Aligns the children to the center horizontally
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Aligns the children horizontally in the center
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            print("Register Now button pressed");
                          },
                          child: Text(
                            'Register Now',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


            ],

          ),
        ),
      ),
    );
  }

}
