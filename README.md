# Demonstrate Simput In Docker

## Prerequisites
* Docker installed on host

## Quickstart
1. clone this repo
```
git clone https://github.com/arezaii/simput_demo
```
2. change to the demo directory
```
cd simput_demo
```

3. build the container
```
docker build simput .
```

4. run the container
```
docker run -p 8080:8080 simput
```

5. open a web browser and navigate to
```
http://localhost:8080
```


## Stopping the container
In a separate terminal window run:
```
docker container ls
```
identify the container with IMAGE name "simput" and use the NAMES or CONTAINER_ID value in the following command:
```
docker stop <name|container_id>
```

