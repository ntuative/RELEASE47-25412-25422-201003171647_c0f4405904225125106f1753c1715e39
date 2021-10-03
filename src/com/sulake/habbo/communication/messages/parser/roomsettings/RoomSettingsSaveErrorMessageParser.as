package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1501:int = 9;
      
      public static const const_1590:int = 4;
      
      public static const const_1489:int = 1;
      
      public static const const_1147:int = 10;
      
      public static const const_1582:int = 2;
      
      public static const const_1318:int = 7;
      
      public static const const_1391:int = 11;
      
      public static const const_1508:int = 3;
      
      public static const const_1277:int = 8;
      
      public static const const_1260:int = 5;
      
      public static const const_1480:int = 6;
      
      public static const const_1195:int = 12;
       
      
      private var var_2151:String;
      
      private var _roomId:int;
      
      private var var_1197:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2151;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1197 = param1.readInteger();
         var_2151 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1197;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
