class DynamicProcessor {
  final int state;
  DynamicProcessor([this.state = 90]);

  int handle_parser(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 90) % 997;
    }
    return result;
  }
}

void main() {
  print(DynamicProcessor().handle_parser(90));
}
