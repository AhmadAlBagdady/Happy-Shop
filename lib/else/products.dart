class Products {
  final String name;
  final int Price;
  final int Sale;
  final String Picture;
  final int views;
  final int comments;
  final int expiredate;
  final String dateofexpire;
  final int likes;
  final int? number;
  Products(
      {required this.Picture,
      required this.name,
      required this.Sale,
      required this.Price,
      required this.views,
      required this.comments,
      required this.expiredate,
      required this.dateofexpire,
      required this.likes,
      this.number});
}
