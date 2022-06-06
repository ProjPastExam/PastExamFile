// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_keySprite(keyIndex){
	switch (keyIndex) {
	case vk_up:		return sp_keyVk_up;		break;
	case vk_down:	return sp_keyVk_down;	break;
	case vk_left:	return sp_keyVk_left;	break;
	case vk_right:	return sp_keyVk_right;	break;
	case vk_escape:	return sp_keyVk_esc;	break;
	case vk_space:	return sp_keyVk_space;	break;
	case vk_tab:	return sp_keyVk_tap;	break;
	//case vk_lshift:	return sp_keyVk_shiftL;	break;
	case vk_shift:	return sp_keyVk_shift;	break;
	case vk_control:	return sp_keyVk_ctrl;	break;
	//case vk_lalt:	return sp_keyVk_altL;	break;
	case vk_alt:	return sp_keyVk_alt;	break;
	case ord("0"):	return sp_key_0;		break;
	case ord("1"):	return sp_key_1;		break;
	case ord("2"):	return sp_key_2;		break;
	case ord("3"):	return sp_key_3;		break;
	case ord("4"):	return sp_key_4;		break;
	case ord("5"):	return sp_key_5;		break;
	case ord("6"):	return sp_key_6;		break;
	case ord("7"):	return sp_key_7;		break;
	case ord("8"):	return sp_key_8;		break;
	case ord("9"):	return sp_key_9;		break;
	case ord("A"):	return sp_key_a;		break;
	case ord("B"):	return sp_key_b;		break;
	case ord("C"):	return sp_key_c;		break;
	case ord("D"):	return sp_key_d;		break;
	case ord("E"):	return sp_key_e;		break;
	case ord("F"):	return sp_key_f;		break;
	case ord("G"):	return sp_key_g;		break;
	case ord("H"):	return sp_key_h;		break;
	case ord("I"):	return sp_key_i;		break;
	case ord("J"):	return sp_key_j;		break;
	case ord("K"):	return sp_key_k;		break;
	case ord("L"):	return sp_key_l;		break;
	case ord("M"):	return sp_key_m;		break;
	case ord("N"):	return sp_key_n;		break;
	case ord("O"):	return sp_key_o;		break;
	case ord("P"):	return sp_key_p;		break;
	case ord("Q"):	return sp_key_q;		break;
	case ord("R"):	return sp_key_r;		break;
	case ord("S"):	return sp_key_s;		break;
	case ord("T"):	return sp_key_t;		break;
	case ord("U"):	return sp_key_u;		break;
	case ord("V"):	return sp_key_v;		break;
	case ord("W"):	return sp_key_w;		break;
	case ord("X"):	return sp_key_x;		break;
	case ord("Y"):	return sp_key_y;		break;
	case ord("Z"):	return sp_key_z;		break;
	}
}