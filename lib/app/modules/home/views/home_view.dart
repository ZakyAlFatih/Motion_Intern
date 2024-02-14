import 'package:deep_dive_get_cli/app/shared/widgets/image_story.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/post_widget.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/bottom_navbar.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/header.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/story_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:13.0,vertical:5.0),
                  child: Header() ,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 97.75,
                  child: ListView.builder(
                    itemCount: controller.storyModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      StoryModel data = controller.storyModel[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 12,
                        ),
                        child: ImageStory(
                          
                          story: data,
                          onTap: () {
                            controller.toStoryPageView(data.storyItems );
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Divider(
                            color: Colors.grey,
                            thickness: 1,
                            
                            ),
                Post(
                  postModel: controller.postModel,
                  onPressed: controller.changeIconLike,
                  onPs: controller.changeIconMark,
                ),
                const SizedBox(
                  height: 18,
                ),
                
              ],
            ),
          ),
        bottomNavigationBar:BottomNavbar() ,
        ),
      );
    });
  }
}
