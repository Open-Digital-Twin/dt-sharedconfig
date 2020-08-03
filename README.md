# dt-sharedconfig

## DB Commands

### Init DB
docker exec -it scylla-db cqlsh -f /db/db.cql

docker exec -it scylla-db cqlsh -f /db/init.cql

#### Source data count by source.

```
select source, count(*) from dt.source_data GROUP BY source;
```

#### Source name by source id
```
select id, name from dt.source where id IN (?, ?, ?)
```
