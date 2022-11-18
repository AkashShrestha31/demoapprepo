import 'package:auto_route/auto_route.dart';
import 'package:dempproject/features/company_listing/presentations/bloc/company_bloc.dart';
import 'package:dempproject/features/company_listing/presentations/bloc/company_event.dart';
import 'package:dempproject/features/company_listing/presentations/bloc/company_state.dart';
import 'package:dempproject/features/login/presentations/bloc/login_bloc.dart';
import 'package:dempproject/features/login/presentations/bloc/login_event.dart';
import 'package:dempproject/features/login/presentations/bloc/login_state.dart';
import 'package:dempproject/injection_container.dart';
import 'package:dempproject/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyListingPages extends StatefulWidget {
  const CompanyListingPages({Key? key}) : super(key: key);

  @override
  State<CompanyListingPages> createState() => _CompanyListingPagesState();
}

class _CompanyListingPagesState extends State<CompanyListingPages> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(),
  //     body: Container(
  //       height: MediaQuery.of(context).size.height,
  //       width:MediaQuery.of(context).size.height ,
  //       child: Column(
  //         children: [
  //           Text("Coany name");
  //         ],
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<CompanyBloc>()..add(GetCompanyData()),
          ),
          BlocProvider(
            create: (context) => sl<LoginBloc>(),
          ),
        ],
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(),
              body: Column(
                children: [
                  BlocBuilder<CompanyBloc, CompanyState>(
                    builder: (context, state) {
                      if (state is CompanyLoaded) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.model.data!.length,
                          itemBuilder: (context, i) {
                            return InkWell(
                                onTap: () {
                                  BlocProvider.of<LoginBloc>(context).add(GetLoginData(state.model.data![i].email!, "P@ssw0rd"));
                                  // AutoRouter.of(context).push(LoginRoute(username: state.model.data![i].email!, password: "P@ssw0rd"));
                                },
                                child: Container(
                                    margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
                                    color: Colors.green,
                                    padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                                    child: Text(state.model.data![i].email!)));
                          },
                        );
                      }
                      return Text("afafafa");
                    },
                  ),
                  BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
                    print(state);
                    if (state is LoginEmpty) {
                      return Text("");
                    }

                    if (state is LoginLoaded) {
                      AutoRouter.of(context).push(LoginRoute());
                      return Container();
                    }
                    return Container();
                  }),
                ],
              ),
            ),
          ],
        ));
  }
}
