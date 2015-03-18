// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-18T03:52:45.067Z

part of app.components.basic;

// **************************************************************************
// Generator: UixGenerator
// Target: class Basic
// **************************************************************************

Basic createBasic([String data]) {
  final r = new Basic()..data = data;
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
