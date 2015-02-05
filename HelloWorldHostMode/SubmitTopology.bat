@rem Please build the target using Build.bat in your developer environment first

pushd ..\..
call bin\runSpec.cmd examples\HelloWorldHostMode\HelloWorld.spec specs examples\HelloWorldHostMode\Target
popd