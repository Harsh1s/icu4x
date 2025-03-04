// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// An ICU4X TimeFormatter object capable of formatting an [`Time`] type (and others) as a string
///
/// See the [Rust documentation for `TimeFormatter`](https://docs.rs/icu/latest/icu/datetime/struct.TimeFormatter.html) for more information.
final class TimeFormatter implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  final core.List<Object> _edge_self;

  // Internal constructor from FFI.
  // isOwned is whether this is owned (has finalizer) or not
  // This also takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  TimeFormatter._(this._underlying, bool isOwned, this._edge_self) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XTimeFormatter_destroy));

  /// Creates a new [`TimeFormatter`] from locale data.
  ///
  /// See the [Rust documentation for `try_new_with_length`](https://docs.rs/icu/latest/icu/datetime/struct.TimeFormatter.html#method.try_new_with_length) for more information.
  ///
  /// Throws [Error] on failure.
  factory TimeFormatter.withLength(DataProvider provider, Locale locale, TimeLength length) {
    final result = _ICU4XTimeFormatter_create_with_length(provider._underlying, locale._underlying, length.index);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return TimeFormatter._(result.union.ok, true, []);
  }

  /// Formats a [`Time`] to a string.
  ///
  /// See the [Rust documentation for `format`](https://docs.rs/icu/latest/icu/datetime/struct.TimeFormatter.html#method.format) for more information.
  ///
  /// Throws [Error] on failure.
  String formatTime(Time value) {
    final writeable = _Writeable();
    final result = _ICU4XTimeFormatter_format_time(_underlying, value._underlying, writeable._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return writeable.finalize();
  }

  /// Formats a [`DateTime`] to a string.
  ///
  /// See the [Rust documentation for `format`](https://docs.rs/icu/latest/icu/datetime/struct.TimeFormatter.html#method.format) for more information.
  ///
  /// Throws [Error] on failure.
  String formatDatetime(DateTime value) {
    final writeable = _Writeable();
    final result = _ICU4XTimeFormatter_format_datetime(_underlying, value._underlying, writeable._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return writeable.finalize();
  }

  /// Formats a [`IsoDateTime`] to a string.
  ///
  /// See the [Rust documentation for `format`](https://docs.rs/icu/latest/icu/datetime/struct.TimeFormatter.html#method.format) for more information.
  ///
  /// Throws [Error] on failure.
  String formatIsoDatetime(IsoDateTime value) {
    final writeable = _Writeable();
    final result = _ICU4XTimeFormatter_format_iso_datetime(_underlying, value._underlying, writeable._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return writeable.finalize();
  }
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XTimeFormatter_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XTimeFormatter_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XTimeFormatter_create_with_length')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XTimeFormatter_create_with_length(ffi.Pointer<ffi.Opaque> provider, ffi.Pointer<ffi.Opaque> locale, int length);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XTimeFormatter_format_time')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XTimeFormatter_format_time(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> value, ffi.Pointer<ffi.Opaque> writeable);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XTimeFormatter_format_datetime')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XTimeFormatter_format_datetime(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> value, ffi.Pointer<ffi.Opaque> writeable);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XTimeFormatter_format_iso_datetime')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XTimeFormatter_format_iso_datetime(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> value, ffi.Pointer<ffi.Opaque> writeable);
