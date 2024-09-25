cd %systemroot%
Set RegQry=HKLM\Hardware\Description\System\CentralProcessor\0
REG.exe Query %RegQry%  | Find /i "x86" 
If %ERRORLEVEL% == 0 (
    GOTO X86
) ELSE (
    GOTO X64
)


:X86
@echo on
setlocal 	

  %systemroot%"\microsoft.net\framework\v2.0.50727/regasm.exe" %systemroot%"\system32\Inner.dll" /codebase
  %systemroot%"\microsoft.net\framework\v2.0.50727/regasm.exe" %systemroot%"\System32\Inner.dll" /tlb:Inner.tlb
  )

endlocal
GOTO END

:X64
@echo on
setlocal

  %systemroot%"\microsoft.net\framework\v2.0.50727/regasm.exe" %systemroot%"\SysWOW64\Inner.dll" /codebase
  %systemroot%"\microsoft.net\framework\v2.0.50727/regasm.exe" %systemroot%"\SysWOW64\Inner.dll" /tlb:Inner.tlb

)

endlocal
GOTO END


:End
