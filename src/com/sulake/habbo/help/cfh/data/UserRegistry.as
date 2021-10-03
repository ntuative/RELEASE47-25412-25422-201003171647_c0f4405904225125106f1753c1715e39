package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1099:int = 80;
       
      
      private var var_489:Map;
      
      private var var_712:String = "";
      
      private var var_1291:Array;
      
      public function UserRegistry()
      {
         var_489 = new Map();
         var_1291 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_489.getValue(var_1291.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_712;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_489.getValue(param1) != null)
         {
            var_489.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_712);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_712 == "")
         {
            var_1291.push(param1);
         }
         var_489.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_489;
      }
      
      public function unregisterRoom() : void
      {
         var_712 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_489.length > const_1099)
         {
            _loc1_ = var_489.getKey(0);
            var_489.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_712 = param1;
         if(var_712 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
