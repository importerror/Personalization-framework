package storm.kafka;

import backtype.storm.Config;
import backtype.storm.LocalCluster;
import backtype.storm.StormSubmitter;
import backtype.storm.generated.StormTopology;
import backtype.storm.spout.SchemeAsMultiScheme;
import backtype.storm.topology.BasicOutputCollector;
import backtype.storm.topology.OutputFieldsDeclarer;
import backtype.storm.topology.TopologyBuilder;
import backtype.storm.topology.base.BaseBasicBolt;
import backtype.storm.tuple.Tuple;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;

public class KafkaSpoutTestTopology {
    public static final Logger LOG = LoggerFactory.getLogger(KafkaSpoutTestTopology.class);

    public static class PrinterBolt extends BaseBasicBolt {
        @Override
        public void declareOutputFields(OutputFieldsDeclarer declarer) {
        }

        @Override
        public void execute(Tuple tuple, BasicOutputCollector collector) {
            LOG.info(tuple.toString());
        }

    }

    private final BrokerHosts brokerHosts;

    public KafkaSpoutTestTopology(String kafkaZookeeper) {
        brokerHosts = new ZkHosts(kafkaZookeeper);
    }

    public StormTopology buildTopology() {
        SpoutConfig kafkaConfig = new SpoutConfig(brokerHosts, "storm-sentence", "", "storm");
        kafkaConfig.scheme = new SchemeAsMultiScheme(new StringScheme());
        TopologyBuilder builder = new TopologyBuilder();
        builder.setSpout("words", new KafkaSpout(kafkaConfig), 10);
        builder.setBolt("print", new PrinterBolt()).shuffleGrouping("words");
        return builder.createTopology();
    }

    public static void main(String[] args) throws Exception {

        /*String kafkaZk = args[0];
        KafkaSpoutTestTopology kafkaSpoutTestTopology = new KafkaSpoutTestTopology(kafkaZk);
        Config config = new Config();
        config.put(Config.TOPOLOGY_TRIDENT_BATCH_EMIT_INTERVAL_MILLIS, 2000);

        StormTopology stormTopology = kafkaSpoutTestTopology.buildTopology();
        if (args != null && args.length > 1) {
            String name = args[1];
            String dockerIp = args[2];
            config.setNumWorkers(2);
            config.setMaxTaskParallelism(5);
            config.put(Config.NIMBUS_HOST, dockerIp);
            config.put(Config.NIMBUS_THRIFT_PORT, 49627);
            config.put(Config.STORM_ZOOKEEPER_PORT, 49181);
            config.put(Config.STORM_ZOOKEEPER_SERVERS, Arrays.asList(dockerIp));
            StormSubmitter.submitTopology(name, config, stormTopology);
        } else {
            config.setNumWorkers(2);
            config.setMaxTaskParallelism(2);
            LocalCluster cluster = new LocalCluster();
            cluster.submitTopology("kafka", config, stormTopology);
        }
	
	GlobalPartitionInformation hostsAndPartitions = new GlobalPartitionInformation();
        hostsAndPartitions.addPartition(2, new HostPort("10.86.53.10", 9092));
        hostsAndPartitions.addPartition(3, new HostPort("10.86.53.11", 9092));
        hostsAndPartitions.addPartition(4, new HostPort("10.86.53.12", 9092));
	BrokerHosts brokerHosts = new StaticHosts(hostsAndPartitions);
	*/
	
	String zkhost = "localhost:2181";
	BrokerHosts brokerHosts = new ZkHosts(zkhost);
   	SpoutConfig kafkaConf = new SpoutConfig(brokerHosts,"test", "/kafkastorm", "discovery");
	kafkaConf.scheme = new SchemeAsMultiScheme(new StringScheme());
	KafkaSpout kafkaSpout = new KafkaSpout(kafkaConf);
	
	TopologyBuilder topology = new TopologyBuilder();
	Config config = new Config();
	config.put("kafka.consumer.timeout.ms", 40000);	
	LocalCluster cluster = new LocalCluster();
	topology.setSpout("kafka", kafkaSpout);
	topology.setBolt("print", new PrinterBolt()).shuffleGrouping("kafka");
	cluster.submitTopology("my-topology", config, topology.createTopology());    
    }
}
