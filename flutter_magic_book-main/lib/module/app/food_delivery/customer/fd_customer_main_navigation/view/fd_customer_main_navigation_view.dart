import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fd_customer_main_navigation_controller.dart';

class FdCustomerMainNavigationView extends StatefulWidget {
  const FdCustomerMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, FdCustomerMainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const FdCustomerDashboardView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            const FdProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "User",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FdCustomerMainNavigationView> createState() =>
      FdCustomerMainNavigationController();
}
