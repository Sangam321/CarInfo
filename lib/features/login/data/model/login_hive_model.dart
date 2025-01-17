import 'package:carinfo/app/constants/hive_table_constatnts.dart';
import 'package:carinfo/features/login/domain/entity/login_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

part 'login_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.loginTableId)
class LoginHiveModel extends Equatable {
  @HiveField(0)
  final String? loginId;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String password;

  LoginHiveModel({
    String? loginId,
    required this.email,
    required this.password,
  }) : loginId = loginId ?? const Uuid().v4();

  const LoginHiveModel.initial()
      : loginId = '',
        email = '',
        password = '';

  factory LoginHiveModel.fromEntity(LoginEntity entity) {
    return LoginHiveModel(
      loginId: entity.email,
      email: entity.email,
      password: entity.password,
    );
  }

  LoginEntity toEntity() {
    return LoginEntity(
      email: email,
      password: password,
    );
  }

  @override
  List<Object?> get props => [loginId, email, password];
}
