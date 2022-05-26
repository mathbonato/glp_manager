import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glp_manager_mobile/modules/branch_list/branch_list_page.dart';
import 'package:glp_manager_mobile/modules/dashboard/dashboard_page.dart';
import 'package:glp_manager_mobile/modules/home/home_page.dart';
import 'package:glp_manager_mobile/modules/metrics/metrics_page.dart';
import 'package:glp_manager_mobile/shared/themes/app_images.dart';
import 'package:glp_manager_mobile/shared/themes/appcollors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: const EdgeInsets.all(0.0), children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: const Text('Teste Almeida'),
          accountEmail: const Text('teste@gmail.com'),
          currentAccountPicture: const CircleAvatar(
            backgroundImage: ExactAssetImage(AppImages.avatar),
          ),
          onDetailsPressed: () {},
          decoration: const BoxDecoration(color: AppColors.primary
              //   image: DecorationImage(
              //       image: AssetImage(AppImages.fundo), fit: BoxFit.cover)
              ),
        ),
        ListTile(
          title: const Text('Home'),
          leading: const Icon(Icons.home),
          onTap: () => Get.to(DashboardPage()),
        ),
        const Divider(),
        ListTile(
          title: const Text('Perfil'),
          leading: const Icon(Icons.person),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          title: Text('Filiais'),
          leading: Icon(Icons.villa_sharp),
          onTap: () => Get.to(BranchList()),
        ),
        const Divider(),
        ListTile(
          title: const Text('Metricas'),
          leading: const Icon(Icons.area_chart_sharp),
          onTap: () => Get.to(MetricsPage()),
        ),
        const Divider(),
        ListTile(
          title: const Text('Suporte'),
          leading: const Icon(Icons.report_problem),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          title: const Text('Sair'),
          leading: const Icon(Icons.logout),
          onTap: () => Get.to(HomePage()),
        ),
        ListTile(
            title: const Text('Fechar'),
            leading: const Icon(Icons.close),
            onTap: () => Get.back()),
      ]),
    );
  }
}
