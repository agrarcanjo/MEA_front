import 'package:http/http.dart';
import 'package:mea/shared/widgets/exception/rest_exception.dart';

extension HttpClientExceptionExtension on Response {
  void checkIsError() {
    if (this.statusCode > 399) {
      throw RestException(
        message: this.reasonPhrase ?? 'Erro',
        statusCode: statusCode,
        response: this,
      );
    }
  }
}
