docker build --tag docker-gpu-image .

docker run \
	--gpus all \
	-it \
	--rm \
	--net="host" \
	--name "docker-gpu" \
	-v "$PWD":"/root/projects/MasterProjectSeries" \
	docker-gpu-image:latest \
	bash -c "cd /root/projects && jupyter-notebook --allow-root"
