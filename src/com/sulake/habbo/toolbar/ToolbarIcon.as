package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_464:ToolbarIconGroup;
      
      private var var_994:Boolean = false;
      
      private var var_1795:String;
      
      private var var_922:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_992:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_35:String = "-1";
      
      private var var_96:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_665:String;
      
      private var var_1796:int;
      
      private var var_664:Timer;
      
      private var var_1444:Array;
      
      private var var_991:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2304:Array;
      
      private var var_250:ToolbarBarMenuAnimator;
      
      private var var_388:ToolbarIconAnimator;
      
      private var var_561:Array;
      
      private var var_792:Array;
      
      private var var_793:String = "-1";
      
      private var var_2360:Boolean = true;
      
      private var var_993:Array;
      
      private var var_1184:Timer;
      
      private var var_1797:int;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_561 = new Array();
         var_792 = new Array();
         var_2304 = new Array();
         var_991 = new ToolbarIconBouncer(0.8,1);
         super();
         var_464 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_665 = param4;
         _events = param5;
         var_250 = param6;
         var_1184 = new Timer(40,40);
         var_1184.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_96 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_442,HabboWindowStyle.const_41,HabboWindowParam.const_40,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_96.background = true;
         var_96.alphaTreshold = 0;
         var_96.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_41,HabboWindowParam.const_41,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_96.addChild(_window);
         _window.addEventListener(WindowEvent.const_44,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1444[var_993.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1797;
      }
      
      public function get iconId() : String
      {
         return var_665;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_922 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_35 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_96 == null || _window == null)
         {
            return;
         }
         var_96.width = _window.width;
         var_96.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_84 = (0 - 0) / 2;
            _y = var_922 + (0 - 0) / 2;
         }
         else
         {
            var_84 = var_922 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_96.x = var_84;
         var_96.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_96 != null)
         {
            var_96.dispose();
            var_96 = null;
         }
         var_561 = null;
         var_792 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_250 = null;
         var_388 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_561.indexOf(param1) < 0)
         {
            var_561.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_792.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_994)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_250)
               {
                  var_250.repositionWindow(var_665,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_57);
                  _loc4_.iconId = var_665;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_992;
                  }
               }
               break;
            case WindowMouseEvent.const_29:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_793;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_561.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_792[var_561.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_994 = param1;
         if(var_96 != null)
         {
            var_96.visible = var_994;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_96 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_96.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_96.toolTipCaption = "${toolbar.icon.tooltip." + var_1795.toLowerCase() + "}";
         }
         var_96.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_250 != null)
         {
            var_250.animateWindowIn(this,param1,param2,var_665,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_388 != null && _window != null)
         {
            var_388.update(_window);
            if(var_388.hasNextState())
            {
               state = var_388.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1444 = new Array();
         var_993 = new Array();
         var_1795 = param1.@id;
         var_1797 = int(param1.@window_offset_from_icon);
         var_1796 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_992 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_793 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_993.push(_loc5_.id);
               var_1444.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_992 == "-1")
                  {
                     var_992 = _loc5_.id;
                  }
                  if(var_793 == "-1")
                  {
                     var_793 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_35 = var_793;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_250 != null)
         {
            var_250.hideWindow(param1,param2,var_665,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_250 != null)
         {
            var_250.positionWindow(this,param1,param2,var_665,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_250 != null)
         {
            var_250.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_994;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_991 != null && _window != null)
         {
            var_991.update();
            _window.y = var_991.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_664 != null)
         {
            var_664.stop();
            var_664 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_994)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_388 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_84,_y,_bitmapData);
            if(false)
            {
               var_664 = new Timer(_loc1_.timer);
               var_664.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_664.start();
            }
            if(_loc1_.bounce)
            {
               var_991.reset(-7);
               var_1184.reset();
               var_1184.start();
            }
         }
         else
         {
            var_388 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1796 + var_464.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_35);
      }
      
      public function get window() : IWindow
      {
         return var_96;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_792[var_561.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_464;
      }
   }
}
