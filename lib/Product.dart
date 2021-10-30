class Product {
  late int productId ;
  late String productName;
  late String productEName;
  late int price;
  late int discount;
  late int count;
  late String imgUrl;
  late String detail;
  late int catId;
  late int offerPersond;
  late int brandId;
  late Null category2;

  Product(this.productName, this.productEName, this.price, this.discount,
      this.imgUrl, this.detail,  this.offerPersond,
      this.count
  );

//   Product(
//       {
//         required this.productName,
//         required this.productEName,
//         required this.price,
//         required this.discount,
//         required this.count,
//         required this.imgUrl,
//         required this.detail,
//         // this.catId,
//         required this.offerPersond,
//         // this.brandId,
//         this.category2});
//
//   // Product.fromJson(Map<String, dynamic> json) {
//   //
//   //   productName = json['productName'];
//   //   productEName = json['productE_Name'];
//   //   price = json['price'];
//   //   discount = json['discount'];
//   //   count = json['count'];
//   //   imgUrl = json['img_Url'];
//   //   detail = json['detail'];
//   //
//   //   offerPersond = json['offer_Persond'];
//   //
//   //   category2 = json['category2'];
//   // }
//
//   // Map<String, dynamic> toJson() {
//   //   final Map<String, dynamic> data = new Map<String, dynamic>();
//   //   data['productId'] = this.productId;
//   //   data['productName'] = this.productName;
//   //   data['productE_Name'] = this.productEName;
//   //   data['price'] = this.price;
//   //   data['discount'] = this.discount;
//   //   data['count'] = this.count;
//   //   data['img_Url'] = this.imgUrl;
//   //   data['detail'] = this.detail;
//   //   data['cat_Id'] = this.catId;
//   //   data['offer_Persond'] = this.offerPersond;
//   //   data['brand_Id'] = this.brandId;
//   //   data['category2'] = this.category2;
//   //   return data;
//   // }
 }