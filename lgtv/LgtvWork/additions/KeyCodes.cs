﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv.additions
{
    public enum ResMapKeyCodes
    {
        KEY_ARROW_UP = 2131099782,
        KEY_ARROW_LEFT = 2131099784,
        KEY_ARROW_RIGHT = 2131099785,
    }
    public enum LGTVRemoteCodeKeys
    {
        preferences_category_version_protocol_value = 2131099648,
        preferences_category_version_sw_value = 2131099649,
        app_name_main = 2131099650,
        wifi_turning_on = 2131099651,
        msgbox_title_cannot_found_paired_tv = 2131099652,
        msgbox_info_cannot_found_paired_tv = 2131099653,
        msgbox_btn_yes_cannot_found_paired_tv = 2131099654,
        msgbox_btn_no_cannot_found_paired_tv = 2131099655,
        app_name_device_search = 2131099656,
        msgbox_wait_search_device = 2131099657,
        device_search_set_default_tv = 2131099658,
        device_search_connect_tv = 2131099659,
        device_search_rescan_tv = 2131099660,
        demo_tv_name = 2131099661,
        demo_tv_nickname = 2131099662,
        app_name_device_pairing_main = 2131099663,
        device_pairing_guide = 2131099664,
        device_pairing_input_pincode = 2131099665,
        device_pairing_menu_back = 2131099666,
        device_search_cannot_fount_tv = 2131099667,
        msgbox_wait_for_connection = 2131099668,
        title_msgbox_wrong_passkey = 2131099669,
        text_msgbox_wrong_passkey = 2131099670,
        btn_msgbox_close = 2131099671,
        title_msgbox_passkey_changed = 2131099672,
        text_msgbox_passkey_changed = 2131099673,
        btn_msgbox_passkey_changed = 2131099674,
        tvctrl_main_tab_1 = 2131099675,
        tvctrl_sub_tab_1 = 2131099676,
        tvctrl_ch_vol_shake_phone_text_1 = 2131099677,
        tvctrl_ch_vol_shake_phone_text_2 = 2131099678,
        tvctrl_sub_tab_2 = 2131099679,
        btn_txt_chlist = 2131099680,
        btn_txt_enter = 2131099681,
        tvctrl_sub_tab_3 = 2131099682,
        btn_txt_add_cur_ch = 2131099683,
        btn_txt_import_tv_fav = 2131099684,
        app_name_add_chrrent_ch = 2131099685,
        text_current_ch_info = 2131099686,
        text_channel_name = 2131099687,
        btn_add_channel = 2131099688,
        text_select_ch_and_add = 2131099689,
        text_ch_info_is_duplicated = 2131099690,
        text_ch_info_is_added = 2131099691,
        msgbox_wait_download_fav_ch = 2131099692,
        title_fav_group = 2131099693,
        app_name_edit_my_channel = 2131099694,
        msg_btn_cancel = 2131099695,
        tvctrl_main_tab_2 = 2131099696,
        advice_touchpad_usages = 2131099697,
        advice_touchpad_usages2 = 2131099698,
        tvctrl_main_tab_3 = 2131099699,
        btn_txt_livetv = 2131099700,
        btn_txt_navi_a = 2131099701,
        btn_txt_navi_b = 2131099702,
        btn_txt_navi_c = 2131099703,
        btn_txt_navi_d = 2131099704,
        title_exit_app = 2131099705,
        text_exit_app = 2131099706,
        button_ok_exit_app = 2131099707,
        button_cancel_exit_app = 2131099708,
        title_turnoff_tv = 2131099709,
        text_turnoff_tv = 2131099710,
        button_ok_turnoff_tv = 2131099711,
        button_cancel_turnoff_tv = 2131099712,
        app_name_tvctrl_keyboard = 2131099713,
        menu_rename_ch = 2131099714,
        menu_delete_ch = 2131099715,
        menu_setting = 2131099716,
        menu_tv_off = 2131099717,
        cxtmenu_mych_change_name = 2131099718,
        cxtmenu_mych_delete = 2131099719,
        msgbox_title_delete_a_mych = 2131099720,
        msg_btn_yes = 2131099721,
        msg_btn_no = 2131099722,
        msgbox_title_info_demo_tv_mode = 2131099723,
        msgbox_txt_demo_tv_mode_change = 2131099724,
        msgbox_btn_ok = 2131099725,
        app_name_setting = 2131099726,
        preferences_category_connect = 2131099727,
        title_config_connected_tv = 2131099728,
        title_config_edit_cur_tv_nickname = 2131099729,
        title_config_demo_tv = 2131099730,
        summary_config_demo_tv = 2131099731,
        preferences_category_effects = 2131099732,
        title_config_vibration_feedback = 2131099733,
        summary_config_vibration_feedback = 2131099734,
        title_config_sound_effects = 2131099735,
        summary_config_sound_effects = 2131099736,
        preferences_category_function = 2131099737,
        title_config_auto_volume_down = 2131099738,
        summary_config_auto_volume_down = 2131099739,
        preferences_category_remote_id = 2131099740,
        title_remote_id = 2131099741,
        preferences_category_sensitivity = 2131099742,
        title_touchpad_tap_sensitivity = 2131099743,
        summary_touchpad_tap_sensitivity = 2131099744,
        preferences_category_version_info = 2131099745,
        preferences_category_version_protocol_title = 2131099746,
        preferences_category_version_sw_title = 2131099747,
        preferences_category_manual = 2131099748,
        preferences_category_about = 2131099749,
        preferences_category_supported_model = 2131099750,
        title_about_app = 2131099751,
        text_about_app_1 = 2131099752,
        text_about_app_2 = 2131099753,
        text_about_app_3 = 2131099754,
        title_supported_models = 2131099755,
        text_supported_models = 2131099756,
        text_intro_app = 2131099757,
        bt_text_intro = 2131099758,
        title_Touchpad_tap_sensitivity = 2131099759,
        text_Touchpad_tap_sensitivity = 2131099760,
        key_code_power_on_off = 2131099761,
        key_code_num_0 = 2131099762,
        key_code_num_1 = 2131099763,
        key_code_num_2 = 2131099764,
        key_code_num_3 = 2131099765,
        key_code_num_4 = 2131099766,
        key_code_num_5 = 2131099767,
        key_code_num_6 = 2131099768,
        key_code_num_7 = 2131099769,
        key_code_num_8 = 2131099770,
        key_code_num_9 = 2131099771,
        key_code_mute = 2131099772,
        key_code_menu = 2131099773,
        key_code_dash = 2131099774,
        key_code_flashback = 2131099775,
        key_code_chlist = 2131099776,
        key_code_enter = 2131099777,
        key_code_ch_up = 2131099778,
        key_code_ch_down = 2131099779,
        key_code_vol_up = 2131099780,
        key_code_vol_down = 2131099781,
        key_code_arrow_up = 2131099782,
        key_code_arrow_down = 2131099783,
        key_code_arrow_left = 2131099784,
        key_code_arrow_right = 2131099785,
        key_code_return = 2131099786,
        key_code_exit_cancel = 2131099787,
        key_code_confirm = 2131099788,
        key_code_cursor_ok = 2131099789,
        key_code_quick_menu = 2131099790,
        key_code_red_button = 2131099791,
        key_code_green_button = 2131099792,
        key_code_yellow_button = 2131099793,
        key_code_blue_button = 2131099794,
        key_code_mm_live_tv = 2131099795,
        key_code_mm_stop = 2131099796,
        key_code_mm_play = 2131099797,
        key_code_mm_pause = 2131099798,
        key_code_mm_skip_backward = 2131099799,
        key_code_mm_skip_forward = 2131099800,
        key_code_mm_record = 2131099801,
        key_code_epg = 2131099802,
        key_code_energy_saving = 2131099803,
        key_code_av_mode = 2131099804,
        key_code_input = 2131099805,
        key_code_fav = 2131099806,
        key_code_simplink = 2131099807,
        key_code_ratio = 2131099808,
        key_code_info = 2131099809,
        key_code_netcast = 2131099810,
        key_code_guide = 2131099811,
        key_code_subtitle = 2131099812,
        key_code_teletext = 2131099813,
        key_code_t_opt = 2131099814,
        key_code_ad = 2131099815,
    }


}
