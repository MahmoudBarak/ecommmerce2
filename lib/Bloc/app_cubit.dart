import 'package:ecommmerce2/models/product_model.dart';
import 'package:ecommmerce2/network/product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final ProductRepository product ;
   late List<ProductModel> myPrpduct;

  AppCubit(this.product) : super(AppInitial());
  static AppCubit get(context)=> BlocProvider.of(context);

  List<ProductModel> getProduct(){
    product.product().then((value) => () {
      emit(ProductLodedState());
      this.myPrpduct=value;

    });

    return myPrpduct ;
  }
}
