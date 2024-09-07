class items_model {
  String? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsImage;
  String? itmesDes;
  String? itmesDesAr;
  String? itemsCount;
  String? itemsPrice;
  String? itemsActive;
  String? itemData;
  String? itmeDiscount;
  String? itemsCat;

  items_model(
      {this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsImage,
      this.itmesDes,
      this.itmesDesAr,
      this.itemsCount,
      this.itemsPrice,
      this.itemsActive,
      this.itemData,
      this.itmeDiscount,
      this.itemsCat});

  items_model.fromJson(Map<String, dynamic> json) {
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsImage = json['items_image'];
    itmesDes = json['itmes_des'];
    itmesDesAr = json['itmes_des_ar'];
    itemsCount = json['items_count'];
    itemsPrice = json['items_price'];
    itemsActive = json['items_active'];
    itemData = json['item_data'];
    itmeDiscount = json['itme_discount'];
    itemsCat = json['items_cat'];
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
