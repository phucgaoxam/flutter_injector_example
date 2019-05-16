abstract class UserRepository {
  void getUser();
}

class MockUpUserRepository implements UserRepository {
  @override
  void getUser() {
    print('getUser');
  }
}
