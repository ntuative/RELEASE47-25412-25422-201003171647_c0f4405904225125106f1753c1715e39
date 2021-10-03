package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_560:int = 2;
      
      public static const const_973:int = 6;
      
      public static const const_590:int = 1;
      
      public static const const_679:int = 3;
      
      public static const const_798:int = 4;
      
      public static const const_586:int = 5;
       
      
      private var var_2063:String;
      
      private var var_951:int;
      
      private var var_1776:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_951 = param2;
         var_1776 = param3;
         var_2063 = param4;
      }
      
      public function get time() : String
      {
         return var_2063;
      }
      
      public function get senderId() : int
      {
         return var_951;
      }
      
      public function get messageText() : String
      {
         return var_1776;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
