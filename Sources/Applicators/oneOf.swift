func oneOf(context: Context, oneOf: Any, instance: Any, schema: [String: Any]) -> AnySequence<ValidationError> {
  guard let oneOf = oneOf as? [Any] else {
    return AnySequence(EmptyCollection())
  }

  if oneOf.filter({ context.descend(instance: instance, subschema: $0).isValid }).count != 1 {
    return AnySequence([
      ValidationError(
        "Only one value from `oneOf` should be met",
        instanceLocation: context.instanceLocation
      ),
    ])
  }

  return AnySequence(EmptyCollection())
}
