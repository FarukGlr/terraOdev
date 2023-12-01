import 'package:flutter/material.dart';
import 'package:kayitapp/screens/info_screen.dart';
import 'package:kayitapp/screens/car_data.dart';
import 'package:kayitapp/screens/car_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String enteredPlate = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Servis Takip Uygulaması"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hoş Geldiniz!",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(height: 40),
            TextField(
              onChanged: (value) {
                enteredPlate = value;
              },
              decoration: InputDecoration(
                labelText: "Araç Plakasını Boşluksuz Giriniz",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepOrange),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepOrange),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                CarData carData;
                if (enteredPlate == "42AAK247") {
                  carData = CarData(
                    plateNumber: '42AAK247',
                    seatCount: 15,
                    driverName: 'Faruk Güler',
                    carModel: 'Model X',
                    fuelAmount: 60.0,
                    kilometers: 150000.0,
                  );
                } else if (enteredPlate == "42FRK123") {
                  carData = CarData(
                    plateNumber: '42FRK123',
                    seatCount: 13,
                    driverName: 'Ahmet Yılmaz',
                    carModel: 'Model Y',
                    fuelAmount: 75.5,
                    kilometers: 120000.0,
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Hatalı Plaka"),
                        content: Text("Girilen plaka bulunamadı. Lütfen kontrol edip tekrar deneyin."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Tamam"),
                          ),
                        ],
                      );
                    },
                  );
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoScreen(carData: carData)),
                );
              },
              child: Text("Koltuk Bilgisini Görüntüle"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80),
                primary: Colors.green,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                CarData carData;
                if (enteredPlate == "42AAK247") {
                  carData = CarData(
                    plateNumber: '42AAK247',
                    seatCount: 15,
                    driverName: 'Faruk Güler',
                    carModel: 'Model X',
                    fuelAmount: 60.0,
                    kilometers: 150000.0,
                  );
                } else if (enteredPlate == "42FRK123") {
                  carData = CarData(
                    plateNumber: '42FRK123',
                    seatCount: 13,
                    driverName: 'Ahmet Yılmaz',
                    carModel: 'Model Y',
                    fuelAmount: 75.5,
                    kilometers: 120000.0,
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Hatalı Plaka"),
                        content: Text("Girilen plaka bulunamadı. Lütfen kontrol edip tekrar deneyin."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Tamam"),
                          ),
                        ],
                      );
                    },
                  );
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarScreen(carData: carData)),
                );
              },
              child: Text("Araç Bilgisini Görüntüle"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80),
                primary: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
