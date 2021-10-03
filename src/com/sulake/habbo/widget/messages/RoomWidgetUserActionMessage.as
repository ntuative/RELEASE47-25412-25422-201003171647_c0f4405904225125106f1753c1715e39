package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_520:String = "RWUAM_RESPECT_USER";
      
      public static const const_514:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_686:String = "RWUAM_START_TRADING";
      
      public static const const_532:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_591:String = "RWUAM_WHISPER_USER";
      
      public static const const_660:String = "RWUAM_IGNORE_USER";
      
      public static const const_418:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_726:String = "RWUAM_BAN_USER";
      
      public static const const_515:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_474:String = "RWUAM_KICK_USER";
      
      public static const const_618:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_713:String = " RWUAM_RESPECT_PET";
      
      public static const const_407:String = "RWUAM_KICK_BOT";
      
      public static const const_1381:String = "RWUAM_TRAIN_PET";
      
      public static const const_633:String = "RWUAM_PICKUP_PET";
      
      public static const const_529:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_585:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
