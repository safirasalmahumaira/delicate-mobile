// To parse this JSON data, do
//
//     final itemEntry = itemEntryFromJson(jsonString);

import 'dart:convert';

List<ItemEntry> itemEntryFromJson(String str) => List<ItemEntry>.from(json.decode(str).map((x) => ItemEntry.fromJson(x)));

String itemEntryToJson(List<ItemEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemEntry {
    Model model;
    String pk;
    Fields fields;

    ItemEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ItemEntry.fromJson(Map<String, dynamic> json) => ItemEntry(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    int price;
    String description;
    int user;

    Fields({
        required this.name,
        required this.price,
        required this.description,
        required this.user,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        price: json["price"],
        description: json["description"],
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "description": description,
        "user": user,
    };
}

enum Model {
    MAIN_ITEM
}

final modelValues = EnumValues({
    "main.item": Model.MAIN_ITEM
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
