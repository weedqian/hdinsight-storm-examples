@rem Please build the target using Build.bat in your developer environment first

pushd ..\..
call bin\runSpec.cmd examples\HelloWorldTx.spec specs examples\HelloWorldTx\Target
popd