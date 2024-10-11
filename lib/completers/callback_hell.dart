void performAsyncOperation(void Function(String) callback) {
  Future.delayed(Duration(seconds: 3), () {
    callback("Callback Result!");
  });
}

void main() {
  performAsyncOperation((result) {
    print(result);
  });
}
