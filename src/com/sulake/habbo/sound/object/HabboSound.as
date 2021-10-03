package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1037:SoundChannel = null;
      
      private var var_851:Boolean;
      
      private var var_1038:Sound = null;
      
      private var var_681:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1038 = param1;
         var_1038.addEventListener(Event.COMPLETE,onComplete);
         var_681 = 1;
         var_851 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_851;
      }
      
      public function stop() : Boolean
      {
         var_1037.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_851 = false;
         var_1037 = var_1038.play(0);
         this.volume = var_681;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_681;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1037.position;
      }
      
      public function get length() : Number
      {
         return var_1038.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_681 = param1;
         if(var_1037 != null)
         {
            var_1037.soundTransform = new SoundTransform(var_681);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_851 = true;
      }
   }
}
