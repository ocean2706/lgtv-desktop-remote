using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
    public class Res : Dictionary<String, int>
    {
        protected static Res _instance;
        public static Res g()
        {
            if (_instance == null)
            {

                _instance = new Res(){
        {"key_code_power_on_off" , 8},
        {"key_code_num_0" , 16},
        {"key_code_num_1" , 17},
        {"key_code_num_2" , 18},
        {"key_code_num_3" , 19},
        {"key_code_num_4" , 20},
        {"key_code_num_5" , 21},
        {"key_code_num_6" , 22},
        {"key_code_num_7" , 23},
        {"key_code_num_8" , 24},
        {"key_code_num_9" , 25},
        {"key_code_mute" , 9},
        {"key_code_menu" , 67},
        {"key_code_dash" , 76},
        {"key_code_flashback" , 26},
        {"key_code_chlist" , 83},
        {"key_code_enter" , 68},
        {"key_code_ch_up" , 0},
        {"key_code_ch_down" , 1},
        {"key_code_vol_up" , 2},
        {"key_code_vol_down" , 3},
        {"key_code_arrow_up" , 64},
        {"key_code_arrow_down" , 65},
        {"key_code_arrow_left" , 7},
        {"key_code_arrow_right" , 6},
        {"key_code_return" , 40},
        {"key_code_exit_cancel" , 91},
        {"key_code_confirm" , 68},
        {"key_code_cursor_ok" , 2},
        {"key_code_quick_menu" , 69},
        {"key_code_red_button" , 114},
        {"key_code_green_button" , 113},
        {"key_code_yellow_button" , 99},
        {"key_code_blue_button" , 97},
        {"key_code_mm_live_tv" , 158},
        {"key_code_mm_stop" , 177},
        {"key_code_mm_play" , 176},
        {"key_code_mm_pause" , 186},
        {"key_code_mm_skip_backward" , 143},
        {"key_code_mm_skip_forward" , 142},
        {"key_code_mm_record" , 189},
        {"key_code_epg" , 169},
        {"key_code_energy_saving" , 149},
        {"key_code_av_mode" , 48},
        {"key_code_input" , 11},
        {"key_code_fav" , 30},
        {"key_code_simplink" , 126},
        {"key_code_ratio" , 121},
        {"key_code_info" , 170},
        {"key_code_netcast" , 89},
        {"key_code_guide" , 169},
        {"key_code_subtitle" , 57},
        {"key_code_teletext" , 32},
        {"key_code_t_opt" , 33},
        {"key_code_ad" , 145},
    };
            }
            return _instance;
        }

    }
}
