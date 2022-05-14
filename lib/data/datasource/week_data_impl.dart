import 'package:test_appbar_animation/domain/models/week_data.dart';
import 'package:test_appbar_animation/domain/repository/base_week.dart';

class WeekDataFetch implements IWeekDataFetch {
  @override
  List<WeekDataModel> getWeeks() {
    List<WeekDataModel> list = [];

    list.add(WeekDataModel.fromJson(json));

    return list;
  }
}

final Map<String, dynamic> json = {
  "week": "wen",
  "month": "sep",
  "day": 1,
  "color": "red",
};







//  "jobs" : [
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-es-moneyman-delivery",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-es-moneyman-delivery/",
//       "color" : "aborted"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-es-moneyman-testing-aws-fad",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-es-moneyman-testing-aws-fad/",
//       "color" : "blue"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-kz-solva-delivery",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-kz-solva-delivery/",
//       "color" : "blue"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-kz-solva-hotfix",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-kz-solva-hotfix/",
//       "color" : "disabled"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-kz-solva-testing",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-kz-solva-testing/",
//       "color" : "blue"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-mx-card-delivery",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-mx-card-delivery/",
//       "color" : "red"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-ru-moneyman-delivery",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-ru-moneyman-delivery/",
//       "color" : "blue"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-ru-moneyman-hotfix",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-ru-moneyman-hotfix/",
//       "color" : "blue"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "flutter-ru-moneyman-testing",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/flutter-ru-moneyman-testing/",
//       "color" : "blue"
//     },
//     {
//       "_class" : "org.jenkinsci.plugins.workflow.job.WorkflowJob",
//       "name" : "kmm-mx-card-testing-aws-fad",
//       "url" : "https://jenkins-mobile.moneyman.ru/job/kmm-mx-card-testing-aws-fad/",
//       "color" : "red"
//     }
//   ],