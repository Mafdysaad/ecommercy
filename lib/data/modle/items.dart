class items_model {
  String? itemsId;
  final String? itemsName;
  final String? itemsNameAr;
  final String? itemsImage;
  final String? itmesDes;
  final String? itmesDesAr;
  final String? itemsCount;
  final String? itemsPrice;
  final String? itemsActive;
  final String? itemData;
  final String? itmeDiscount;
  final String? itemsCat;

  items_model(
      {required this.itemsId,
      required this.itemsName,
      required this.itemsNameAr,
      required this.itemsImage,
      required this.itmesDes,
      required this.itmesDesAr,
      required this.itemsCount,
      required this.itemsPrice,
      required this.itemsActive,
      required this.itemData,
      required this.itmeDiscount,
      required this.itemsCat});
//neamed conctructor
  factory items_model.fromJson(Map<String, dynamic> json) {
    return items_model(
        itemsId: json['items_id'],
        itemData: json['item_data'],
        itemsActive: json['items_active'],
        itemsCat: json['items_cat'],
        itemsCount: json['items_count'],
        itemsImage: json['items_image'],
        itemsName: json['items_name'],
        itemsNameAr: json['items_name_ar'],
        itemsPrice: json['items_price'],
        itmeDiscount: json['itme_discount'],
        itmesDes: json['itmes_des'],
        itmesDesAr: json['itmes_des_ar']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_image'] = itemsImage;
    data['itmes_des'] = itmesDes;
    data['itmes_des_ar'] = itmesDesAr;
    data['items_count'] = itemsCount;
    data['items_price'] = itemsPrice;
    data['items_active'] = itemsActive;
    data['item_data'] = itemData;
    data['itme_discount'] = itmeDiscount;
    data['items_cat'] = itemsCat;
    return data;
  }
}
