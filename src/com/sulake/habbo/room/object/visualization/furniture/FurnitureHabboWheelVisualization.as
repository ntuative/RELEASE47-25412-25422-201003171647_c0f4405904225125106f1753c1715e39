package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1071:int = 31;
      
      private static const const_1067:int = 32;
      
      private static const const_760:int = 10;
      
      private static const const_493:int = 20;
       
      
      private var var_581:Boolean = false;
      
      private var var_233:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_233 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_581 = true;
            var_233 = new Array();
            var_233.push(const_1071);
            var_233.push(const_1067);
            return;
         }
         if(param1 > 0 && param1 <= const_760)
         {
            if(var_581)
            {
               var_581 = false;
               var_233 = new Array();
               var_233.push(const_760 + param1);
               var_233.push(const_493 + param1);
               var_233.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
