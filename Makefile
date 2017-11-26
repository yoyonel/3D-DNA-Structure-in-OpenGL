3D-DNA_Structure-in-OpenGL:
	./docker/build_project_in_docker.sh

build: 3D-DNA_Structure-in-OpenGL
	
run: 3D-DNA_Structure-in-OpenGL
	./build/3D-DNA_Structure-in-OpenGL

clean:
	rm -r build/

.PHONY: run
