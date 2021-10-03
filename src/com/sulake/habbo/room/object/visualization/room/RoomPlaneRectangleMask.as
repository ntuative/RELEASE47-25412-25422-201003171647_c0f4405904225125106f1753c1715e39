package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1686:Number = 0;
      
      private var var_1687:Number = 0;
      
      private var var_1689:Number = 0;
      
      private var var_1688:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1687 = param1;
         var_1689 = param2;
         var_1686 = param3;
         var_1688 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1687;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1686;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1689;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1688;
      }
   }
}
