// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// See the [Rust documentation for `LocaleDirectionality`](https://docs.rs/icu/latest/icu/locid_transform/struct.LocaleDirectionality.html) for more information.
final class LocaleDirectionality implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  final core.List<Object> _edge_self;

  // Internal constructor from FFI.
  // isOwned is whether this is owned (has finalizer) or not
  // This also takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  LocaleDirectionality._(this._underlying, bool isOwned, this._edge_self) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XLocaleDirectionality_destroy));

  /// Construct a new ICU4XLocaleDirectionality instance
  ///
  /// See the [Rust documentation for `new`](https://docs.rs/icu/latest/icu/locid_transform/struct.LocaleDirectionality.html#method.new) for more information.
  ///
  /// Throws [Error] on failure.
  factory LocaleDirectionality(DataProvider provider) {
    final result = _ICU4XLocaleDirectionality_create(provider._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return LocaleDirectionality._(result.union.ok, true, []);
  }

  /// Construct a new ICU4XLocaleDirectionality instance with a custom expander
  ///
  /// See the [Rust documentation for `new_with_expander`](https://docs.rs/icu/latest/icu/locid_transform/struct.LocaleDirectionality.html#method.new_with_expander) for more information.
  ///
  /// Throws [Error] on failure.
  factory LocaleDirectionality.withExpander(DataProvider provider, LocaleExpander expander) {
    final result = _ICU4XLocaleDirectionality_create_with_expander(provider._underlying, expander._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return LocaleDirectionality._(result.union.ok, true, []);
  }

  /// See the [Rust documentation for `get`](https://docs.rs/icu/latest/icu/locid_transform/struct.LocaleDirectionality.html#method.get) for more information.
  LocaleDirection operator [](Locale locale) {
    final result = _ICU4XLocaleDirectionality_get(_underlying, locale._underlying);
    return LocaleDirection.values[result];
  }

  /// See the [Rust documentation for `is_left_to_right`](https://docs.rs/icu/latest/icu/locid_transform/struct.LocaleDirectionality.html#method.is_left_to_right) for more information.
  bool isLeftToRight(Locale locale) {
    final result = _ICU4XLocaleDirectionality_is_left_to_right(_underlying, locale._underlying);
    return result;
  }

  /// See the [Rust documentation for `is_right_to_left`](https://docs.rs/icu/latest/icu/locid_transform/struct.LocaleDirectionality.html#method.is_right_to_left) for more information.
  bool isRightToLeft(Locale locale) {
    final result = _ICU4XLocaleDirectionality_is_right_to_left(_underlying, locale._underlying);
    return result;
  }
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XLocaleDirectionality_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XLocaleDirectionality_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocaleDirectionality_create')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XLocaleDirectionality_create(ffi.Pointer<ffi.Opaque> provider);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocaleDirectionality_create_with_expander')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XLocaleDirectionality_create_with_expander(ffi.Pointer<ffi.Opaque> provider, ffi.Pointer<ffi.Opaque> expander);

@ffi.Native<ffi.Int32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocaleDirectionality_get')
// ignore: non_constant_identifier_names
external int _ICU4XLocaleDirectionality_get(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> locale);

@ffi.Native<ffi.Bool Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocaleDirectionality_is_left_to_right')
// ignore: non_constant_identifier_names
external bool _ICU4XLocaleDirectionality_is_left_to_right(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> locale);

@ffi.Native<ffi.Bool Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocaleDirectionality_is_right_to_left')
// ignore: non_constant_identifier_names
external bool _ICU4XLocaleDirectionality_is_right_to_left(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> locale);
