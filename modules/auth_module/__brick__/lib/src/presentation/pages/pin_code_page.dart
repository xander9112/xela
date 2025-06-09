import 'package:auth/src/_src.dart';
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/settings.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key, this.onResult, this.useAppBar = false});

  final void Function(bool)? onResult;

  final bool useAppBar;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalAuthCubit>(
      create: (context) {
        return sl<LocalAuthCubit>()..checkAuth(onResult);
      },
      child: Scaffold(
        appBar: useAppBar ? AppBar() : null,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: BlocConsumer<LocalAuthCubit, LocalAuthState>(
                  listener: (context, state) {
                    //                     switch (state) {
                    //   LocalAuthInitialState() => print('Person $name'),
                    //   LocalAuthSuccessState(:final name) => print('Person $name'),
                    //   LocalAuthResetPinState(:final population) => print('City ($population)'),

                    // }

                    if (state case LocalAuthSuccessState()) {
                      onResult?.call(true);
                    } else if (state case LocalAuthResetPinState()) {
                      onResult?.call(false);

                      AppInitializer.updateKey();
                    }
                  },
                  builder: (context, state) {
                    if (state case LocalAuthResetPinState()) {
                      return GestureDetector(
                        onTap: () {
                          onResult?.call(false);
                          context.router.replacePath('/');
                        },
                        child: const UiProgressIndicator(),
                      );
                    }

                    if (state case LocalAuthCreatePin(
                      :final String? error,
                      :final bool confirm,
                      :final int length,
                    )) {
                      return PinCodeCreateForm(
                        key: UniqueKey(),
                        isConfirm: confirm,
                        message: error,
                        pinCodeLength: length,
                        onComplete: (pinCode) {
                          context.read<LocalAuthCubit>().createPin(
                            pinCode,
                            onResult,
                          );
                        },
                      );
                    }

                    if (state case LocalAuthEnterPin(
                      :final biometricSupportModel,
                      :final String? error,
                      :final length,
                      :final status,
                    )) {
                      return PinCodeEnterForm(
                        isLoading: status.isFetchingInProgress,
                        message: error,
                        pinCodeLength: length,
                        useBiometric:
                            biometricSupportModel.status ==
                                BiometricStatus.available &&
                            (biometricSupportModel.useBiometric ?? false),
                        isFace: biometricSupportModel.isFace,
                        onBiometricPressed: () {
                          context.read<LocalAuthCubit>().biometricAuth(
                            onResult,
                          );
                        },
                        onPressedReset:
                            context.read<LocalAuthCubit>().resetPinCode,
                        onComplete: (pinCode) async {
                          await context.read<LocalAuthCubit>().enterPin(
                            pinCode,
                            onResult,
                          );
                        },
                      );
                    }

                    return const UiProgressIndicator();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
