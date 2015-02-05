@rem
@rem compile C# project
@rem 

call msbuild /t:rebuild /p:configuration=release /p:platform="any cpu" /p:outdir="%cd%"\Target\

@rem
@rem prep target resouces
@rem
xcopy /s/y/i ..\sdk .\Target
@rem xcopy /s/y/i/d ..\apps .\Target
copy /y DataSource0.txt Target
copy /y DataSource1.txt Target
copy /y DataSource2.txt Target
