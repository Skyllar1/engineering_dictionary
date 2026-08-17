import 'package:engineering_dictionary/database/database_model.dart';
import 'package:flutter/cupertino.dart';

class DictionaryDetailPage extends StatefulWidget {
  const DictionaryDetailPage({super.key,required this.databaseModel});
  final DatabaseModel databaseModel;
  @override
  State<DictionaryDetailPage> createState() => _DictionaryDetailPageState();
}

class _DictionaryDetailPageState extends State<DictionaryDetailPage> {

  @override
  Widget build(BuildContext context) {
    DatabaseModel model = widget.databaseModel;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(model.eng),
        trailing: GestureDetector(
          onTap: (){

          },
          child: Icon(CupertinoIcons.heart),
        ),
      ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              decoration: BoxDecoration(
                  color: CupertinoColors.systemBackground.resolveFrom(context),
                  border: Border.all(
                      color: CupertinoColors.systemGrey5.resolveFrom(context)
                  ),
                borderRadius: BorderRadius.circular(14)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ENGLISH DEFINITION",style: TextStyle(
                    fontSize: 11,
                  ),),
                  SizedBox(height: 8,),
                  Text(model.eng,style: TextStyle(
                    fontSize: 16,
                    color: CupertinoColors.label.resolveFrom(context)
                  ),)
                ],
              ),
            ),

            Center(child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: CupertinoColors.systemBackground.resolveFrom(context),
                ),
                child: Text(model.type))),

            Container(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              decoration: BoxDecoration(
                  color: CupertinoColors.systemBackground.resolveFrom(context),
                  border: Border.all(
                      color: CupertinoColors.systemGrey5.resolveFrom(context)
                  ),
                  borderRadius: BorderRadius.circular(14)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Myanmar DEFINITION",style: TextStyle(
                    fontSize: 11,
                  ),),
                  SizedBox(height: 8,),
                  Text(model.myan.split("~~~")[0],style: TextStyle(
                      fontSize: 16,
                      color: CupertinoColors.label.resolveFrom(context)
                  ),)
                ],
              ),
            )

          ],
        )
    );
  }
}
