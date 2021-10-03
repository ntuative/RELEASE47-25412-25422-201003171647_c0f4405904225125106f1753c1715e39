package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_357:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_450:int = 0;
      
      public static const const_821:int = 2;
      
      public static const const_900:int = 1;
      
      public static const const_519:Boolean = false;
      
      public static const const_715:String = "";
      
      public static const const_471:int = 0;
      
      public static const const_394:int = 0;
      
      public static const const_372:int = 0;
       
      
      private var var_2084:int = 0;
      
      private var var_1619:String = "";
      
      private var var_1437:int = 0;
      
      private var var_2085:int = 0;
      
      private var var_2083:Number = 0;
      
      private var var_1748:int = 255;
      
      private var var_2086:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2084;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1437 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2083;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2085 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2084 = param1;
      }
      
      public function get tag() : String
      {
         return var_1619;
      }
      
      public function get alpha() : int
      {
         return var_1748;
      }
      
      public function get ink() : int
      {
         return var_1437;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2083 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2085;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2086 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2086;
      }
      
      public function set tag(param1:String) : void
      {
         var_1619 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1748 = param1;
      }
   }
}
