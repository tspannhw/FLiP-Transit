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

## Flink SQL

```
create table transcom (
`uuid` STRING, 
`ts` STRING,  
`title` STRING, `description` STRING, 
`pubDate` STRING, 
`point` STRING
) WITH (
  'connector' = 'pulsar',
  'topic' = 'persistent://public/default/transcom',
  'value.format' = 'json',
  'service-url' = 'pulsar://localhost:6650',
  'admin-url' = 'http://localhost:8080',
  'scan.startup.mode' = 'earliest' 
);
```

## List

* https://github.com/tspannhw/SmartTransit
* https://github.com/tspannhw/FLiP-ApacheCon2021
* https://github.com/tspannhw/FLiP-SQL
* https://github.com/tspannhw/FLiP-IoT
* https://github.com/tspannhw/FLiP-Energy
* https://github.com/tspannhw/FLiP-Jetson
* https://github.com/tspannhw/FLiP-EdgeAI
* https://github.com/tspannhw/FLiP-CloudQueries


