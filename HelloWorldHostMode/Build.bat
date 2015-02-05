@rem
@rem compile C# project
@rem 

call msbuild /t:rebuild /p:configuration=release /p:platform="any cpu" /p:outdir="%cd%"\Target\

@rem
@rem prep target resouces
@rem
xcopy /s/y/i ..\sdk .\Target
@rem xcopy /s/y/i/d ..\apps .\Target


Target\ScpC.exe  generate-spec -assembly Target\HelloWorld.dll -spec HelloWorld.spec