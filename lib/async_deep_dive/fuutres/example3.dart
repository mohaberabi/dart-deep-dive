class User {
  final String name;
  final String lastName;

  final String bio;

  const User({required this.lastName, required this.name, required this.bio});

  @override
  String toString() {
    return "name:$name,lastName:$lastName,bio:$bio";
  }
}

void main() async {
  final user = User(
      lastName: await fetchData("last"), //1
      name: await fetchData("name"), //2
      bio: await fetchData("bio")); //3;
  print(user);
}

Future<String> fetchData(String data) async {
  await Future.delayed(const Duration(seconds: 1));
  print("Fetching :$data");
  return data;
}
