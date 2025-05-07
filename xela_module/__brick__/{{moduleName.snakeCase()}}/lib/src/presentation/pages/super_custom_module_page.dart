import 'package:auto_route/auto_route.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_custom_module/src/_src.dart';

@RoutePage()
class SuperCustomModulePage extends StatelessWidget {
  const SuperCustomModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SuperCustomModuleCubit>(
      create: (_) => sl(),
      child: BlocBuilder<SuperCustomModuleCubit, SuperCustomModuleState>(
        builder: (context, state) {
          return Title(
            color: Colors.black,
            title: 'SuperCustomModule',
            child: Scaffold(
              appBar: AppBar(title: Text(SuperCustomModuleI18n.title)),
              body: BlocBuilder<SuperCustomModuleCubit, SuperCustomModuleState>(
                builder: (context, state) {
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
