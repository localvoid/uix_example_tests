// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-22T11:18:27.125Z

part of app.components.basic;

// **************************************************************************
// Generator: UixGenerator
// Target: class Basic
// **************************************************************************

Basic createBasic([String data, Component parent]) {
  final r = new Basic()
    ..parent = parent
    ..data = data;
  r.init();
  return r;
}
VNode vBasic({String data, Object key, String type, Map<String, String> attrs,
    Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createBasic,
    flags: VNode.componentFlag | VNode.dirtyCheckFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);

// **************************************************************************
// Generator: UixGenerator
// Target: class ComponentWithEvents
// **************************************************************************

ComponentWithEvents createComponentWithEvents([String data, Component parent]) {
  final r = new ComponentWithEvents()
    ..parent = parent
    ..data = data;
  r.init();
  return r;
}
VNode vComponentWithEvents({String data, Object key, String type,
    Map<String, String> attrs, Map<String, String> style, List<String> classes,
    List<VNode> children}) => new VNode.component(createComponentWithEvents,
    flags: VNode.componentFlag | VNode.dirtyCheckFlag,
    key: key,
    data: data,
    type: type,
    attrs: attrs,
    style: style,
    classes: classes,
    children: children);
