import 'package:meta/meta.dart';

export 'package:meta/meta.dart';
export 'package:collection/collection.dart';

@immutable
abstract class ADT {
  const ADT();
}

class _Data implements ADT {
  const _Data();
}

const data = _Data();

class _Union implements ADT {
  const _Union();
}

const union = _Union();

@immutable
class _Nullable {
  const _Nullable();
}

const nullable = _Nullable();

@immutable
class _Mutable {
  const _Mutable();
}

const mutable = _Mutable();

@immutable
class _Primary {
  const _Primary();
}

const primary = _Primary();

@immutable
class Default {
  final Object value;

  const Default(this.value);
}

@immutable
class _Unused {
  const _Unused();
}

const unused = _Unused();
