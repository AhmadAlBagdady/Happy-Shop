class ProductsModel {
  final dynamic status;
  final String? message;
  final List<Data>? data;

  ProductsModel({
    this.status,
    this.message,
    this.data,
  });

  ProductsModel.fromJson(Map<String, dynamic> json)
      : status = json['status'] as dynamic,
        message = json['message'] as String?,
        data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'status' : status,
    'message' : message,
    'data' : data?.map((e) => e.toJson()).toList()
  };
}

class Data {
  final int? id;
  final String? name;
  final String? expireDate;
  final int? price;
  final String? imgLink;
  final int? viewsCount;
  final int? commentsCount;
  final int? discountedPrice;
  final String? category;

  Data({
    this.id,
    this.name,
    this.expireDate,
    this.price,
    this.imgLink,
    this.viewsCount,
    this.commentsCount,
    this.discountedPrice,
    this.category,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        expireDate = json['expire_date'] as String?,
        price = json['price'] as int?,
        imgLink = json['img_link'] as String?,
        viewsCount = json['views_count'] as int?,
        commentsCount = json['comments_count'] as int?,
        discountedPrice = json['Discounted Price'] as int?,
        category = json['category'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'expire_date' : expireDate,
    'price' : price,
    'img_link' : imgLink,
    'views_count' : viewsCount,
    'comments_count' : commentsCount,
    'Discounted Price' : discountedPrice,
    'category' : category
  };
}