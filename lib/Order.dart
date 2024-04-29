import 'package:flutter/material.dart';



class Order extends StatelessWidget {
  Order();
  String? ItemName;
  int Quantity=0;
  double Price=0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
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
                      ItemName = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Item name",
                      labelText: "Item name"
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    onSaved: (value){
                      Quantity =int.parse(value ?? "");
                    },
                    decoration: InputDecoration(
                        hintText: "Quantity",
                        labelText: "Quantity"
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    onSaved: (value){
                      Price =double.parse(value ?? "");
                    },
                    decoration: InputDecoration(
                        hintText: "Price",
                        labelText: "Price"
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                      onPressed: (){

                        _formKey.currentState!.save();
                        //Orders.AddOrder(ItemName, Quantity, Price);
                        Navigator.pushNamed(context,"/Movies");
                      },
                      child:Text("movies")
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
