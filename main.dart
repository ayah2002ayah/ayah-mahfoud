import 'package:flutter/material.dart';

void main() => runApp(ayah());

class ayah extends StatelessWidget {
  const ayah({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String ayah_username;
  late String ayah_password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to your page'),
        titleTextStyle: TextStyle(color: Colors.purple,
        fontSize: 30,
        )
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),

        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                onSaved: (value) => ayah_username = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                obscureText: true,
                onSaved: (value) => ayah_password = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    // Implement your login logic here
                    print('Username: $ayah_username');
                    print('Password: $ayah_password');
                  }

                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                 foregroundColor: Colors.white,
                  ),

                child: Text('Login'),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
