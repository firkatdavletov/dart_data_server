import 'package:data/utils/app_response.dart';
import 'package:conduit/conduit.dart';
import 'package:data/models/post.dart';
import 'package:data/models/author.dart';

class AppPostController extends ResourceController {
  final ManagedContext managedContext;

  AppPostController(this.managedContext);

  @Operation.get()
  Future<Response> getPosts() async {
    try {
      // final id = AppUtils.getIdFromHeader(header);
      // final user = await managedContext.fetchObjectWithID<User>(id);
      // user?.removePropertiesFromBackingMap(
      //     [AppConst.accessToken, AppConst.refreshToken]);
      return AppResponse.ok(message: "Успешное получение постов");
    } catch (error) {
      return AppResponse.serverError(error, message: "Ошибка получения постов");
    }
  }
}
