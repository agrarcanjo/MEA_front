import 'package:get/get.dart';
import 'package:mea/modules/exceptions/get_connect_exceptions/repository/getconnect_local_backend_exceptions.dart';
import 'package:mea/repository/i_local_backend_exceptions.dart';
import 'package:mea/shared/widgets/exception/rest_client.dart';
import './get_connect_exceptions_controller.dart';

class GetConnectExceptionsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
    Get.put<ILocalBackendExceptions>(
        GetconnectLocalBackendExceptions(restClient: Get.find()));
    Get.put(GetConnectExceptionsController(repository: Get.find()));
  }
}
