import 'package:deep_dive_get_cli/app/data/model/post_model.dart';
import 'package:deep_dive_get_cli/app/data/model/story_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final storyController = StoryController();
  PostModel postModel = PostModel(
    namaAkun: 'Joshua_Zaky',
    description:
        'Username Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
    fotoProfile: 'foto_profile',
    jumlahLike: 1,
    isLike: false,
    postingGambar: 'foto_profile',
    isSponsor: true,
    isMark: false,
  );

  List<StoryModel> storyModel = [];
  @override
  void onInit() {
    loadStoryModel();
    super.onInit();
  }

  void loadStoryModel() {
    storyModel = [
      StoryModel(
        image: 'foto_profile',
        namaAkun: 'Joshua_Zaky',
        storyItems: [
          StoryItem.text(
            title: "I guess you'd love to see more of our food. That's great.",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Halo motion",
            backgroundColor: Colors.red,
          ),
        ],
        isLoginAccount: true,
      ),
      StoryModel(
        image: 'foto_profile',
        namaAkun: 'Bagas_Zaky',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
            caption: "Still sampling",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'foto_profile',
        namaAkun: 'Dhika_Zaky',
        storyItems: [
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
            caption: "Still sampling",
            controller: storyController,
          ),
        ],
      ),
    ];
    update();
  }

  void changeIconLike() {
    postModel.isLike = !postModel.isLike;
    if (postModel.isLike) {
      postModel.jumlahLike++;
    } else {
      postModel.jumlahLike--;
    }
    update();
  }

void changeIconMark(){
  postModel.isMark=!postModel.isMark;
  update();
}

  void toStoryPageView(
    List<StoryItem>? storyItems,
  ) {
    Get.toNamed(Routes.SNAP_GRAM, arguments: {
      'story': storyItems,
    });
  }

}


