// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SingInModel {
  String? token;
  SingInModel({
    this.token,
  });

  SingInModel copyWith({
    String? token,
  }) {
    return SingInModel(
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory SingInModel.fromMap(Map<String, dynamic> map) {
    return SingInModel(
      token: map['token'] != null ? map['token'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SingInModel.fromJson(String source) => SingInModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SingInModel(token: $token)';

  @override
  bool operator ==(covariant SingInModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.token == token;
  }

  @override
  int get hashCode => token.hashCode;
}
