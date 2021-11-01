class Results {
  final Name name;
  final Picture picture;
  final String? email;
  final Dos dos;

  Results(
      {required this.dos,
      required this.email,
      required this.name,
      required this.picture});
  Results.fromJson(Map<String, dynamic> json)
      : name = Name.fromJson(json['name']),
        picture = Picture.fromJson(json['picture']),
        email = json['email'],
        dos = Dos.fromJson(json['dob']);
}

class Name {
  final String? title;
  final String? first;
  final String? last;

  Name({this.title, this.first, this.last});
  Name.fromJson(Map<String, dynamic> json)
      : title = json['title'].toString(),
        first = json['first'].toString(),
        last = json['last'].toString();
}

class Picture {
  final String? large;
  Picture({this.large});
  Picture.fromJson(Map<String, dynamic> json) : large = json['large'];
}

class Dos {
  final int? age;
  Dos(this.age);
  Dos.fromJson(Map<String, dynamic> json) : age = json['age'];
}
