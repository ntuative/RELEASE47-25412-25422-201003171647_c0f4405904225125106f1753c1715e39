package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1084:int = 1;
      
      private static const const_1067:int = 3;
      
      private static const const_1086:int = 2;
      
      private static const const_1085:int = 15;
       
      
      private var var_844:int;
      
      private var var_233:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_233 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1086)
         {
            var_233 = new Array();
            var_233.push(const_1084);
            var_844 = const_1085;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_844 > 0)
         {
            --var_844;
         }
         if(var_844 == 0)
         {
            if(false)
            {
               super.setAnimation(var_233.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
