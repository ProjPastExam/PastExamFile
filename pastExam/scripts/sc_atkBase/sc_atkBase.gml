function sc_atkBase() {
	/*
	sc_atk 종류 스크립트 설명
	0000의 일련숫자 중
	1자리 : 무기 카테고리 [ 0 도  1 ]
	2자리 : 무기 세부종류
	3자리 : [ 0 일반  1 강공 ]
	4자리 : [ 0 일반  1 대쉬  2 점프 ]
	*/


	switch ( atkKey ) {
		case 00: sc_atk00(); break;
		//case 0001: sc_atk0001(); break;
		//case 0002: sc_atk0002(); break;
	}


}
