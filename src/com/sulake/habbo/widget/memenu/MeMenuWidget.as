package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_712:String = "me_menu_settings_view";
      
      private static const const_783:int = 10;
      
      public static const const_709:String = "me_menu_effects_view";
      
      public static const const_109:String = "me_menu_top_view";
      
      public static const const_1200:String = "me_menu_rooms_view";
      
      public static const const_892:String = "me_menu_dance_moves_view";
      
      public static const const_244:String = "me_menu_my_clothes_view";
       
      
      private var var_2219:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1565:int = 0;
      
      private var var_2220:int = 0;
      
      private var var_2221:Boolean = false;
      
      private var var_274:Boolean = false;
      
      private var var_2218:int = 0;
      
      private var var_1969:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_611:Boolean = false;
      
      private var var_93:ClubPromoView;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1340:int = 0;
      
      private var var_2222:Boolean = false;
      
      private var var_1078:Point;
      
      private var var_31:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1078 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_2222 = param5.getKey("client.news.embed.enabled","com.sulake.habbo.communication.messages.incoming.help") == "true";
         }
         changeView(const_109);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_578,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_619,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_665,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_499,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_285,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_584,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_467,onShowAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_948,onHideAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_227,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_205,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_593,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_221,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_324,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_99,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_456,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_174,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_611;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_274)
         {
            return;
         }
         if(var_31.window.name == const_712)
         {
            (var_31 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1340 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1565 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1565.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_274 && var_31.window.name == const_244))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_625);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_578,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_619,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_665,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_499,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_285,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_227,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_205,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_593,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_584,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_467,onShowAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_948,onHideAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_221,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_324,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_456,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_99,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_174,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_31 != null)
         {
            var_31.dispose();
            var_31 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_2219;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1969 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onHideAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_93 != null)
         {
            var_93.dispose();
            var_93 = null;
         }
         updateSize();
      }
      
      public function get isDancing() : Boolean
      {
         return var_2221;
      }
      
      public function get creditBalance() : int
      {
         return var_1565;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_456:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_274 + " view: " + var_31.window.name);
               if(var_274 != true || var_31.window.name != const_109)
               {
                  return;
               }
               (var_31 as MeMenuMainView).setIconAssets("clothes_icon",const_109,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_99:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1969 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_2220;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_611 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_611 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1340 > 0;
         var_1340 = param1.daysLeft;
         var_2220 = param1.periodsLeft;
         var_2218 = param1.pastPeriods;
         var_2219 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_31 != null)
            {
               changeView(var_31.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_2221 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_31 != null && var_31.window.name != const_244)
         {
            hide();
         }
      }
      
      private function onShowAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(var_31 != null && var_31.window.name == const_244)
         {
            if(param1.promoMode == RoomWidgetAvatarEditorUpdateEvent.const_964)
            {
               var_93 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_1164);
            }
            else
            {
               var_93 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_431);
            }
            _loc2_ = _mainContainer.getChildByName(var_31.window.name);
            if(_loc2_ != null)
            {
               var_93.window.x = _loc2_.width + const_783;
               _mainContainer.addChild(var_93.window);
               _mainContainer.width = var_93.window.x + var_93.window.width;
            }
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_611 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_611 = true;
            }
         }
         if(var_31 != null && var_31.window.name == const_709)
         {
            (var_31 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_2218;
      }
      
      public function get habboClubDays() : int
      {
         return var_1340;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1348,HabboWindowStyle.const_916,HabboWindowParam.const_41,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_274 = !var_274;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_274 = false;
               break;
            default:
               return;
         }
         if(var_274)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_612);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_31 != null)
         {
            _mainContainer.removeChild(var_31.window);
            var_31.dispose();
            var_31 = null;
         }
         var_274 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_31 != null && var_31.window.name == const_244)
         {
            if(var_93 != null)
            {
               var_93.dispose();
               var_93 = null;
            }
            changeView(const_109);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_2222;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_93 != null)
         {
            var_93.dispose();
            var_93 = null;
         }
         switch(param1)
         {
            case const_109:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_709:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_892:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_244:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1200:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_712:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_31 != null)
            {
               _mainContainer.removeChild(var_31.window);
               var_31.dispose();
               var_31 = null;
            }
            var_31 = _loc2_;
            var_31.init(this,param1);
         }
         updateSize();
      }
      
      public function updateSize() : void
      {
         if(var_31 != null)
         {
            var_1078.x = var_31.window.width + 10;
            var_1078.y = var_31.window.height;
            var_31.window.x = 5;
            var_31.window.y = 0;
            _mainContainer.width = var_1078.x;
            _mainContainer.height = var_1078.y;
            if(var_93 != null)
            {
               _mainContainer.width = var_93.window.x + var_93.window.width + const_783;
            }
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_109);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_567);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_274 = true;
      }
   }
}
