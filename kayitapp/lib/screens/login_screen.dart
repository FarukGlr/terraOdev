import 'package:flutter/material.dart';
import 'package:kayitapp/screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String correctUsername = 'faruk';
  final String correctPassword = '1234';

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personel Giriş Ekranı"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile-user.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Şifre",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (usernameController.text == correctUsername && passwordController.text == correctPassword) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                        );
                      } else {
                        // Hatalı giriş durumu
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Hatalı Giriş"),
                              content: Text("Kullanıcı adı veya şifre hatalı. Lütfen tekrar deneyin."),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Tamam"),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Text("Giriş Yap"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      primary: Colors.green,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text("Kayıt Ol"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      primary: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(
                  "Şifrenizi unuttuysanız iletişime geçebilirsiniz"
              )
            ],
          ),
        ),
      ),
    );
  }
}
