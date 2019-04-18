import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>with SingleTickerProviderStateMixin {
  TabController tabController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   tabController = new TabController(length: 6, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            floating: true,
            pinned:  true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              title: getSearchField(),
              centerTitle: true,
            ),
            forceElevated: false,


            bottom: TabBar(
              isScrollable: true,
              controller:tabController ,
                tabs: [
                  customNavBar('First'),
                  customNavBar('Second'),
                  customNavBar('third'),
                  customNavBar('fourth'),
                  customNavBar('third'),
                  customNavBar('fourth'),
            ]),




          ),

            SliverFillRemaining(
              child: TabBarView(
                controller: tabController,

                children: <Widget>[
                  Tab1(),
                  Tab2(),

                ],
              ),
            ),
//          SliverList(
//            delegate: SliverChildBuilderDelegate((context, i){
//              return Container(
//                height: 100,color: (i%2==0)?Colors.indigo:Colors.white,
//
//              );
//            })
//          ),



        ],
      ),
    );
  }
  getSearchField(){
    return Padding(
      padding: const EdgeInsets.only(left:70.0,right: 70,bottom: 40.0),
      child: Container(
        height:30 ,// to control height of text filed
        child: new TextField(
          decoration:InputDecoration(
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.all(0.0),
            hintText: "Search ",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          ),


        ),
      ),
    );
  }
  customNavBar(String text){
    return Container(
      height:30,
      width: 100,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors. blue,
      ),

      child:  Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 20),)),
    );
  }
  
  
}
class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      CustomScrollView(
      shrinkWrap: false,
      slivers: <Widget>[
                  SliverList(
            delegate: SliverChildBuilderDelegate((context, i){
              return Container(
                height: 100,color: (i%2==0)?Colors.indigo:Colors.white,

              );
            },childCount: 10)
          ),


      ],
    );
  }
}
class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  



}

