package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_536:int = -1;
      
      public static const const_805:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2070:int = -1;
      
      private var var_84:int = 0;
      
      private var var_1284:int = 1;
      
      private var var_867:int = 1;
      
      private var var_2069:Boolean = false;
      
      private var var_2068:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_2069 = param5;
         if(param4 < 0)
         {
            param4 = const_536;
         }
         var_867 = param4;
         var_1284 = param4;
         if(param6 >= 0)
         {
            var_2070 = param6;
            var_2068 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_867 > 0 && param1 > var_867)
         {
            param1 = var_867;
         }
         var_1284 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_867;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2068;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_867 < 0)
         {
            return const_536;
         }
         return var_1284;
      }
      
      public function get activeSequence() : int
      {
         return var_2070;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2069;
      }
      
      public function get x() : int
      {
         return var_84;
      }
   }
}
