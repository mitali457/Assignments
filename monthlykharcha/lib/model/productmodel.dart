class Product {
  int id;
  String productname;
  String imgUrl;
  double price;
  String lastdate;

  Product({this.id, this.productname, this.price, this.lastdate, this.imgUrl});
}

List<Product> data = [
  Product(productname: "Electricity Bill", price: 1240.00, id: 34374287,imgUrl: 'https://i.stack.imgur.com/JOVuz.jpg',lastdate: "Last ate of Paymentis 22 April"),
  Product(productname: "Servant Payment", price: 6000.00, id: 64234285,imgUrl: 'https://clipartion.com/wp-content/uploads/2015/11/money-clip-art-png.png',lastdate: 'No Auto Pay'),
  Product(productname: "Mobile Bill", price: 2000.00, id: null,imgUrl: 'https://purepng.com/public/uploads/large/purepng.com-white-iphone-6electronics-smartphone-white-iphone-941524680503gv65a.png',lastdate: " ")
];
