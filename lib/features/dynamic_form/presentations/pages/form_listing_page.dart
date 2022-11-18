import 'package:dempproject/features/dynamic_form/presentations/bloc/form_bloc.dart';
import 'package:dempproject/features/dynamic_form/presentations/bloc/form_state.dart';
import 'package:dempproject/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormListingPages extends StatefulWidget {
  const FormListingPages({Key? key}) : super(key: key);

  @override
  State<FormListingPages> createState() => _FormListingPagesState();
}

class _FormListingPagesState extends State<FormListingPages> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<FormBloc>(),
          ),
        ],
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(),
              body: Column(
                children: [
                  BlocBuilder<FormBloc, FormDataState>(
                    builder: (context, state) {
                      print("called $state");
                      if (state is FormLoaded) {
                        // return ListView.builder(
                        //   shrinkWrap: true,
                        //   itemCount: 5,
                        //   itemBuilder: (context, i) {
                        //     return InkWell(
                        //         onTap: () {
                        //           // AutoRouter.of(context).push(LoginRoute(username: state.model.data![i].email!, password: "P@ssw0rd"));
                        //         },
                        //         child: Container(
                        //             margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
                        //             color: Colors.green,
                        //             padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                        //             child: Text("")));
                        //   },
                        // );
                      }
                      return Text("afafafa");
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
