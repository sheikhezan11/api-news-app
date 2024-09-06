import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app/model/news_channel_headline_model.dart';
import 'package:news_app/res/colors/colors.dart';
import 'package:news_app/view_model/controller/news_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NewsViewModel newsViewModel = NewsViewModel();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.account_box, size: 35,),
          title: const Text("News", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: height * .55,
              width: width,
              child: FutureBuilder<NewsChannelsHeadlinesModel>(
                  future: newsViewModel.fetchNewsChannelHeadlinesApi(),
                  builder: (BuildContext context, snapshot) {
                    if(snapshot.connectionState == ConnectionState.waiting ){
                      return Center(
                        child: SpinKitCircle(
                          size: 20,
                          color: AppColor.mainBlueColor,
                        ),
                      );
                    }else{
                      return ListView.builder(
                          itemCount: snapshot.data!.articles!.length,
                          itemBuilder: (context,index) {
                            return Container(
                              child: CachedNetworkImage(
                                imageUrl: snapshot.data!.articles![index].urlToImage.toString(),
                                fit: BoxFit.cover,
                                placeholder: (context,url) => Container(child: spinKit2,),
                                errorWidget: (context, url, error) => Icon(Icons.error_outline, color: Colors.red,),
                              ),
                            );
                          }
                      );

                    }
                  }
              ),
            )
          ],
        )
    );
  }
}

const spinKit2 = SpinKitFadingCircle(
  color: Colors.indigo,
  size: 50,
);