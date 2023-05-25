

import 'package:flutter/material.dart';

import 'package:hidoc/config/common.dart';
import 'package:hidoc/model/article_model.dart';


class Trending extends StatelessWidget {
  const Trending({
    super.key,
    required this.data,
  });

  final Data data;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius:
              BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            MainTitle(
              title: "Trending Hidoc Bulletin",
            ),
             SizedBox(height: 15),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.trandingArticle.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (contex, index) {
                    return Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        SubTitle(
                            title: data.trandingArticle[index]
                                .articleTitle),
                                 SizedBox(height: 10),
                        Description(
                            title: data.trandingArticle[index]
                                .articleDescription),
                                 SizedBox(height: 10),
                        ReadMore(),
                         SizedBox(height: 20),
                      ],
                    );
                  }),
            )
          ]),
        ));
  }
}