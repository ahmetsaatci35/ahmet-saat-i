import 'package:flutter/material.dart';



class Uyeol extends StatelessWidget {
    String sifre;
String sifrem;
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
      ), SizedBox( height: 10, ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green,
                    labelText: ("Email"),
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                       filled: true,
                      fillColor: Colors.green,
                    labelText: ("Kullanıcı Adı"),
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                    
                  decoration: InputDecoration(
                       filled: true,
                      fillColor: Colors.green,
                    labelText: ("Şifre"),
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    sifre = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                     
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green,
                    labelText: ("Şifre Tekrar"),
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    sifrem = value;
                  },
                ),
                SizedBox( height: 10 ),
                Row(
                  
                  children: [
                      
                    MaterialButton(
                        color:Colors.blue,
                        textColor: Colors.white,
                      child: Text("Vazgeç"),
                      onPressed: () {
                        debugPrint("Butona Tıklandı");
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                  ],
                ),
                RaisedButton(
                    color:Colors.blue,
                    textColor: Colors.white,
                  child: Text("Kaydol"),
                  onPressed: () {
                      degerKey.currentState.save();
                    if (sifre == sifrem) {
                      debugPrint("kayıt başarı ile gerçekleşmiştir.");
                      Navigator.pushNamed(context, '/');
                    } else {
                      debugPrint("sifreler eslesmiyor");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
