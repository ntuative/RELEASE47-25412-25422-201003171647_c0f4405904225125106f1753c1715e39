package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_830:String = "inventory_badges";
      
      public static const const_1157:String = "inventory_clothes";
      
      public static const const_1296:String = "inventory_furniture";
      
      public static const const_648:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_829:String = "inventory_effects";
       
      
      private var var_1825:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_648);
         var_1825 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1825;
      }
   }
}
