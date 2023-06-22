// // To parse this JSON data, do
// //
// //     final DataModel = DataModelFromJson(jsonString);

// import 'dart:convert';

// DataModel DataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

// String DataModelToJson(DataModel data) => json.encode(data.toJson());

// class DataModel {
//   int id;
//   String name;
//   String description;
//   int price;
//   int stars;
//   int people;
//   int selectedPeople;
//   String img;
//   String location;
//   DateTime createdAt;
//   DateTime updatedAt;

//   DataModel({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.stars,
//     required this.people,
//     required this.selectedPeople,
//     required this.img,
//     required this.location,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
//         id: json["id"],
//         name: json["name"],
//         description: json["description"],
//         price: json["price"],
//         stars: json["stars"],
//         people: json["people"],
//         selectedPeople: json["selected_people"],
//         img: json["img"],
//         location: json["location"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "description": description,
//         "price": price,
//         "stars": stars,
//         "people": people,
//         "selected_people": selectedPeople,
//         "img": img,
//         "location": location,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//       };
// }
