// 사운드( BGM , BGS , SE )을 간편하게 사용할 수 있는 스크립트



/*				SE(효과음) 재생						*/
#region

	/// @function SE_Play( sound , vol )
	/// @desc 효과음을 재생시키는 스크립트
	/// @arg sound 재생할 효과음 사운드
	/// @arg vol   0 ~ 100 사이의 볼륨값 ( 백분율% ) 

	function SE_Play( sound , vol )
	{
		//사운드 재생
		var sound_index = audio_play_sound( sound , 10 , false );
	
		//볼륨 조절
		audio_sound_gain( sound_index , vol/100 , 0 );
	}

#endregion




/*				BGS(환경음) 재생					*/
#region
	
	/// @function BGS_Play( sound , vol , fade_step )
	/// @desc 환경음을 재생시키는 스크립트
	/// @arg sound		 재생할 환경음 사운드
	/// @arg vol		 0 ~ 100 사이의 볼륨값 ( 백분율% )
	/// @arg fade_step	 이전 환경음과 페이드되는 시간 ( 0이면 즉시 교체 )

	function BGS_Play( sound , vol , fade_step )
	{
		//기존 환경음 재생 종료
		with( Obj_BGS_Manager )
		{
			if ( SM_BGM_Destroy == false )
			{
				//페이드 후 재생 종료하기
				SM_BGM_Destroy = true;
			
			
				//시작볼륨과 끝 볼륨 설정
				SM_BGM_Vol_Start = SM_BGM_Vol;
				SM_BGM_Vol_End = 0;
			
			
				//페이드 시간 초기화 + 설정
				SM_Fade_Time = 0;
				SM_Fade_Time_Max = fade_step;
			}
		}
	
		//새로운 환경음 생성
		with( instance_create_depth( -50 , -50 , -100 , Obj_BGS_Manager ) )
		{
			//환경음 재생 후 볼륨값 초기화
			SM_BGM = audio_play_sound( sound , 1 , true );
			audio_sound_gain( SM_BGM , 0 , 0 );
		
		
			//시작볼륨과 끝 볼륨
			SM_BGM_Vol_Start = SM_BGM_Vol;
			SM_BGM_Vol_End = vol;
		
		
			//페이드 시간 초기화 & 설정
			SM_Fade_Time = 0;
			SM_Fade_Time_Max = fade_step;
		}
	}



	/// @function BGS_Set( vol , fade_step )
	/// @desc 환경음의 볼륨을 변경하는 스크립트
	/// @arg vol		0 ~ 100 사이의 볼륨값 ( 백분율% )
	/// @arg fade_step  이전 환경음과 페이드되는 시간 ( 0이면 즉시 교체 )

	function BGS_Set( vol , fade_step )
	{
		//파괴중이 아닌 환경음에 접근해서 볼륨값 설정
		with ( Obj_BGS_Manager )
		{
			if ( SM_BGM_Destroy == false )
			{
				//시작볼륨과 끝 볼륨
				SM_BGM_Vol_Start = SM_BGM_Vol;
				SM_BGM_Vol_End = vol;
		        
				
				//페이드 시간 초기화 & 설정
				SM_Fade_Time = 0;
				SM_Fade_Time_Max = fade_step;
			}
		}
	}

#endregion




/*				BGM(배경음) 재생					*/
#region

	/// @function BGM_Play( sound , vol , fade_step )
	/// @desc 배경음을 재생시키는 스크립트
	/// @arg sound		 재생할 배경음 사운드
	/// @arg vol		 0 ~ 100 사이의 볼륨값 ( 백분율% )
	/// @arg fade_step	 이전 배경음과 페이드되는 시간 ( 0이면 즉시 교체 )

	function BGM_Play( sound , vol , fade_step )
	{
		if (sound == global.SM_BGM_SOUND) return;
		audio_stop_sound( global.SM_BGM );
		//기존 브금 재생 종료
		with( Obj_BGM_Manager )
		{		
			if ( SM_BGM_Destroy == false )
			{
				//페이드 후 재생 종료하기
				SM_BGM_Destroy = true;

			
				//시작볼륨과 끝 볼륨 설정
				SM_BGM_Vol_Start = SM_BGM_Vol;
				SM_BGM_Vol_End = 0;
			
			
				//페이드 시간 초기화 + 설정
				SM_Fade_Time = 0;
				SM_Fade_Time_Max = fade_step;
			}
		}
	
		//새로운 브금 생성
		with( instance_create_depth( -50 , -50 , -100 , Obj_BGM_Manager ) )
		{
			//브금 재생 후 볼륨값 초기화
			global.SM_BGM = audio_play_sound( sound , 1 , true );
			global.SM_BGM_SOUND = sound;
			audio_sound_gain( global.SM_BGM , 0 , 0 );
		
		
			//시작볼륨과 끝 볼륨
			SM_BGM_Vol_Start = SM_BGM_Vol;
			SM_BGM_Vol_End = vol;
		
		
			//페이드 시간 초기화 & 설정
			SM_Fade_Time = 0;
			SM_Fade_Time_Max = fade_step;
		}
	}



	/// @function BGM_Set( vol , fade_step )
	/// @desc 배경음의 볼륨을 변경하는 스크립트
	/// @arg vol		0 ~ 100 사이의 볼륨값 ( 백분율% )
	/// @arg fade_step  이전 배경음과 페이드되는 시간 ( 0이면 즉시 교체 )

	function BGM_Set( vol , fade_step )
	{
		//파괴중이 아닌 브금에 접근해서 볼륨값 설정
		with ( Obj_BGM_Manager )
		{
			if ( SM_BGM_Destroy == false )
			{
				//시작볼륨과 끝 볼륨
				SM_BGM_Vol_Start = SM_BGM_Vol;
				SM_BGM_Vol_End = vol;
		
		
				//페이드 시간 초기화 & 설정
				SM_Fade_Time = 0;
				SM_Fade_Time_Max = fade_step;
			}
		}
	}

#endregion




