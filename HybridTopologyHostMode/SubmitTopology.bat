@rem Please build the target using Build.bat in your developer environment first

pushd ..\..
call bin\runSpec.cmd examples\HybridTopologyHostMode\net\HybridTopology_javaSpout_csharpBolt.spec specs examples\HybridTopologyHostMode\net\Target -cp examples\HybridTopologyHostMode\java\target\*
call bin\runSpec.cmd examples\HybridTopologyHostMode\net\HybridTopology_csharpSpout_javaBolt.spec specs examples\HybridTopologyHostMode\net\Target -cp examples\HybridTopologyHostMode\java\target\*
call bin\runSpec.cmd examples\HybridTopologyHostMode\net\HybridTopologyTx_javaSpout_csharpBolt.spec specs examples\HybridTopologyHostMode\net\Target -cp examples\HybridTopologyHostMode\java\target\*
call bin\runSpec.cmd examples\HybridTopologyHostMode\net\HybridTopologyTx_csharpSpout_javaBolt.spec specs examples\HybridTopologyHostMode\net\Target -cp examples\HybridTopologyHostMode\java\target\*
popd
