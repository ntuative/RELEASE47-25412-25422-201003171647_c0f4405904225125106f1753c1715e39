package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_118:DisplayObject;
      
      private var var_2300:uint;
      
      private var var_779:IWindowToolTipAgentService;
      
      private var var_780:IWindowMouseScalingService;
      
      private var var_220:IWindowContext;
      
      private var var_778:IWindowFocusManagerService;
      
      private var var_777:IWindowMouseListenerService;
      
      private var var_781:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2300 = 0;
         var_118 = param2;
         var_220 = param1;
         var_781 = new WindowMouseDragger(param2);
         var_780 = new WindowMouseScaler(param2);
         var_777 = new WindowMouseListener(param2);
         var_778 = new FocusManager(param2);
         var_779 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_780;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_778;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_779;
      }
      
      public function dispose() : void
      {
         if(var_781 != null)
         {
            var_781.dispose();
            var_781 = null;
         }
         if(var_780 != null)
         {
            var_780.dispose();
            var_780 = null;
         }
         if(var_777 != null)
         {
            var_777.dispose();
            var_777 = null;
         }
         if(var_778 != null)
         {
            var_778.dispose();
            var_778 = null;
         }
         if(var_779 != null)
         {
            var_779.dispose();
            var_779 = null;
         }
         var_220 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_777;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_781;
      }
   }
}
