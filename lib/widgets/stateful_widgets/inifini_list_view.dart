import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html_editor_enhanced/utils/utils.dart';

class InfinityListView extends StatefulWidget {
  final IndexedWidgetBuilder itemWidget;
  final List<dynamic> listItems;
  final Function pullRefesh;
  final Function loadMore;
  final Function? onTapChild;
  final bool isLoadMore;

  const InfinityListView({required this.itemWidget,
    required this.listItems,
    required this.pullRefesh,
    required this.loadMore,
    required this.isLoadMore,
    this.onTapChild});

  @override
  State<InfinityListView> createState() => _InfinityListViewState();
}

class _InfinityListViewState extends State<InfinityListView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addMoreItem();

  }

  void addMoreItem() async{
    _scrollController.addListener(() {
      if(_scrollController.offset >= _scrollController.position.maxScrollExtent){
        print('load More');
        widget.loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        widget.pullRefesh();
      },
      child: ListView.builder(
        controller: _scrollController,
        // physics: const ClampingScrollPhysics(),
        itemCount: widget.listItems.length,
        itemBuilder: (context, index) {
          // if (index == widget.listItems.length  && widget.isLoadMore) {
          //   return const Center(child: CircularProgressIndicator());
          // }
          return widget.itemWidget(context, index);
        },
      ),
    );
  }
}
