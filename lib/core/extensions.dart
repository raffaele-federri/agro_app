extension extString on String {
  bool get isPasswordConfirmed {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        new RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp =
        RegExp(r'^(?=.*[A-Za-z])(?=.*\d|.*[^\w\s])[A-Za-z\d\W\S]{8,}$');
    print('FUCK: ${passwordRegExp.hasMatch(this)} => $this');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }

  bool get isValidPhone {
    final phone = replaceAll(' ', '');
    final phoneRegExp = RegExp(r"[0-9]{9}$");

    return phoneRegExp.hasMatch(phone);
  }
}

extension ListExtension<T> on List<T> {
  T? find(bool Function(T element) condition) {
    for (final element in this) {
      if (condition(element)) return element;
    }
    return null;
  }
}
