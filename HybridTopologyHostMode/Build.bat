pushd net
call Build.bat
Target\ScpC.exe  generate-spec -assembly Target\HybridTopology.dll -class Scp.App.HybridTopology.HybridTopology_javaSpout_csharpBolt -spec HybridTopology_javaSpout_csharpBolt.spec
Target\ScpC.exe  generate-spec -assembly Target\HybridTopology.dll -class Scp.App.HybridTopology.HybridTopology_csharpSpout_javaBolt -spec HybridTopology_csharpSpout_javaBolt.spec
Target\ScpC.exe  generate-spec -assembly Target\HybridTopology.dll -class Scp.App.HybridTopology.HybridTopologyTx_javaSpout_csharpBolt -spec HybridTopologyTx_javaSpout_csharpBolt.spec
Target\ScpC.exe  generate-spec -assembly Target\HybridTopology.dll -class Scp.App.HybridTopology.HybridTopologyTx_csharpSpout_javaBolt -spec HybridTopologyTx_csharpSpout_javaBolt.spec
popd

pushd java
call Build.bat
popd