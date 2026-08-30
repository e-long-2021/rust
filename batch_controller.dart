class CoreLoader {
  final int state;
  CoreLoader([this.state = 55]);

  int parse_handler(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 55) % 997;
    }
    return count;
  }
}

void main() {
  print(CoreLoader().parse_handler(55));
}
