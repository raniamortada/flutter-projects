
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloc/bloc.dart';
import 'package:gym_app/shared/local/cach_helper.dart';
import 'package:gym_app/shared/local/language_cechhelper.dart';

import 'loce_state.dart';



class LanguageCubit extends Cubit<languageStates>{
  LanguageCubit():super(languageInitialState());

  Future<void>getSavedLanguage()async{
    final String cachhedLanguageCode =
    await LanguageCacheHelper().getCachedLanguageCode();
    emit(changeLanguageState(locale: Locale(cachhedLanguageCode)));

    //CacheHelper.sharedPreferences.setString("language", Locale(cachhedLanguageCode).toString());
  }
  Future<void>changeLanguage(String languageCode)async{
    await LanguageCacheHelper().cacheLanguageCode(languageCode);
    emit(changeLanguageState(locale: Locale(languageCode)));
    CacheHelper.sharedPreferences.setString(CustomerHelper.Language, Locale(languageCode).toString());
    print(CacheHelper.sharedPreferences.get(CustomerHelper.Language));

    //print(Locale(languageCode));
  }
// void toArabic()=>emit(selectedLanguageState(Locale('ar')));

// void toEnglish()=>emit(selectedLanguageState(Locale('en')));
}

class RadioListTileCubit extends Cubit<int> {
  RadioListTileCubit() : super(0);

  void selectItem(int index) {
    emit(index);
  }
}