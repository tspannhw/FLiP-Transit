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
