import 'package:flutter/material.dart';

class AccountLayout extends StatefulWidget {
  @override
  _AccountLayoutState createState() => _AccountLayoutState();
}

class _AccountLayoutState extends State<AccountLayout> {

  void _moveBack() => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[

          Container(
            height: 160,
            width: double.infinity,
            color: Color.fromRGBO(211, 219, 234, 0.3),
            child: Stack(
              children: <Widget>[

                // create account image start
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(right: 24),
                  child: Image(
                    image: AssetImage('assets/images/create_account.png'),
                    height: 134,
                  ),
                ),
                // create account image end

                // login text start
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Color.fromRGBO(40, 44, 63, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Text(
                          "Enter your phone number to continue",
                          style: TextStyle(
                            color: Color(0xff7e808c),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                // login text end

                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Icon(Icons.arrow_back),
                  ),
                  onTap: _moveBack,
                )
               
              ],
            ),
          ),


          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'PHONE NUMBER',
                    labelStyle: Theme.of(context).textTheme.bodyText2,
                    prefix: Text("+91-"),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffbebfc5),
                      ),
                    ),
                  ),
                  autofocus: false,
                  keyboardType: TextInputType.phone,
                ),

                Container(height: 32),

                MaterialButton(
                  height: 48,
                  color: Theme.of(context).accentColor,
                  child: Text(
                    "CONTINUE",
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),

        ],
      )
    );
  }
}