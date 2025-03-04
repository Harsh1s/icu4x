// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// See the [Rust documentation for `FixedDecimal`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html) for more information.
final class FixedDecimal implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  final core.List<Object> _edge_self;

  // Internal constructor from FFI.
  // isOwned is whether this is owned (has finalizer) or not
  // This also takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  FixedDecimal._(this._underlying, bool isOwned, this._edge_self) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XFixedDecimal_destroy));

  /// Construct an [`FixedDecimal`] from an integer.
  ///
  /// See the [Rust documentation for `FixedDecimal`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html) for more information.
  factory FixedDecimal.fromInt(int v) {
    final result = _ICU4XFixedDecimal_create_from_i64(v);
    return FixedDecimal._(result, true, []);
  }

  /// Construct an [`FixedDecimal`] from an float, with a given power of 10 for the lower magnitude
  ///
  /// See the [Rust documentation for `try_from_f64`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.try_from_f64) for more information.
  ///
  /// See the [Rust documentation for `FloatPrecision`](https://docs.rs/fixed_decimal/latest/fixed_decimal/enum.FloatPrecision.html) for more information.
  ///
  /// Throws [Error] on failure.
  factory FixedDecimal.fromDoubleWithLowerMagnitude(double f, int magnitude) {
    final result = _ICU4XFixedDecimal_create_from_f64_with_lower_magnitude(f, magnitude);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return FixedDecimal._(result.union.ok, true, []);
  }

  /// Construct an [`FixedDecimal`] from an float, for a given number of significant digits
  ///
  /// See the [Rust documentation for `try_from_f64`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.try_from_f64) for more information.
  ///
  /// See the [Rust documentation for `FloatPrecision`](https://docs.rs/fixed_decimal/latest/fixed_decimal/enum.FloatPrecision.html) for more information.
  ///
  /// Throws [Error] on failure.
  factory FixedDecimal.fromDoubleWithSignificantDigits(double f, int digits) {
    final result = _ICU4XFixedDecimal_create_from_f64_with_significant_digits(f, digits);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return FixedDecimal._(result.union.ok, true, []);
  }

  /// Construct an [`FixedDecimal`] from an float, with enough digits to recover
  /// the original floating point in IEEE 754 without needing trailing zeros
  ///
  /// See the [Rust documentation for `try_from_f64`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.try_from_f64) for more information.
  ///
  /// See the [Rust documentation for `FloatPrecision`](https://docs.rs/fixed_decimal/latest/fixed_decimal/enum.FloatPrecision.html) for more information.
  ///
  /// Throws [Error] on failure.
  factory FixedDecimal.fromDoubleWithDoublePrecision(double f) {
    final result = _ICU4XFixedDecimal_create_from_f64_with_floating_precision(f);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return FixedDecimal._(result.union.ok, true, []);
  }

  /// Construct an [`FixedDecimal`] from a string.
  ///
  /// See the [Rust documentation for `from_str`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.from_str) for more information.
  ///
  /// Throws [Error] on failure.
  factory FixedDecimal.fromString(String v) {
    final temp = ffi2.Arena();
    final vView = v.utf8View;
    final result = _ICU4XFixedDecimal_create_from_string(vView.pointer(temp), vView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return FixedDecimal._(result.union.ok, true, []);
  }

  /// See the [Rust documentation for `digit_at`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.digit_at) for more information.
  int digitAt(int magnitude) {
    final result = _ICU4XFixedDecimal_digit_at(_underlying, magnitude);
    return result;
  }

  /// See the [Rust documentation for `magnitude_range`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.magnitude_range) for more information.
  int get magnitudeStart {
    final result = _ICU4XFixedDecimal_magnitude_start(_underlying);
    return result;
  }

  /// See the [Rust documentation for `magnitude_range`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.magnitude_range) for more information.
  int get magnitudeEnd {
    final result = _ICU4XFixedDecimal_magnitude_end(_underlying);
    return result;
  }

  /// See the [Rust documentation for `nonzero_magnitude_start`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.nonzero_magnitude_start) for more information.
  int get nonzeroMagnitudeStart {
    final result = _ICU4XFixedDecimal_nonzero_magnitude_start(_underlying);
    return result;
  }

  /// See the [Rust documentation for `nonzero_magnitude_end`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.nonzero_magnitude_end) for more information.
  int get nonzeroMagnitudeEnd {
    final result = _ICU4XFixedDecimal_nonzero_magnitude_end(_underlying);
    return result;
  }

  /// See the [Rust documentation for `is_zero`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.is_zero) for more information.
  bool get isZero {
    final result = _ICU4XFixedDecimal_is_zero(_underlying);
    return result;
  }

  /// Multiply the [`FixedDecimal`] by a given power of ten.
  ///
  /// See the [Rust documentation for `multiply_pow10`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.multiply_pow10) for more information.
  void multiplyPow10(int power) {
    _ICU4XFixedDecimal_multiply_pow10(_underlying, power);
  }

  /// See the [Rust documentation for `sign`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.sign) for more information.
  FixedDecimalSign get sign {
    final result = _ICU4XFixedDecimal_sign(_underlying);
    return FixedDecimalSign.values[result];
  }

  /// Set the sign of the [`FixedDecimal`].
  ///
  /// See the [Rust documentation for `set_sign`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.set_sign) for more information.
  set sign(FixedDecimalSign sign) {
    _ICU4XFixedDecimal_set_sign(_underlying, sign.index);
  }

  /// See the [Rust documentation for `apply_sign_display`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.apply_sign_display) for more information.
  void applySignDisplay(FixedDecimalSignDisplay signDisplay) {
    _ICU4XFixedDecimal_apply_sign_display(_underlying, signDisplay.index);
  }

  /// See the [Rust documentation for `trim_start`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.trim_start) for more information.
  void trimStart() {
    _ICU4XFixedDecimal_trim_start(_underlying);
  }

  /// See the [Rust documentation for `trim_end`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.trim_end) for more information.
  void trimEnd() {
    _ICU4XFixedDecimal_trim_end(_underlying);
  }

  /// Zero-pad the [`FixedDecimal`] on the left to a particular position
  ///
  /// See the [Rust documentation for `pad_start`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.pad_start) for more information.
  void padStart(int position) {
    _ICU4XFixedDecimal_pad_start(_underlying, position);
  }

  /// Zero-pad the [`FixedDecimal`] on the right to a particular position
  ///
  /// See the [Rust documentation for `pad_end`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.pad_end) for more information.
  void padEnd(int position) {
    _ICU4XFixedDecimal_pad_end(_underlying, position);
  }

  /// Truncate the [`FixedDecimal`] on the left to a particular position, deleting digits if necessary. This is useful for, e.g. abbreviating years
  /// ("2022" -> "22")
  ///
  /// See the [Rust documentation for `set_max_position`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.set_max_position) for more information.
  void setMaxPosition(int position) {
    _ICU4XFixedDecimal_set_max_position(_underlying, position);
  }

  /// See the [Rust documentation for `trunc`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.trunc) for more information.
  void trunc(int position) {
    _ICU4XFixedDecimal_trunc(_underlying, position);
  }

  /// See the [Rust documentation for `trunc_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.trunc_to_increment) for more information.
  void truncToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_trunc_to_increment(_underlying, position, increment.index);
  }

  /// See the [Rust documentation for `half_trunc`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_trunc) for more information.
  void halfTrunc(int position) {
    _ICU4XFixedDecimal_half_trunc(_underlying, position);
  }

  /// See the [Rust documentation for `half_trunc_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_trunc_to_increment) for more information.
  void halfTruncToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_half_trunc_to_increment(_underlying, position, increment.index);
  }

  /// See the [Rust documentation for `expand`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.expand) for more information.
  void expand(int position) {
    _ICU4XFixedDecimal_expand(_underlying, position);
  }

  /// See the [Rust documentation for `expand_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.expand_to_increment) for more information.
  void expandToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_expand_to_increment(_underlying, position, increment.index);
  }

  /// See the [Rust documentation for `half_expand`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_expand) for more information.
  void halfExpand(int position) {
    _ICU4XFixedDecimal_half_expand(_underlying, position);
  }

  /// See the [Rust documentation for `half_expand_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_expand_to_increment) for more information.
  void halfExpandToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_half_expand_to_increment(_underlying, position, increment.index);
  }

  /// See the [Rust documentation for `ceil`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.ceil) for more information.
  void ceil(int position) {
    _ICU4XFixedDecimal_ceil(_underlying, position);
  }

  /// See the [Rust documentation for `ceil_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.ceil_to_increment) for more information.
  void ceilToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_ceil_to_increment(_underlying, position, increment.index);
  }

  /// See the [Rust documentation for `half_ceil`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_ceil) for more information.
  void halfCeil(int position) {
    _ICU4XFixedDecimal_half_ceil(_underlying, position);
  }

  /// See the [Rust documentation for `half_ceil_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_ceil_to_increment) for more information.
  void halfCeilToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_half_ceil_to_increment(_underlying, position, increment.index);
  }

  /// See the [Rust documentation for `floor`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.floor) for more information.
  void floor(int position) {
    _ICU4XFixedDecimal_floor(_underlying, position);
  }

  /// See the [Rust documentation for `floor_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.floor_to_increment) for more information.
  void floorToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_floor_to_increment(_underlying, position, increment.index);
  }

  /// See the [Rust documentation for `half_floor`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_floor) for more information.
  void halfFloor(int position) {
    _ICU4XFixedDecimal_half_floor(_underlying, position);
  }

  /// See the [Rust documentation for `half_floor_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_floor_to_increment) for more information.
  void halfFloorToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_half_floor_to_increment(_underlying, position, increment.index);
  }

  /// See the [Rust documentation for `half_even`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_even) for more information.
  void halfEven(int position) {
    _ICU4XFixedDecimal_half_even(_underlying, position);
  }

  /// See the [Rust documentation for `half_even_to_increment`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.half_even_to_increment) for more information.
  void halfEvenToIncrement(int position, RoundingIncrement increment) {
    _ICU4XFixedDecimal_half_even_to_increment(_underlying, position, increment.index);
  }

  /// Concatenates `other` to the end of `self`.
  ///
  /// If successful, `other` will be set to 0 and a successful status is returned.
  ///
  /// If not successful, `other` will be unchanged and an error is returned.
  ///
  /// See the [Rust documentation for `concatenate_end`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.concatenate_end) for more information.
  bool concatenateEnd(FixedDecimal other) {
    final result = _ICU4XFixedDecimal_concatenate_end(_underlying, other._underlying);
    return result.isOk;
  }

  /// Format the [`FixedDecimal`] as a string.
  ///
  /// See the [Rust documentation for `write_to`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.write_to) for more information.
  @override
  String toString() {
    final writeable = _Writeable();
    _ICU4XFixedDecimal_to_string(_underlying, writeable._underlying);
    return writeable.finalize();
  }
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Int64)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_create_from_i64')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XFixedDecimal_create_from_i64(int v);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Double, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_create_from_f64_with_lower_magnitude')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XFixedDecimal_create_from_f64_with_lower_magnitude(double f, int magnitude);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Double, ffi.Uint8)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_create_from_f64_with_significant_digits')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XFixedDecimal_create_from_f64_with_significant_digits(double f, int digits);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Double)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_create_from_f64_with_floating_precision')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XFixedDecimal_create_from_f64_with_floating_precision(double f);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_create_from_string')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XFixedDecimal_create_from_string(ffi.Pointer<ffi.Uint8> vData, int vLength);

