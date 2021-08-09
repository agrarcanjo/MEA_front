import 'package:get/get.dart';
import 'package:mea/modules/exceptions/exceptions_page.dart';
import 'get_connect_exceptions/get_connect_exceptions_bindings.dart';
import 'get_connect_exceptions/get_connect_exceptions_page.dart';

class ExceptionsModule extends GetPage {
  ExceptionsModule()
      : super(
          name: '/exceptions',
          page: () => ExceptionsPage(),
          children: [
            GetPage(
              name: '/getconnect',
              page: () => GetConnectExceptionsPage(),
              binding: GetConnectExceptionsBindings(),
            )
          ],
        );
}
