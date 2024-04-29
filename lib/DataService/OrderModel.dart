class OrderModel {
    int Id = 0;
    String? ItemName;
    int? Quantity;
    double? Price;

    OrderModel({required this.Id, this.ItemName, this.Quantity, this.Price});

    // Convert OrderModel to JSON
    Map<String, dynamic> toJson() {
        return {
            'Id': Id,
            'ItemName': ItemName,
            'Quantity': Quantity,
            'Price': Price,
        };
    }

    // Create OrderModel from JSON
    factory OrderModel.fromJson(Map<String, dynamic> json) {
        return OrderModel(
            Id: json['Id'] ?? 0,
            ItemName: json['ItemName'],
            Quantity: json['Quantity'],
            Price: json['Price']?.toDouble(),
        );
    }
}
