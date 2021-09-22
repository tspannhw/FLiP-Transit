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
`title` STRING, 
`description` STRING, 
`pubDate` STRING, 
`point` STRING,
`latitude` STRING,
`longitude` STRING
) WITH (
  'connector' = 'pulsar',
  'topic' = 'persistent://public/default/transcom',
  'value.format' = 'json',
  'service-url' = 'pulsar://localhost:6650',
  'admin-url' = 'http://localhost:8080',
  'scan.startup.mode' = 'earliest' 
);
```

## Data

```
[ {
  "title" : "Raritan Valley Line both directions:Elevator Work",
  "description" : "NJ Transit Rail: Elevator Work on Raritan Valley Line both directions at Newark Penn Station (Newark) Effective immediately and continuing until further notice, the Track A Elevator at Newark Penn Station is temporarily out of service for repairs Not currently Scheduled",
  "pubDate" : "2020-09-16T23:59:20",
  "point" : "40.734221,-74.164554",
  "latitude" : "40.734221",
  "ts" : "1632316187802",
  "longitude" : "-74.164554",
  "uuid" : "8f98265b-f56f-497a-96e0-6de83038aaa7"
} ]
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


