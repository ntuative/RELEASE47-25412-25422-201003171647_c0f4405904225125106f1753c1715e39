package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_500:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1740:int;
      
      private var var_1741:int;
      
      private var var_1742:Boolean;
      
      private var var_977:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_500);
         var_1741 = param1;
         var_1740 = param2;
         _color = param3;
         var_977 = param4;
         var_1742 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1740;
      }
      
      public function get presetNumber() : int
      {
         return var_1741;
      }
      
      public function get brightness() : int
      {
         return var_977;
      }
      
      public function get apply() : Boolean
      {
         return var_1742;
      }
   }
}
