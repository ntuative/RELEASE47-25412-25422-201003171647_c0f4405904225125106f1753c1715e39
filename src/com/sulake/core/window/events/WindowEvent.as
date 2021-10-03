package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_289:String = "WE_CHILD_RESIZED";
      
      public static const const_1382:String = "WE_CLOSE";
      
      public static const const_1316:String = "WE_DESTROY";
      
      public static const const_158:String = "WE_CHANGE";
      
      public static const const_1166:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1528:String = "WE_PARENT_RESIZE";
      
      public static const const_91:String = "WE_UPDATE";
      
      public static const const_1356:String = "WE_MAXIMIZE";
      
      public static const const_354:String = "WE_DESTROYED";
      
      public static const const_853:String = "WE_UNSELECT";
      
      public static const const_1144:String = "WE_MAXIMIZED";
      
      public static const const_1606:String = "WE_UNLOCKED";
      
      public static const const_403:String = "WE_CHILD_REMOVED";
      
      public static const const_170:String = "WE_OK";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1143:String = "WE_ACTIVATE";
      
      public static const const_255:String = "WE_ENABLED";
      
      public static const const_465:String = "WE_CHILD_RELOCATED";
      
      public static const const_1207:String = "WE_CREATE";
      
      public static const const_510:String = "WE_SELECT";
      
      public static const const_159:String = "";
      
      public static const const_1463:String = "WE_LOCKED";
      
      public static const const_1462:String = "WE_PARENT_RELOCATE";
      
      public static const const_1475:String = "WE_CHILD_REMOVE";
      
      public static const const_1492:String = "WE_CHILD_RELOCATE";
      
      public static const const_1484:String = "WE_LOCK";
      
      public static const const_209:String = "WE_FOCUSED";
      
      public static const const_702:String = "WE_UNSELECTED";
      
      public static const const_897:String = "WE_DEACTIVATED";
      
      public static const const_1204:String = "WE_MINIMIZED";
      
      public static const const_1509:String = "WE_ARRANGED";
      
      public static const const_1526:String = "WE_UNLOCK";
      
      public static const const_1549:String = "WE_ATTACH";
      
      public static const const_1336:String = "WE_OPEN";
      
      public static const const_1337:String = "WE_RESTORE";
      
      public static const const_1557:String = "WE_PARENT_RELOCATED";
      
      public static const const_1276:String = "WE_RELOCATE";
      
      public static const const_1456:String = "WE_CHILD_RESIZE";
      
      public static const const_1527:String = "WE_ARRANGE";
      
      public static const const_1322:String = "WE_OPENED";
      
      public static const const_1156:String = "WE_CLOSED";
      
      public static const const_1599:String = "WE_DETACHED";
      
      public static const const_1479:String = "WE_UPDATED";
      
      public static const const_1374:String = "WE_UNFOCUSED";
      
      public static const const_384:String = "WE_RELOCATED";
      
      public static const const_1284:String = "WE_DEACTIVATE";
      
      public static const const_226:String = "WE_DISABLED";
      
      public static const const_538:String = "WE_CANCEL";
      
      public static const const_517:String = "WE_ENABLE";
      
      public static const const_1196:String = "WE_ACTIVATED";
      
      public static const const_1238:String = "WE_FOCUS";
      
      public static const const_1564:String = "WE_DETACH";
      
      public static const const_1139:String = "WE_RESTORED";
      
      public static const const_1134:String = "WE_UNFOCUS";
      
      public static const const_53:String = "WE_SELECTED";
      
      public static const const_1325:String = "WE_PARENT_RESIZED";
      
      public static const const_1197:String = "WE_CREATED";
      
      public static const const_1493:String = "WE_ATTACHED";
      
      public static const const_1320:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1603:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1384:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1603 = param3;
         var_1384 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1384;
      }
      
      public function get related() : IWindow
      {
         return var_1603;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1384 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
