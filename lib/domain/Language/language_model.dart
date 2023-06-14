
class Language {
   String name;
   int id;
   bool active;

   Language({required this.name, required this.id, this.active = false});

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
        name: json['name'],
        id: json['id'],
        active: json['active']
    );
  }

}