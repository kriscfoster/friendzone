

abstract class BaseAuth {
  Future<String> currentUser();
}


class Auth implements BaseAuth {
  Future<String> currentUser() async {
    //FirebaseUser user = await FirebaseAuth.instance.currentUser();
    //return user.uuid;

    Future<String> user = getUser();
    return user;
  }

  Future<String> getUser() async {
    await(100);
    return '123';
  }
}
