@rem Please build the target using Build.bat in your developer environment first

pushd ..\..
call bin\runSpec.cmd examples\HelloWorld.spec specs examples\HelloWorld\Target
popd