/// @desc 브금 사운드 조절


//사운드 볼륨 취득
if ( SM_Fade_Time_Max > 0 )
{
	SM_BGM_Vol = lerp( SM_BGM_Vol_Start , SM_BGM_Vol_End , SM_Fade_Time / SM_Fade_Time_Max );
}
//페이드 시간 최대치가 0이면 즉시 변경
else
{
	SM_BGM_Vol = SM_BGM_Vol_End;	
}



//지정한 볼륨으로 사운드변경
audio_sound_gain( SM_BGM , SM_BGM_Vol/100 , 0 );



//페이드 카운터 증가
if ( SM_Fade_Time < SM_Fade_Time_Max )
{
	SM_Fade_Time++;	
}




//파괴 체크시 볼륨이 0이하가 되었다면 파괴
if ( SM_BGM_Destroy )
{
	if ( SM_BGM_Vol <= 0 )
	{
		instance_destroy( id );
	}
}







