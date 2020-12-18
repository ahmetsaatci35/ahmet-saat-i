import 'package:flutter/material.dart';


import 'anasayfa.dart';
import 'uyeol.dart';
import 'sifremiunuttum.dart';

final Color darkBlue = Colors.white;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/anasayfa': (context) => Anasayfa(),
        '/uyeol': (context) => Uyeol(),
        '/sifremiunuttum': (context) => Sifremiunuttum(),
      }, 
    );

  }
}
class LoginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {

String userName;
String password;

final degerKey = GlobalKey<FormState>();

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
                children :[
                    //mainAxisAlignment: MainAxisAlignment.center,
                     
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
                   labelText: "Kullanıcı Adı",
                   labelStyle: TextStyle(color:Colors.white,),
                   border: OutlineInputBorder(),
                  ),
                  cursorColor: Colors.white,
              
                  onSaved: (value) {
                  userName = value;

                  },
                 ),
                SizedBox(height: 20.0,
                ),
                 TextFormField(
                  
                 decoration: InputDecoration(
                       filled: true,
                      fillColor: Colors.green,
                   labelText: "Şifre",
                   labelStyle: TextStyle(color:Colors.white,),
                   border: OutlineInputBorder(),
                   
                 
                  ),
                   cursorColor: Colors.green,
                  onSaved: (value) {
                    password = value;
                  },
                 ),
                 SizedBox(height: 20.0,
                ),
                Row(
                   
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     MaterialButton(   
                         
                         color:Colors.blue,                
                       child: Text("Üye Ol"),
                       textColor: Colors.white,
                       onPressed: () {
                       debugPrint("Butona Tıklandı");
                       Navigator.pushNamed(context, '/uyeol');
                       } ,
                     ),
                     MaterialButton(
                         
                         color:Colors.blue,
                       child: Text("Şifremi Unuttum"),
                       textColor: Colors.white,
                       onPressed: () {
                         debugPrint("Butona Tıklandı");
                        Navigator.pushNamed(context, '/sifremiunuttum');
                       } ,
                       ),
                     ],

                    ),
                    Center(
                  child: RaisedButton (
                      
                       color:Colors.blue,
                     child: Text("Giriş"),
                     textColor: Colors.white,
                     onPressed: () {
                     degerKey.currentState.save();
                     debugPrint("userName : $userName , password : $password");
                     if (userName =="demo" && password == "demo") {
                       debugPrint("Giriş başarılı bir şekilde gerçekleşmiştir.");
                      
                       Navigator.of(context).pushReplacementNamed('/anasayfa');
                     } else {
                     debugPrint("Kullanıcı Adı ya da Şifre yanlış, lütfen tekrar deneyin.");
                     }
 
                     },

                   ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}
