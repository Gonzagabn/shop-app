class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'O e-mail já está cadastrado!',
    'OPERATION_NOT_ALLOWED': 'Operação não permitida!',
    'TOO_MANY_ATTEMPTS_TRY_LATER': 'Tente novamente mais tarde!',
    'EMAIL_NOT_FOUND': 'E-mail não encontrado!',
    'INVALID_PASSWORD': 'Senha incorreta!',
    'USER_DISABLED': 'Usuário desativado pelo administrador!',
  };

  final String key;

  const AuthException(this.key);

  @override
  String toString() {
    if (errors.containsKey(key)) {
      return errors[key]!;
    } else {
      return 'Ocorreu um erro na autenticação!';
    }
  }
}
