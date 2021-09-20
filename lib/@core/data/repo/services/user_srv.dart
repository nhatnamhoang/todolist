import 'package:todoapp/@core/data/api/base_graphql.dart';

class UserSrv extends BaseService {
  UserSrv() : super(module: 'User', fragment: ''' 
  user{
      id
      name
      avatar
    }
    token
  ''');
}
