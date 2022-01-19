import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade700,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/munem.jpg'),
            ),
            Text(
              'Munem Sarker', style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
            ),
            ),
            Text(
              'Mobile Apps Developer', style: TextStyle(
              fontSize: 30.0,
              color: Colors.green.shade50,
              letterSpacing: 2.5,
              fontFamily: 'Bebas',
            ),
            ),
            SizedBox(
              height: 30,
              width: 400,
              child: Divider(color: Colors.green.shade900),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.all(22),
              //margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30,),
              //margin: EdgeInsets.only(right: ,top: ,bottom: ,),
              child: ListTile(
                onTap: (){},
                title: Text('+8801737-673798', style: TextStyle(
                  color: Colors.green.shade900,
                  fontFamily: 'Source Sans',
                  fontSize: 20.0,
                ),
                ),
                leading: Icon(Icons.phone, color: Colors.green,),
              ),
            ),
            Card(
              margin: EdgeInsets.all(22),
              child: ListTile(
                onTap: (){},
                title: Text('munem@engineer.com', style: TextStyle(
                  color: Colors.green.shade900,
                  fontFamily: 'Source Sans',
                  fontSize: 20.0,
                ),
                ),
                leading: Icon(Icons.email, color: Colors.green,),
              ),
            ),
            Card(
              margin: EdgeInsets.all(22),
              child: ListTile(
                onTap: (){},
                title: Text('3/1 - Block A, Nilphamari, Rangpur, Bangladesh', style: TextStyle(
                  color: Colors.green.shade900,
                  fontFamily: 'Source Sans',
                  fontSize: 20.0,
                ),
                ),
                leading: Icon(Icons.home, color: Colors.green,),
              ),
            ),
            Center(
              child: Image(
                image: AssetImage('images/qr.png'),
                height: 120,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}