package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_114;
         param1["bound_to_parent_rect"] = const_89;
         param1["child_window"] = const_944;
         param1["embedded_controller"] = const_293;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_50;
         param1["internal_event_handling"] = const_521;
         param1["mouse_dragging_target"] = const_208;
         param1["mouse_dragging_trigger"] = const_317;
         param1["mouse_scaling_target"] = const_272;
         param1["mouse_scaling_trigger"] = const_477;
         param1["horizontal_mouse_scaling_trigger"] = const_212;
         param1["vertical_mouse_scaling_trigger"] = const_196;
         param1["observe_parent_input_events"] = const_958;
         param1["optimize_region_to_layout_size"] = const_421;
         param1["parent_window"] = const_885;
         param1["relative_horizontal_scale_center"] = const_169;
         param1["relative_horizontal_scale_fixed"] = const_121;
         param1["relative_horizontal_scale_move"] = const_306;
         param1["relative_horizontal_scale_strech"] = const_238;
         param1["relative_scale_center"] = const_1002;
         param1["relative_scale_fixed"] = const_574;
         param1["relative_scale_move"] = const_827;
         param1["relative_scale_strech"] = const_799;
         param1["relative_vertical_scale_center"] = const_179;
         param1["relative_vertical_scale_fixed"] = const_113;
         param1["relative_vertical_scale_move"] = const_292;
         param1["relative_vertical_scale_strech"] = const_253;
         param1["on_resize_align_left"] = const_671;
         param1["on_resize_align_right"] = const_422;
         param1["on_resize_align_center"] = const_381;
         param1["on_resize_align_top"] = const_616;
         param1["on_resize_align_bottom"] = const_383;
         param1["on_resize_align_middle"] = const_425;
         param1["on_accommodate_align_left"] = const_813;
         param1["on_accommodate_align_right"] = const_409;
         param1["on_accommodate_align_center"] = const_630;
         param1["on_accommodate_align_top"] = const_909;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_636;
         param1["route_input_events_to_parent"] = const_472;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_817;
         param1["scalable_with_mouse"] = const_914;
         param1["reflect_horizontal_resize_to_parent"] = const_444;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_262;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
