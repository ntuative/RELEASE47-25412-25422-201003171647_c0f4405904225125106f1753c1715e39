package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_680:String = "RWOCM_CLUB_MAIN";
      
      public static const const_613:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1775:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_613);
         var_1775 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1775;
      }
   }
}
