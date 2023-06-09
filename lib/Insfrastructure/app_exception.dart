

class BaseException implements Exception {
   late String message = '';
   late String prefix = '';

  BaseException({
     required this.message,
     required this.prefix});

}

class BadRequestException extends BaseException {
  BadRequestException({message})
      : super(message: message, prefix: 'Bad Request');
}

class UnAuthorizedException extends BaseException {
  UnAuthorizedException({message})
      : super(message: message, prefix: 'Unauthorized');
}

class NotFoundException extends BaseException {
  NotFoundException({message})
      : super(message: message, prefix: 'Not Found');
}

class ServerException extends BaseException {
  ServerException({message})
      : super(message: message, prefix: 'Server Error');
}


class FetchDataException extends BaseException {
  FetchDataException({message})
      : super(message: message, prefix: 'Fetch Data Error');
}

class ToTimeException extends BaseException {
  ToTimeException({message})
      : super(message: message, prefix: 'Fetch Data Error');
}

class UnknownException extends BaseException {
  UnknownException({message})
      : super(message: message, prefix: 'Unknown Error');
}

