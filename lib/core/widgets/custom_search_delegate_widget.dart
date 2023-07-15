import 'package:flutter/material.dart';

class CustomSearchDelegateWidget extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      TextButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          child: Text('Cancel'))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return SizedBox.shrink();
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {},
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {},
    );
  }
}
