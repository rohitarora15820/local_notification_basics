import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:localnotification/local_notification_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  NotificationService notificationService=NotificationService();
  @override
  void initState() {
   
    super.initState();
    notificationService.initialiseNotification();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea
    (
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                 notificationService.sendnotification("Schedule Title", 'This is a body');
              }, child: Text('Start Notification')),
               ElevatedButton(onPressed: (){
                 notificationService.schedulenotification("Schedule Title", 'This is a body');
               }, child: Text('Schedule Notification')),
                ElevatedButton(onPressed: (){
                  notificationService.cancelnotification();
                }, child: Text('Cancel Notification'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
         
        }),
    
      ),
    );
  }
}