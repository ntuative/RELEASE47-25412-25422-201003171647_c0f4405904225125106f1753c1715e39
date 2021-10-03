package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1358:String = "WN_CREATED";
      
      public static const const_883:String = "WN_DISABLE";
      
      public static const const_926:String = "WN_DEACTIVATED";
      
      public static const const_808:String = "WN_OPENED";
      
      public static const const_1017:String = "WN_CLOSED";
      
      public static const const_957:String = "WN_DESTROY";
      
      public static const const_1573:String = "WN_ARRANGED";
      
      public static const const_441:String = "WN_PARENT_RESIZED";
      
      public static const const_1014:String = "WN_ENABLE";
      
      public static const const_841:String = "WN_RELOCATE";
      
      public static const const_933:String = "WN_FOCUS";
      
      public static const const_976:String = "WN_PARENT_RELOCATED";
      
      public static const const_482:String = "WN_PARAM_UPDATED";
      
      public static const const_662:String = "WN_PARENT_ACTIVATED";
      
      public static const const_219:String = "WN_RESIZED";
      
      public static const const_902:String = "WN_CLOSE";
      
      public static const const_978:String = "WN_PARENT_REMOVED";
      
      public static const const_267:String = "WN_CHILD_RELOCATED";
      
      public static const const_700:String = "WN_ENABLED";
      
      public static const const_233:String = "WN_CHILD_RESIZED";
      
      public static const const_913:String = "WN_MINIMIZED";
      
      public static const const_639:String = "WN_DISABLED";
      
      public static const const_202:String = "WN_CHILD_ACTIVATED";
      
      public static const const_364:String = "WN_STATE_UPDATED";
      
      public static const const_645:String = "WN_UNSELECTED";
      
      public static const const_375:String = "WN_STYLE_UPDATED";
      
      public static const const_1565:String = "WN_UPDATE";
      
      public static const const_365:String = "WN_PARENT_ADDED";
      
      public static const const_682:String = "WN_RESIZE";
      
      public static const const_659:String = "WN_CHILD_REMOVED";
      
      public static const const_1436:String = "";
      
      public static const const_920:String = "WN_RESTORED";
      
      public static const const_284:String = "WN_SELECTED";
      
      public static const const_856:String = "WN_MINIMIZE";
      
      public static const const_1013:String = "WN_FOCUSED";
      
      public static const const_1360:String = "WN_LOCK";
      
      public static const const_302:String = "WN_CHILD_ADDED";
      
      public static const const_858:String = "WN_UNFOCUSED";
      
      public static const const_435:String = "WN_RELOCATED";
      
      public static const const_874:String = "WN_DEACTIVATE";
      
      public static const const_1248:String = "WN_CRETAE";
      
      public static const const_918:String = "WN_RESTORE";
      
      public static const const_310:String = "WN_ACTVATED";
      
      public static const const_1218:String = "WN_LOCKED";
      
      public static const const_427:String = "WN_SELECT";
      
      public static const const_862:String = "WN_MAXIMIZE";
      
      public static const const_845:String = "WN_OPEN";
      
      public static const const_524:String = "WN_UNSELECT";
      
      public static const const_1597:String = "WN_ARRANGE";
      
      public static const const_1193:String = "WN_UNLOCKED";
      
      public static const const_1541:String = "WN_UPDATED";
      
      public static const const_988:String = "WN_ACTIVATE";
      
      public static const const_1137:String = "WN_UNLOCK";
      
      public static const const_828:String = "WN_MAXIMIZED";
      
      public static const const_987:String = "WN_DESTROYED";
      
      public static const const_792:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1603,cancelable);
      }
   }
}
