import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../clean_by_hour/view/clean_by_hour.dart';
import '../../../main/view_model/app_cubit.dart';
import '../../view_model/home_cubit.dart';

class GridCategories extends StatelessWidget {
  const GridCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => HomeCubit(),
  child: BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    return FadeInUp(
      duration: const Duration(seconds: 1),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of columns in the grid
          mainAxisSpacing: 10, // spacing between rows
          crossAxisSpacing: 10, // spacing between columns
          childAspectRatio: 0.8, // aspect ratio of each grid item
        ),
        itemCount: HomeCubit.get(context).works.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              if (HomeCubit.get(context).works[index].title == AppStrings.cleanHour) {
                AppCubit.get(context).goNext(const CleanByHour(), context);
              } else {
                return;
              }
            },
            child: GridTile(
              child: FadeIn(
                duration: const Duration(milliseconds: 1000),
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0x66034488)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FadeIn(
                          duration: const Duration(milliseconds: 1000),
                          child: Image.asset(HomeCubit.get(context).works[index].image,)
                      ),
                      FadeIn(
                        duration: const Duration(milliseconds: 1000),
                        child: Text(
                          HomeCubit.get(context).works[index].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ).tr(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  },
),
);
  }
}