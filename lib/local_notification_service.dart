import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService{
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();
  final AndroidInitializationSettings _androidInitializationSettings=const AndroidInitializationSettings(
    'ic_launcher'
  );

void initialiseNotification()async{
  InitializationSettings _initializingSetting=InitializationSettings(
    android: _androidInitializationSettings
  );
 await  _flutterLocalNotificationsPlugin.initialize(_initializingSetting);
}

void sendnotification(String title,String body){
  AndroidNotificationDetails _androidNotificationDetails=AndroidNotificationDetails(
    'channelId',
    'channelName',
    importance: Importance.max,
    priority: Priority.high
  );
  NotificationDetails notificationDetails=NotificationDetails(
    android: _androidNotificationDetails
  );

  _flutterLocalNotificationsPlugin.show(
    0,
    title,
    body,
notificationDetails
  
  );
}
void cancelnotification(){
  _flutterLocalNotificationsPlugin.cancelAll();
}

void schedulenotification(String title,String body){
  AndroidNotificationDetails _androidNotificationDetails=AndroidNotificationDetails(
    'channelId',
    'channelName',
    importance: Importance.max,
    
    
    priority: Priority.high
  );
  NotificationDetails notificationDetails=NotificationDetails(
    android: _androidNotificationDetails
  );

  _flutterLocalNotificationsPlugin.periodicallyShow(

    0,
    title,
    
    body,
    RepeatInterval.everyMinute,
notificationDetails,
 
 
  
  );
}

}