@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_digit_at')
// ignore: non_constant_identifier_names
external int _ICU4XFixedDecimal_digit_at(ffi.Pointer<ffi.Opaque> self, int magnitude);

@ffi.Native<ffi.Int16 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_magnitude_start')
// ignore: non_constant_identifier_names
external int _ICU4XFixedDecimal_magnitude_start(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Int16 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_magnitude_end')
// ignore: non_constant_identifier_names
external int _ICU4XFixedDecimal_magnitude_end(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Int16 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_nonzero_magnitude_start')
// ignore: non_constant_identifier_names
external int _ICU4XFixedDecimal_nonzero_magnitude_start(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Int16 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_nonzero_magnitude_end')
// ignore: non_constant_identifier_names
external int _ICU4XFixedDecimal_nonzero_magnitude_end(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Bool Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_is_zero')
// ignore: non_constant_identifier_names
external bool _ICU4XFixedDecimal_is_zero(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_multiply_pow10')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_multiply_pow10(ffi.Pointer<ffi.Opaque> self, int power);

@ffi.Native<ffi.Int32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_sign')
// ignore: non_constant_identifier_names
external int _ICU4XFixedDecimal_sign(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_set_sign')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_set_sign(ffi.Pointer<ffi.Opaque> self, int sign);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_apply_sign_display')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_apply_sign_display(ffi.Pointer<ffi.Opaque> self, int signDisplay);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_trim_start')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_trim_start(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_trim_end')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_trim_end(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_pad_start')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_pad_start(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_pad_end')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_pad_end(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_set_max_position')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_set_max_position(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_trunc')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_trunc(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_trunc_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_trunc_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_trunc')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_trunc(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_trunc_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_trunc_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_expand')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_expand(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_expand_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_expand_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_expand')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_expand(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_expand_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_expand_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_ceil')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_ceil(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_ceil_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_ceil_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_ceil')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_ceil(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_ceil_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_ceil_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_floor')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_floor(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_floor_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_floor_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_floor')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_floor(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_floor_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_floor_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_even')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_even(ffi.Pointer<ffi.Opaque> self, int position);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_half_even_to_increment')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_half_even_to_increment(ffi.Pointer<ffi.Opaque> self, int position, int increment);

@ffi.Native<_ResultVoidVoid Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_concatenate_end')
// ignore: non_constant_identifier_names
external _ResultVoidVoid _ICU4XFixedDecimal_concatenate_end(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> other);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XFixedDecimal_to_string')
// ignore: non_constant_identifier_names
external void _ICU4XFixedDecimal_to_string(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> writeable);
