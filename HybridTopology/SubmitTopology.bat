@rem Please build the target using Build.bat in your developer environment first

pushd ..\..

rem call bin\runSpec.cmd examples\HybridTopology\HybridTopologyTx_csharp.spec specs examples\HybridTopology\net\Target

call bin\runSpec.cmd examples\HybridTopology\HybridTopology_javaSpout_csharpBolt.spec specs examples\HybridTopology\net\Target -cp examples\HybridTopology\java\target\*
call bin\runSpec.cmd examples\HybridTopology\HybridTopology_csharpSpout_javaBolt.spec specs examples\HybridTopology\net\Target -cp examples\HybridTopology\java\target\*

call bin\runSpec.cmd examples\HybridTopology\HybridTopologyTx_javaSpout_csharpBolt.spec specs examples\HybridTopology\net\Target -cp examples\HybridTopology\java\target\*
call bin\runSpec.cmd examples\HybridTopology\HybridTopologyTx_csharpSpout_javaBolt.spec specs examples\HybridTopology\net\Target -cp examples\HybridTopology\java\target\*
popd
