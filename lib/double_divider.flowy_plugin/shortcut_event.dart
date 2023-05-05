import 'package:flutter/widgets.dart';
import 'package:flowy_plugin/flowy_plugin.dart';

import 'delete_text.dart';
import 'node_widget_builder.dart';
import 'next.dart';

ShortcutEvent insertDoubleDivider = ShortcutEvent(
  key: 'insert_double_divider',
  command: 'Equal',
  handler: (editorState, event) {
    final FlowyService flowyService = editorState.service;
    final AppFlowySelectionService selectionService = flowyService.selectionService;
    final ValueNotifier<Selection?> selectionValueNotifier = selectionService.currentSelection;
    // final Selection? selection = selectionValueNotifier.value;
    final List<Node> selectedNodes =  selectionService.currentSelectedNodes;
    final Iterable<TextNode> textNodes = selectedNodes.whereType<TextNode>();

    int? selection = null;
    // if (textNodes.length != 1 || selection == null) {
    if (selection == null) {
      return KeyEventResult.ignored;
    }
    // final TextNode textNode = textNodes.first;
    // String text = textNode.toPlainText();
    // if (text.contains('==')) {

    //   //HANDLING CASE WHERE '===' is not continuous
    //   if(text.indexOf('==') + 2 <= selection.endIndex || text.indexOf('==') > selection.startIndex ){
    //     return KeyEventResult.ignored;
    //   }

    //   List<int> path = textNode.path;
    //   int cursor = 1;

    //   var transaction = editorState.transaction;

    //   transaction = deleteText(transaction, textNode, 0, textNode.toPlainText().length);

    //   //INSERT AVAILABLE TEXT PRIOR TO SHORTCUT
    //   if (text.indexOf('==') > 0) {
    //     transaction.insertNode(
    //       path,
    //       TextNode(
    //         delta: Delta(
    //             operations: [
    //               TextInsert(text.substring(
    //                 0,
    //                 text.indexOf('=='),
    //               ))
    //             ]
    //         ),
    //       ),
    //     );
    //     cursor++;
    //   }

    //   //INSERT DIVIDER
    //   transaction.insertNode(
    //     path,
    //     Node(type: DoubleDividerType),
    //   );

    //   //INSERT AVAILABLE TEXT AFTER SHORTCUT
    //   // if (text.indexOf('==') + 2 != text.length) {
    //   //   transaction.insertNode(path,
    //   //       TextNode(delta: Delta(operations: [TextInsert(text.substring(text.indexOf('==') + 2, text.length))])));
    //   //   cursor++;
    //   // }

    //   //FIND CORRECT CURSOR POSITION
    //   while (cursor > 0) {
    //     path = next(path);
    //     cursor--;
    //   }

    //   editorState.apply(transaction).then((value) async {
    //     await editorState.updateCursorSelection(Selection.collapsed(Position(path: path)));
    //   });
    //   return KeyEventResult.handled;
    // }
    return KeyEventResult.ignored;
  },
);
