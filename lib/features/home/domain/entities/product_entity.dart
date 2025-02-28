class ProductEntity {
  final String title;
  final String desc;
  final num price;
  final num? discount;
  final num rateCount;
  final num avaRate;
  final String img;
  final AdditionInfoEntity additionInfo;


  ProductEntity({
    required this.title,
    required this.desc,
    required this.price,
    this.discount,
    this.rateCount = 0,
    this.avaRate = 0.0,
    required this.img,
    required this.additionInfo,
  });
}

class AdditionInfoEntity {
  final String? dateExpired;
  final String? calary;
  AdditionInfoEntity({
    this.dateExpired,
    this.calary,
  });
}
