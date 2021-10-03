package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_413:FZip;
      
      private var var_1266:Array;
      
      private var var_2030:uint = 0;
      
      private var var_857:int = 0;
      
      private var var_2371:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1266 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0));
      }
      
      public function get resources() : Array
      {
         return var_1266;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_17.content);
         var_1266.push(var_17.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_857;
         if(var_1266.length == var_2030)
         {
            var_17.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
            var_17.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0));
         }
         else
         {
            var_17.loadBytes(var_413.getFileAt(var_857).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_323 = param1;
         if(var_413)
         {
            var_413.close();
         }
         var_413 = new FZip();
         var_413.addEventListener(Event.COMPLETE,onComplete);
         var_413.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_413.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_413.load(var_323);
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0));
      }
      
      private function onComplete(param1:Event) : void
      {
         var_857 = 0;
         var_2030 = var_413.getFileCount();
         removeEventListeners();
         var_17.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
         var_17.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_17.loadBytes(var_413.getFileAt(var_857).content);
      }
   }
}
