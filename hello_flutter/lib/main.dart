import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Welcome Flutter",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child:
                      Image.network("https://ifh.cc/g/A1daqP.jpg", width: 350),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "이메일"),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "비밀번호"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                      onPressed: () {
                        print('로그인 버튼 클릭');
                      },
                      child: Text('로그인')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
