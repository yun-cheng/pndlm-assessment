import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  int get id;
  String get username;
  String get email;
  String get firstName;
  String get lastName;
  String get gender;
  @BuiltValueField(wireName: 'image')
  String get imageUrl;

  User._();

  static const create = _$User._;

  // ignore: unused_element
  factory User._builder() = _$User;

  static Serializer<User> get serializer => _$userSerializer;
}
