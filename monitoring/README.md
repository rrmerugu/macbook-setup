
```
docker run --name prometheus -d -v ./prometheus.yml:/etc/prometheus/prometheus.yml -p 9090:9090   --add-host=host.docker.internal:host-gateway --network bridge prom/prometheus


docker run --name grafana -d -v grafana-storage:/var/lib/grafana -p 3000:3000 --add-host=host.docker.internal:host-gateway --network bridge grafana/grafana

```