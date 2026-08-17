import 'package:flutter/cupertino.dart';

import '../../database/database_model.dart';

class DictionaryListWidget extends StatelessWidget {
  const DictionaryListWidget({
    super.key,
    required this.results,
  });

  final List<DatabaseModel> results;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: results.length,
      itemBuilder: (context, index) {
        DatabaseModel model = results[index];
        return Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
          decoration: BoxDecoration(
              color: CupertinoColors.systemBackground.resolveFrom(context),
              border: Border.all(
                  color: CupertinoColors.systemGrey5.resolveFrom(context)
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.eng,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  model.type,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  model.myan,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
