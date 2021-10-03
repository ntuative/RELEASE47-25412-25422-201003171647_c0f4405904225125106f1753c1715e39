package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1697:int;
      
      private var var_1700:Boolean;
      
      private var var_1772:int;
      
      private var var_1378:String;
      
      private var var_1930:Boolean = false;
      
      private var var_1698:int;
      
      private var var_439:int;
      
      private var var_1087:String;
      
      private var var_1694:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1359:int;
      
      private var var_1695:Boolean;
      
      private var var_1931:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1697 = param1;
         var_1087 = param2;
         _objId = param3;
         var_1359 = param4;
         var_1378 = param5;
         var_1700 = param6;
         var_1695 = param7;
         var_1698 = param8;
         var_1694 = param9;
         var_1772 = param10;
         var_439 = -1;
      }
      
      public function get songId() : int
      {
         return var_1772;
      }
      
      public function get iconCallbackId() : int
      {
         return var_439;
      }
      
      public function get expiryTime() : int
      {
         return var_1698;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1931 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1930 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_439 = param1;
      }
      
      public function get method_1() : Boolean
      {
         return var_1695;
      }
      
      public function get slotId() : String
      {
         return var_1694;
      }
      
      public function get classId() : int
      {
         return var_1359;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1700;
      }
      
      public function get stuffData() : String
      {
         return var_1378;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1697;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1930;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1931;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1087;
      }
   }
}
