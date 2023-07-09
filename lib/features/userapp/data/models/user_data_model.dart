class UserDataModel {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;
  final String url;
  final String text;

  UserDataModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.url,
    required this.text,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    final support = json['support'];
    return UserDataModel(
      id: data['id'],
      email: data['email'],
      firstName: data['first_name'],
      lastName: data['last_name'],
      avatar: data['avatar'],
      url: support['url'],
      text: support['text'],
    );
  }
}
