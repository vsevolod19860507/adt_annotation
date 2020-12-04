import 'package:meta/meta.dart';

export 'package:meta/meta.dart';
export 'package:collection/collection.dart';

/// Base class for _Data and _Union. Do not use it directly!
@immutable
abstract class ADT {
  const ADT();
}

class _Data implements ADT {
  const _Data();
}

/// Annotation for creating a data class.
const data = _Data();

class _Union implements ADT {
  const _Union();
}

/// Annotation for creating a discriminated union.
const union = _Union();

@immutable
class _Nullable {
  const _Nullable();
}

/// Used inside constructors to mark a parameter as nullable.
const nullable = _Nullable();

@immutable
class _Mutable {
  const _Mutable();
}

/// Applies to a data class to indicate that it is mutable.
const mutable = _Mutable();

@immutable
class _Primary {
  const _Primary();
}

/// Applies to a data class constructor to indicate that it is the primary.
const primary = _Primary();

/// Used inside a discriminated union constructors to set the default value
/// for a parameter.
@immutable
class Default {
  const Default(this.value);

  final Object value;
}

@immutable
class _Unused {
  const _Unused();
}

/// It is used inside the copyWith method for the proper handling
/// of nullable parameters.
const unused = _Unused();
