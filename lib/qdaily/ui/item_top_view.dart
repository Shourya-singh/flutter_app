import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter/material.dart';

import '../../page_index.dart';

class ItemTopView extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onPressed;

  ItemTopView({Key key, this.icon, this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          ImageLoadView('$icon',
              height: 25,
              width: 25,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          Gaps.hGap8,
          Text('$title'),
          Spacer(),
          IconButton(icon: Icon(Feather.share), onPressed: onPressed)
        ]),
        padding: EdgeInsets.only(left: 15, right: 10));
  }
}
