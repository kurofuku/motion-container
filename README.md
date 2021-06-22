# motion-container
This image is to establish automatic capture system by camera device.

# To build image
sudo docker build -t motion-image .

# To run container
sudo docker run -dit --restart=always --device=/dev/video0:/dev/video0 -p 50081:50081 motion-image
