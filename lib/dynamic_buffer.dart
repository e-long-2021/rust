class DynamicScheduler {
  final int state;
  DynamicScheduler([this.state = 14]);

  int load_loader(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 14) % 997;
    }
    return total;
  }
}

void main() {
  print(DynamicScheduler().load_loader(14));
}
