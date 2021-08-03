import 'dart:convert';

List<Categories> categoriesFromJson(String str) =>
    List<Categories>.from(json.decode(str).map((x) => Categories.fromJson(x)));

String categoriesToJson(List<Categories> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Categories {
  Categories({
    required this.id,
    required this.title,
    required this.subCategory,
  });

  int id;
  String title;
  List<SubCategory> subCategory;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json["id"],
        title: json["title"],
        subCategory: List<SubCategory>.from(
            json["subCategory"].map((x) => SubCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subCategory": List<dynamic>.from(subCategory.map((x) => x.toJson())),
      };
}

class SubCategory {
  SubCategory({
    required this.pumpsCategoryId,
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnail,
  });

  int pumpsCategoryId;
  int id;
  String title;
  String description;
  String thumbnail;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        pumpsCategoryId: json["pumps_category_id"],
        id: json["id"],
        title: json["title"],
        description: json["description"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "pumps_category_id": pumpsCategoryId,
        "id": id,
        "title": title,
        "description": description,
        "thumbnail": thumbnail,
      };
}
