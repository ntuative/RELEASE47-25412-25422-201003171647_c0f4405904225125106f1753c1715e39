package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_884:String = "select_outfit";
       
      
      private var var_2217:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_884);
         var_2217 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2217;
      }
   }
}
