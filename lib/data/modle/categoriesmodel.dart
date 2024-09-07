class CategoriesModels {
  String? categoriesId;
  String? categoriesName;
  String? categoriesData;
  String? categoriesImage;
  String? categoriesNameAr;

  CategoriesModels(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesData,
      this.categoriesImage,
      this.categoriesNameAr});

  CategoriesModels.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesData = json['categories_data'];
    categoriesImage = json['categories_image'];
    categoriesNameAr = json['categories_name_ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_data'] = categoriesData;
    data['categories_image'] = categoriesImage;
    data['categories_name_ar'] = categoriesNameAr;
    return data;
  }
}
