import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mobile_app/view/components/appbar_widget.dart';
import 'package:mobile_app/viewmodel/web/remote_datasource.dart';

import '../components/property_card_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RemoteDataSource? remoteDataSource;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          CustomAppBar(),
          PropertyCard(),
          PropertyCard(),
          PropertyCard(),
          PropertyCard(),
        ],
      ),
    );
  }
}
