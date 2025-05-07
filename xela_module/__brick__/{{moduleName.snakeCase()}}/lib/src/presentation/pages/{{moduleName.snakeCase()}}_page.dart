import 'package:auto_route/auto_route.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{moduleName.snakeCase()}}/src/_src.dart';

@RoutePage()
class {{moduleName.pascalCase()}}Page extends StatelessWidget {
  const {{moduleName.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<{{moduleName.pascalCase()}}Cubit>(
      create: (_) => sl(),
      child: BlocBuilder<{{moduleName.pascalCase()}}Cubit, {{moduleName.pascalCase()}}State>(
        builder: (context, state) {
          return Title(
            color: Colors.black,
            title: '{{moduleName.pascalCase()}}',
            child: Scaffold(
              appBar: AppBar(title: Text({{moduleName.pascalCase()}}I18n.title)),
              body: BlocBuilder<{{moduleName.pascalCase()}}Cubit, {{moduleName.pascalCase()}}State>(
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
