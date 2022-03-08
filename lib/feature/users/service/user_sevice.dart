import 'package:vexana/vexana.dart';
import '../model/user_model.dart';

abstract class IUserService {
  final INetworkManager networkManager;

  IUserService(this.networkManager);

  Future<List<UserModel>?> userFetch();
}

class UserService extends IUserService {
  UserService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<UserModel>?> userFetch() async {
    final response = await networkManager.send<UserModel, List<UserModel>>(
        'posts?userId=1',
        parseModel: UserModel(),
        method: RequestType.GET);
    return response.data;
  }
}
