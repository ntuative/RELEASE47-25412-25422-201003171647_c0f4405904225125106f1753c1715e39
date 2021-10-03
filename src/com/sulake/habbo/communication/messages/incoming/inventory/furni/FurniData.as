package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1378:String;
      
      private var var_1087:String;
      
      private var var_1699:Boolean;
      
      private var var_1454:int;
      
      private var var_1697:int;
      
      private var var_1696:Boolean;
      
      private var var_1694:String = "";
      
      private var var_1700:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1359:int;
      
      private var var_1695:Boolean;
      
      private var var_1772:int = -1;
      
      private var var_1698:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1697 = param1;
         var_1087 = param2;
         _objId = param3;
         var_1359 = param4;
         _category = param5;
         var_1378 = param6;
         var_1699 = param7;
         var_1700 = param8;
         var_1695 = param9;
         var_1696 = param10;
         var_1698 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1694;
      }
      
      public function get extra() : int
      {
         return var_1454;
      }
      
      public function get classId() : int
      {
         return var_1359;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1696;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1699;
      }
      
      public function get stripId() : int
      {
         return var_1697;
      }
      
      public function get stuffData() : String
      {
         return var_1378;
      }
      
      public function get songId() : int
      {
         return var_1772;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1694 = param1;
         var_1454 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1087;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1698;
      }
      
      public function get method_1() : Boolean
      {
         return var_1695;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1700;
      }
   }
}
