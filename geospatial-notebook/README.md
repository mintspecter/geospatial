# JupyterLab with PySpark for Geo-Spatial

* installed packages for geo-spatial
   - gdal: https://gdal.org/tutorials/
   - fiona: https://fiona.readthedocs.io/en/stable/
   - pyproj: https://pyproj4.github.io/pyproj/stable/
   - shapely: https://shapely.readthedocs.io/en/stable/manual.html
   - geopandas: https://geopandas.org/en/stable/
   - pydeck: https://deckgl.readthedocs.io/en/latest/layer.html

* required
   - podman or docker
   - podman-compose or docker-compose

* jupyterlab port
   - 8888

* jupyterlab path
   - /work (volume, read write)
   - /data (local, read only)

## build (optional)
```bash 
./container_build.sh 
```
## start

* copy some files to data directory
> jupyterlab path '/data/'
```bash
cp /data/some_file.csv ./data/
```

* run start container script
```bash
./container_start.sh
```

* connect url
```
http://{host_ip}:8888/lab?token=test
```

## stop

* run stop container script
```bash
./container_stop.sh
```
