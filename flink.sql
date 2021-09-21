create table transcom (
`uuid` STRING, 
`ts` STRING,  
`title` STRING, `description` STRING, 
`pubDate` STRING, 
`point` STRING
) WITH (
	'connector.type'    	 = 'kafka',
	'connector.version' 	 = 'universal',
	'connector.topic'   	 = 'transcomevents',
	'connector.startup-mode' = 'earliest-offset',
	'connector.properties.bootstrap.servers' =  'edge2ai-1.dim.local:9092',
	'connector.properties.group.id' = 'flink-sql-transcomevents-consumer',
	'format.type' = 'json'
)
