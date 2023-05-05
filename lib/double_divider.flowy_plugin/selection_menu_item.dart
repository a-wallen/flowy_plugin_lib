import 'package:flutter/material.dart';
import 'package:flowy_plugin/flowy_plugin.dart';

import 'node_widget_builder.dart';
import 'next.dart';

SelectionMenuItem doubleDividerMenuItem = SelectionMenuItem.node(
  name: 'Double Divider',
  iconData: const IconData(0xe000, fontFamily: 'MaterialIcons'),
  keywords: ['double line', 'double rule', 'double divider', 'divider'],
  replace: (_, TextNode textNode) => textNode.toPlainText().isEmpty,
  updateSelection: (editorState, path, val1, val2) {
    var val = editorState.service.selectionService.currentSelectedNodes;

    return Selection.collapsed(
      Position(path: next(val.first.path)),
    );
  },
  nodeBuilder: (editorState) {
    return Node(
      type: DoubleDividerType,
    );
  },
);
