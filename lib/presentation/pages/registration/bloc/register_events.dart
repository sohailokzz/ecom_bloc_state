abstract class RegistrationEvents {
  const RegistrationEvents();
}

class UserNameEvent extends RegistrationEvents {
  final String userName;

  const UserNameEvent(
    this.userName,
  );
}

class RegEmailEvent extends RegistrationEvents {
  final String email;

  RegEmailEvent(
    this.email,
  );
}

class RegPasswordEvent extends RegistrationEvents {
  final String password;

  const RegPasswordEvent(
    this.password,
  );
}

class RegConfPassEvent extends RegistrationEvents {
  final String confirmPassword;

  const RegConfPassEvent(
    this.confirmPassword,
  );
}
