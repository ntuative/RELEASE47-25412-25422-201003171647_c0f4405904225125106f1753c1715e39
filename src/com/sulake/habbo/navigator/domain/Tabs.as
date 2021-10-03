package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_657:int = 6;
      
      public static const const_214:int = 5;
      
      public static const const_661:int = 2;
      
      public static const const_337:int = 9;
      
      public static const const_303:int = 4;
      
      public static const const_250:int = 2;
      
      public static const const_642:int = 4;
      
      public static const const_232:int = 8;
      
      public static const const_628:int = 7;
      
      public static const const_258:int = 3;
      
      public static const const_323:int = 1;
      
      public static const const_199:int = 5;
      
      public static const const_386:int = 12;
      
      public static const const_283:int = 1;
      
      public static const const_534:int = 11;
      
      public static const const_546:int = 3;
      
      public static const const_1454:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_394:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_394 = new Array();
         var_394.push(new Tab(_navigator,const_323,const_386,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_356));
         var_394.push(new Tab(_navigator,const_250,const_283,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_356));
         var_394.push(new Tab(_navigator,const_303,const_534,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_879));
         var_394.push(new Tab(_navigator,const_258,const_214,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_356));
         var_394.push(new Tab(_navigator,const_199,const_232,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_550));
         setSelectedTab(const_323);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_394)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_394)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_394)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_303;
      }
      
      public function get tabs() : Array
      {
         return var_394;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
