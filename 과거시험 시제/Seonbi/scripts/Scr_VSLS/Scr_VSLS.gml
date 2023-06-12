/// 변수 저장 / 불러오기 시스템 ( 최종 수정 : 2020 - 09 - 08 )



/*							*\
	변수 저장용 구조체 생성
\*							*/


/// @desc 변수 저장용 맵 생성 ( 제일 첫 룸에 한번 실행해주기 )

function VSLS_Init()
{
	// 변수 저장용 맵 자료구조가 없다면 생성해주기
	if ( variable_global_exists( "VSLS" ) == false )
	{
		global.VSLS = ds_map_create();
	}
}




//#########################################################################################//




/*							*\
	세이브 파일 관련 스크립트
\*							*/


/// @desc [세이브 파일이 존재하는지 검사하는] 스크립트 ( 있으면 ture , 없으면 false 반환 )
/// @arg file_name 세이브파일명(문자열)

function VSLS_File_Exists( file_name )
{
	return file_exists( file_name + ".txt" );
}



/// @desc [세이브 파일을 저장하는] 스크립트 ( 저장 성공시 ture , 실패시 false 반환 )
/// @arg file_name 세이브파일명(문자열)

function VSLS_File_Save( file_name )
{
	//텍스트 파일 열기
	var file_ind = file_text_open_write( file_name + ".txt" );
	
	//쓰기 
	var result = file_text_write_string( file_ind  , ds_map_write( global.VSLS ) );
	
	//텍스트 파일 닫기
	file_text_close( file_ind );
	
	
	//결과 값 반환
	return result;
}



/// @desc [세이브 파일을 불러오는] 스크립트 ( 불러오기 성공시 ture , 실패시 false 반환 )
/// @arg file_name 세이브파일명(문자열)

function VSLS_File_Load( file_name )
{
	//세이브 파일이 있다면 세이브 파일 불러오기
	if ( file_exists( file_name + ".txt" ) == true )
	{
		
		//기존 데이터 청소
		ds_map_clear( global.VSLS );
		
		
		//파일 열기
		var file_ind = file_text_open_read( file_name + ".txt" );
		
		
		//세이브 파일 불러오기
		ds_map_read( global.VSLS  , file_text_read_string( file_ind ) );
		
		
		//파일 닫기
		file_text_close( file_ind );
		
		
		return true;
	}
	// 없으면 실패값 반환
	else
	{
		return false;
	}
	
}



/// @desc [세이브 파일을 삭제하는] 스크립트 ( 삭제 성공시 ture , 실패시 false 반환 )
/// @arg file_name 세이브파일명(문자열)

function VSLS_File_Delete( file_name )
{
	if ( file_exists( file_name + ".txt" ) == true )
	{
		return file_delete( file_name + ".txt" );
	}
	
	//실패 - 파일이 존재하지 않음
	else
	{
		return false;	
	}
}




//#########################################################################################//




/*							*\
	   변수 관련 스크립트
\*							*/


/// @desc [변수가 존재하는지 검사하는] 스크립트 ( 있으면 ture , 없으면 false 반환 )
/// @arg var_name 변수명(문자열)

function VSLS_Exists( var_name )
{
	return ds_map_exists( global.VSLS , var_name );
}


/// @desc [변수를 선언하거나 변경하는] 스크립트 ( 성공시 ture , 실패시 false 반환 )
/// @arg var_name 변수명(문자열)
/// @arg value 값

function VSLS_Set( var_name  , value )
{
	global.VSLS[? var_name] = value;
	//return ds_map_add( global.VSLS , var_name , value );
}


/// @desc [변수의 값을 불러오는] 스크립트 ( 성공시 변수 값 반환 , 실패시 undefined 반환 )
/// @arg var_name 변수명(문자열)

function VSLS_Get( var_name )
{
	if( ds_map_exists( global.VSLS , var_name ) == true )
	{
		return global.VSLS[? var_name];
	}
	else
	{
		return undefined;	
	}
}


/// @desc [변수를 삭제하는] 스크립트 ( 성공시 true 반환 , 실패시 false 반환 )
/// @arg var_name 변수명(문자열)

function VSLS_Delete( var_name )
{
	if( ds_map_exists( global.VSLS , var_name ) == true )
	{
		ds_map_delete( global.VSLS , var_name );
		
		return true;
	}
	else
	{
		return false;	
	}
}


function VSLS_SetAndSave(var_name, var_value, var_filename) {
	VSLS_Set(var_name, var_value);
	VSLS_File_Save(var_filename);
}
