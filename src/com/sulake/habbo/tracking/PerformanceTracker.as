package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1507:GarbageMonitor = null;
      
      private var var_1250:int = 0;
      
      private var var_1135:Boolean = false;
      
      private var var_1663:String = "";
      
      private var var_1508:String = "";
      
      private var var_346:Number = 0;
      
      private var var_1247:int = 10;
      
      private var var_2314:Array;
      
      private var var_627:int = 0;
      
      private var var_1249:int = 60;
      
      private var var_1036:int = 0;
      
      private var var_1035:int = 0;
      
      private var var_1665:String = "";
      
      private var var_2014:Number = 0;
      
      private var var_1248:int = 1000;
      
      private var var_2015:Boolean = true;
      
      private var var_2013:Number = 0.15;
      
      private var var_152:IHabboConfigurationManager = null;
      
      private var var_1661:String = "";
      
      private var var_1251:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2314 = [];
         super();
         var_1508 = Capabilities.version;
         var_1663 = Capabilities.os;
         var_1135 = Capabilities.isDebugger;
         var_1661 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1507 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1250 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1507.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1507.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_346;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1249 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1508;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1035;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1248)
         {
            ++var_1036;
            _loc3_ = true;
         }
         else
         {
            ++var_627;
            if(var_627 <= 1)
            {
               var_346 = param1;
            }
            else
            {
               _loc4_ = Number(var_627);
               var_346 = var_346 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1250 > var_1249 * 1000 && var_1251 < var_1247)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_346);
            _loc5_ = true;
            if(var_2015 && var_1251 > 0)
            {
               _loc6_ = differenceInPercents(var_2014,var_346);
               if(_loc6_ < var_2013)
               {
                  _loc5_ = false;
               }
            }
            var_1250 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2014 = var_346;
               if(sendReport())
               {
                  ++var_1251;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1247 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1248 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1661,var_1508,var_1663,var_1665,var_1135,_loc4_,_loc3_,var_1035,var_346,var_1036);
            _connection.send(_loc1_);
            var_1035 = 0;
            var_346 = 0;
            var_627 = 0;
            var_1036 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_152 = param1;
         var_1249 = int(var_152.getKey("performancetest.interval","60"));
         var_1248 = int(var_152.getKey("performancetest.slowupdatelimit","1000"));
         var_1247 = int(var_152.getKey("performancetest.reportlimit","10"));
         var_2013 = Number(var_152.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2015 = Boolean(int(var_152.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
