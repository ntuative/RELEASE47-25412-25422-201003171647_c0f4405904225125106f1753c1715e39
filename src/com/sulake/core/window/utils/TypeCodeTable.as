package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_617;
         param1["bitmap"] = const_690;
         param1["border"] = const_562;
         param1["border_notify"] = const_1357;
         param1["button"] = const_479;
         param1["button_thick"] = const_611;
         param1["button_icon"] = const_1189;
         param1["button_group_left"] = const_577;
         param1["button_group_center"] = const_695;
         param1["button_group_right"] = const_614;
         param1["canvas"] = const_596;
         param1["checkbox"] = const_607;
         param1["closebutton"] = const_998;
         param1["container"] = const_286;
         param1["container_button"] = const_588;
         param1["display_object_wrapper"] = const_730;
         param1["dropmenu"] = const_458;
         param1["dropmenu_item"] = const_390;
         param1["frame"] = const_314;
         param1["frame_notify"] = const_1175;
         param1["header"] = const_718;
         param1["icon"] = const_947;
         param1["itemgrid"] = const_1006;
         param1["itemgrid_horizontal"] = const_447;
         param1["itemgrid_vertical"] = const_543;
         param1["itemlist"] = const_890;
         param1["itemlist_horizontal"] = const_322;
         param1["itemlist_vertical"] = const_295;
         param1["maximizebox"] = const_1384;
         param1["menu"] = const_1155;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_955;
         param1["minimizebox"] = const_1165;
         param1["notify"] = const_1279;
         param1["null"] = const_506;
         param1["password"] = const_623;
         param1["radiobutton"] = const_697;
         param1["region"] = const_442;
         param1["restorebox"] = const_1244;
         param1["scaler"] = const_977;
         param1["scaler_horizontal"] = const_1190;
         param1["scaler_vertical"] = const_1372;
         param1["scrollbar_horizontal"] = const_417;
         param1["scrollbar_vertical"] = const_528;
         param1["scrollbar_slider_button_up"] = const_881;
         param1["scrollbar_slider_button_down"] = const_963;
         param1["scrollbar_slider_button_left"] = const_803;
         param1["scrollbar_slider_button_right"] = const_849;
         param1["scrollbar_slider_bar_horizontal"] = const_905;
         param1["scrollbar_slider_bar_vertical"] = const_835;
         param1["scrollbar_slider_track_horizontal"] = const_836;
         param1["scrollbar_slider_track_vertical"] = const_857;
         param1["scrollable_itemlist"] = const_1263;
         param1["scrollable_itemlist_vertical"] = const_411;
         param1["scrollable_itemlist_horizontal"] = const_983;
         param1["selector"] = const_647;
         param1["selector_list"] = const_622;
         param1["submenu"] = const_955;
         param1["tab_button"] = const_539;
         param1["tab_container_button"] = const_956;
         param1["tab_context"] = const_468;
         param1["tab_content"] = const_843;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_693;
         param1["input"] = const_582;
         param1["toolbar"] = const_1141;
         param1["tooltip"] = const_330;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
