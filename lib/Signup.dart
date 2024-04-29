import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: Column(
        children: [
          Text("Talabt"),
          SizedBox(height: 5),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name"
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    onSaved: (value){
                      print(value);
                    },
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password"
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                      onPressed: (){
                        _formKey.currentState!.save();
                        Navigator.pushNamed(context,"/Movies");
                      },
                      child:Text("Submit")
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
