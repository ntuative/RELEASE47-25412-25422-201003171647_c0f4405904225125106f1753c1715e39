package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1887:Number = 1;
      
      private var var_203:Number = 1;
      
      private var var_1721:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1721 = param1;
         var_203 = param2;
         var_1887 = param3;
      }
      
      public function get scale() : Number
      {
         return var_203;
      }
      
      public function get heightScale() : Number
      {
         return var_1887;
      }
   }
}
