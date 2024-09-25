@echo off
cls
Title TOPDATA 
color 1a
@echo.
@echo ############################################################
@echo #                TOPDATA registro dll                      #
@echo ############################################################
ECHO. 

if errorlevel 1 cls & @echo Favor executar o programa como administrador. & pause>nul & goto:ErroUsuario cls

wmic os get buildnumber,caption,CSDVersion


if %processor_architecture% == x86 (
@echo processor_architecture x86
@echo.
rem dll que nao necessitam de registro
	if not exist "%systemroot%\System32\EasyInner.dll" (
		msg * Arquivo %systemroot%\System32\EasyInner.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\Inner2K.dll" (
		msg * Arquivo %systemroot%\System32\Inner2K.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\InnerTCP.DLL" (
		msg * Arquivo %systemroot%\System32\InnerTCP.DLL  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\InnerTCP.DLL" (
		msg * Arquivo %systemroot%\System32\InnerTCP.DLL  nao encontrado
		goto:erro
	)
	
rem dll Nitgen
	if not exist "%systemroot%\System32\NBioBSP.dll" (
		msg * Arquivo %systemroot%\System32\NBioBSP.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\NBioBSP.dll" (
		msg * Arquivo %systemroot%\System32\NBioBSP.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\NITGEN.SDK.NBioBSP.dll" (
		msg * Arquivo %systemroot%\System32\NITGEN.SDK.NBioBSP.dll  nao encontrado
		goto:erro
	)
	
	
rem dlls para registro	
	if not exist "%systemroot%\System32\NBioBSPCOM.dll" (
		msg * Arquivo %systemroot%\System32\NBioBSPCOM.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\Msvbvm60.dll" (
		msg * Arquivo %systemroot%\System32\Msvbvm60.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\MSWINSCK.OCX" (
		msg * Arquivo %systemroot%\System32\MSWINSCK.OCX  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\MSCOMM32.OCX" (
		msg * Arquivo %systemroot%\System32\MSCOMM32.OCX  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\System32\InnerTCPLib.dll" (
		msg * Arquivo %systemroot%\System32\InnerTCPLib.dll  nao encontrado
		goto:erro
	)
	
	
:REGISTRO32
	%systemroot%\System32\regsvr32.exe %systemroot%\System32\NBioBSPCOM.dll
@echo C:\Windows\System32\NBioBSPCOM.dll --- OK
	%systemroot%\System32\regsvr32.exe %systemroot%\System32\Msvbvm60.dll
@echo C:\Windows\System32\Msvbvm60.dll --- OK
	%systemroot%\System32\regsvr32.exe  %systemroot%\System32\MSWINSCK.OCX
@echo C:\Windows\System32\MSWINSCK.OCX --- OK
	%systemroot%\System32\regsvr32.exe  %systemroot%\System32\MSCOMM32.OCX
@echo C:\Windows\System32\MSCOMM32.OCX --- OK
	%systemroot%\System32\regsvr32.exe  %systemroot%\System32\InnerTCPLib.dll
@echo C:\Windows\System32\InnerTCPLib.dll --- OK
@echo.
goto:sair
)

if %processor_architecture% == AMD64 (
@echo processor_architecture x64
@echo.
	if not exist "%systemroot%\SysWow64\Msvbvm60.dll" (
		msg * Arquivo %systemroot%\SysWow64\Msvbvm60.dll  nao encontrado
		goto:erro
	)
	rem dll que nao necessitam de registro
	if not exist "%systemroot%\SysWow64\EasyInner.dll" (
		msg * Arquivo %systemroot%\SysWow64\EasyInner.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\SysWow64\Inner2K.dll" (
		msg * Arquivo %systemroot%\SysWow64\Inner2K.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\SysWow64\InnerTCP.DLL" (
		msg * Arquivo %systemroot%\SysWow64\InnerTCP.DLL  nao encontrado
		goto:erro
	)
	
rem dll Nitgen
	if not exist "%systemroot%\SysWow64\NBioBSP.dll" (
		msg * Arquivo %systemroot%\SysWow64\NBioBSP.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\SysWow64\NBioBSP.dll" (
		msg * Arquivo %systemroot%\SysWow64\NBioBSP.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\SysWow64\NITGEN.SDK.NBioBSP.dll" (
		msg * Arquivo %systemroot%\SysWow64\NITGEN.SDK.NBioBSP.dll  nao encontrado
		goto:erro
	)
	
	
rem dlls para registro	
	if not exist "%systemroot%\SysWow64\NBioBSPCOM.dll" (
		msg * Arquivo %systemroot%\SysWow64\NBioBSPCOM.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\SysWow64\Msvbvm60.dll" (
		msg * Arquivo %systemroot%\SysWow64\Msvbvm60.dll  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\SysWow64\MSWINSCK.OCX" (
		msg * Arquivo %systemroot%\SysWow64\MSWINSCK.OCX  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\SysWow64\MSCOMM32.OCX" (
		msg * Arquivo %systemroot%\SysWow64\MSCOMM32.OCX  nao encontrado
		goto:erro
	)
	if not exist "%systemroot%\SysWow64\InnerTCPLib.dll" (
		msg * Arquivo %systemroot%\SysWow64\InnerTCPLib.dll  nao encontrado
		goto:erro
	)
	

	%systemroot%\SysWow64\regsvr32.exe %systemroot%\SysWow64\Msvbvm60.dll
@echo Regsvr32 C:\Windows\SysWow64\Msvbvm60.dll
	%systemroot%\SysWow64\regsvr32.exe %systemroot%\SysWow64\MSWINSCK.OCX
@echo Regsvr32 C:\Windows\System32\MSWINSCK.OCX
	%systemroot%\SysWow64\regsvr32.exe %systemroot%\SysWow64\MSCOMM32.OCX
@echo Regsvr32 C:\Windows\System32\MSCOMM32.OCX
	%systemroot%\SysWow64\regsvr32.exe %systemroot%\SysWow64\InnerTCPLib.dll
@echo Regsvr32 C:\Windows\System32\InnerTCPLib.dll
@echo.
goto:sair
)

:ErroUsuario
@echo.
msg * Para relizar esta operacao voce deve executar em modo administrador !!! 
exit

:ERRO
@echo.
@echo Nao foi possivel realizar a operacao...
@echo verifique se os arquivos estao na pasta do sistema.
pause
exit

:SAIR
@echo.
@echo Operacao realizada com sucesso...
pause
exit