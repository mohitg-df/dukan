class RetailProduct {
  int? productId;
  String? name;
  String? hindiname;
  String? imageurl;
  String? unit;
  String? category;
  String? productType;
  String? desc;
  int? quantity;
  double? discountPrize;
  double? productPrize;

  RetailProduct(
      {this.productId,
        this.name,
        this.hindiname,
        this.imageurl,
        this.unit,
        this.category,
        this.productType,
        this.desc,
        this.quantity,
        this.discountPrize,
        this.productPrize});

  RetailProduct.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    name = json['name'];
    hindiname = json['hindiname'];
    imageurl = json['imageurl'];
    unit = json['unit'];
    category = json['category'];
    productType = json['productType'];
    desc = json['desc'];
    quantity = json['quantity'];
    discountPrize = json['discountPrize'];
    productPrize = json['productPrize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['name'] = this.name;
    data['hindiname'] = this.hindiname;
    data['imageurl'] = this.imageurl;
    data['unit'] = this.unit;
    data['category'] = this.category;
    data['productType'] = this.productType;
    data['desc'] = this.desc;
    data['quantity'] = this.quantity;
    data['discountPrize'] = this.discountPrize;
    data['productPrize'] = this.productPrize;
    return data;
  }
}

class WSProduct {
  int? productId;
  String? name;
  String? hindiname;
  String? imageurl;
  String? unit;
  String? category;
  String? productType;
  String? desc;
  int? quantity;
  double? discountPrize;
  double? productPrize;

  WSProduct(
      {this.productId,
        this.name,
        this.hindiname,
        this.imageurl,
        this.unit,
        this.category,
        this.productType,
        this.desc,
        this.quantity,
        this.discountPrize,
        this.productPrize});

  WSProduct.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    name = json['name'];
    hindiname = json['hindiname'];
    imageurl = json['imageurl'];
    unit = json['unit'];
    category = json['category'];
    productType = json['productType'];
    desc = json['desc'];
    quantity = json['quantity'];
    discountPrize = json['discountPrize'];
    productPrize = json['productPrize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['name'] = this.name;
    data['hindiname'] = this.hindiname;
    data['imageurl'] = this.imageurl;
    data['unit'] = this.unit;
    data['category'] = this.category;
    data['productType'] = this.productType;
    data['desc'] = this.desc;
    data['quantity'] = this.quantity;
    data['discountPrize'] = this.discountPrize;
    data['productPrize'] = this.productPrize;
    return data;
  }
}