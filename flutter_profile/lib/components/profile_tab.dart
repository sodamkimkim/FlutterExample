import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  //TabController를 Single~~얘가 처리해줌.
  // 다형성에 의해 밑에서 this가 먹힘
  // 상태가 있는 위젯은 상태값들을 보존하고 추적할 수 있다.
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildTabBar(), Expanded(child: _buildTabBarView())],
    );
  }

  Widget _buildTabBar() {
    return TabBar(controller: _tabController, tabs: [
      Tab(
          icon: Icon(
        Icons.heart_broken,
        size: 40,
        color: Colors.orange[300],
      )),
      Tab(icon: Icon(Icons.heart_broken, size: 40, color: Colors.orange[300])),
    ]);
  }

  Widget _buildTabBarView() {
    return TabBarView(controller: _tabController, children: [
      GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 40,
        itemBuilder: (context, index) {
          return Image.network(
            // https://picsum.photos/
              "https://picsum.photos/id/${index + 1}/200/200");
        },
      ),
      Container(color: Colors.orange)
    ]);
  }
}// end oc _ProfileTabState

