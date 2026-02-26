// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ContactsController)
const contactsControllerProvider = ContactsControllerFamily._();

final class ContactsControllerProvider
    extends $AsyncNotifierProvider<ContactsController, ContactsState> {
  const ContactsControllerProvider._(
      {required ContactsControllerFamily super.from,
      required String? super.argument})
      : super(
          retry: null,
          name: r'contactsControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$contactsControllerHash();

  @override
  String toString() {
    return r'contactsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ContactsController create() => ContactsController();

  @override
  bool operator ==(Object other) {
    return other is ContactsControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$contactsControllerHash() =>
    r'8820fd628f67270b80aeeb96c9d36418956bbe72';

final class ContactsControllerFamily extends $Family
    with
        $ClassFamilyOverride<ContactsController, AsyncValue<ContactsState>,
            ContactsState, FutureOr<ContactsState>, String?> {
  const ContactsControllerFamily._()
      : super(
          retry: null,
          name: r'contactsControllerProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ContactsControllerProvider call(
    String? occasionId,
  ) =>
      ContactsControllerProvider._(argument: occasionId, from: this);

  @override
  String toString() => r'contactsControllerProvider';
}

abstract class _$ContactsController extends $AsyncNotifier<ContactsState> {
  late final _$args = ref.$arg as String?;
  String? get occasionId => _$args;

  FutureOr<ContactsState> build(
    String? occasionId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args,
    );
    final ref = this.ref as $Ref<AsyncValue<ContactsState>, ContactsState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<ContactsState>, ContactsState>,
        AsyncValue<ContactsState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
