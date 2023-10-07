import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';
import '../../models/get_profile_model.dart';
import '../../repository/auth_repository.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_text_form_field.dart';

class ViewDocumentPage extends StatefulWidget {

  @override
  State<ViewDocumentPage> createState() => _ViewDocumentPageState();
}

class _ViewDocumentPageState extends State<ViewDocumentPage> {
  GetProfileModel getProfileModel = GetProfileModel();

  @override
  void initState() {
    getProfileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    backgroundColor: Colors.transparent,
    body: SizedBox(
      width: size.width,
      child: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(24.0),
          child: getProfileModel.data == null ?Center(child: CircularProgressIndicator(),): Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PAN Card',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium13Black900,),

             SizedBox(
               height: 20,
             ),

             Container(
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey.shade300),
                 borderRadius: BorderRadius.circular(10)
               ),
               height: 200,
               width: MediaQuery.of(context).size.width,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Image.network(getProfileModel.data!.uploadPanCard.toString(),width: MediaQuery.of(context).size.width,),
               ),
             ),
              SizedBox(
                height: 20,
              ),

              Text('Adhar Card front',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium13Black900,),

              SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10)
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(getProfileModel.data!.frontSide.toString(),width: MediaQuery.of(context).size.width,),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Text('Adhar Card back',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium13Black900,),

              SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10)
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(getProfileModel.data!.backSide.toString(),width: MediaQuery.of(context).size.width,),
                ),
              )
            ],
          ),
        )
      ),
    ),
    ));
  }

  getProfileData() async {
    final authRepository = AuthRepository();
    final response  = await authRepository.getProfileApi();
    getProfileModel = GetProfileModel.fromJson(response);
    setState(() {

    });
  }
}
