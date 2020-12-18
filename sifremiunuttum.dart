import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(Sifremiunuttum());
}
String email;
final degerKey = GlobalKey<FormState>();
class Sifremiunuttum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          
        resizeToAvoidBottomPadding: false,
        body: Form(
            key: degerKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
               
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    CircleAvatar(
                radius: 90.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/logo.jpg'),
              ),
         
                    
                    Container(

                    child:Text("As Bilişim Yönetim Sistemleri",style: TextStyle(fontSize: 20,
        color: Colors.black,
      ),),
      ),
               
              
                SizedBox(height: 10.0, ),
                TextFormField(
                  decoration: InputDecoration(
                       filled: true,
                      fillColor: Colors.green,
                    labelText: "Email Adresinizi Giriniz",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                   onSaved: (value) {
                  email = value;

                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                        color:Colors.blue,
                        textColor: Colors.white,
                      child: Text("Şifre Sıfırlama Kodu Gönder"),
                      onPressed: () {
                           degerKey.currentState.save();
                     debugPrint("$email , adresine başarı ile sıfırlama kodu göndrilmiştir.");
                        Navigator.pushNamed(
                            context, '/');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
