# FLiP-Transit

Apache Flink - Apache Pulsar - Apache NiFi -> Real-Time Transit Data


## Create topics

```
bin/pulsar-admin topics create persistent://public/default/transcom

```


## Consume Data

```
bin/pulsar-client consume "persistent://public/default/transcom" -s transcom-reader
```

## List

