docker build --tag docker-gpu-image .

docker run \
	--gpus all \
	-it \
	--rm \
	--net="host" \
	--name "docker-gpu" \
	-v "$PWD/imageFilters":"/root/pythonprojects/imageFilters" \
	docker-gpu-image:latest \
	bash -c "cd /root/pythonprojects && jupyter-notebook --allow-root"
