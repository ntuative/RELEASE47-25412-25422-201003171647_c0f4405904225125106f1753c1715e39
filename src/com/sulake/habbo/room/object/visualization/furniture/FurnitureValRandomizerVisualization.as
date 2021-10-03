package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1071:int = 31;
      
      private static const const_1067:int = 32;
      
      private static const const_494:int = 30;
      
      private static const const_760:int = 20;
      
      private static const const_493:int = 10;
       
      
      private var var_581:Boolean = false;
      
      private var var_233:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_233 = new Array();
         super();
         super.setAnimation(const_494);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_581 = true;
            var_233 = new Array();
            var_233.push(const_1071);
            var_233.push(const_1067);
            return;
         }
         if(param1 > 0 && param1 <= const_493)
         {
            if(var_581)
            {
               var_581 = false;
               var_233 = new Array();
               if(_direction == 2)
               {
                  var_233.push(const_760 + 5 - param1);
                  var_233.push(const_493 + 5 - param1);
               }
               else
               {
                  var_233.push(const_760 + param1);
                  var_233.push(const_493 + param1);
               }
               var_233.push(const_494);
               return;
            }
            super.setAnimation(const_494);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
