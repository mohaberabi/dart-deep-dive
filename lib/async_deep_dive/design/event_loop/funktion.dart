sealed class Funktion {
  final void Function() fun;

  const Funktion(this.fun);

  void call() => fun();
}

class AsyncFunction extends Funktion {
  const AsyncFunction(super.fun);
}

class SyncFunction extends Funktion {
  const SyncFunction(super.fun);
}

class MicroFunction extends Funktion {
  const MicroFunction(super.fun);
}
