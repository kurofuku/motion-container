FROM		debian:latest

RUN			\
			# Update to latest
			apt -y update && \
			apt -y upgrade && \
			# Install general packages
			apt -y install motion && \
			sed -i -E 's/^stream_port(.*)/stream_port 50081/' /etc/motion/motion.conf && \
			sed -i -E 's/^width(.*)/width 640/' /etc/motion/motion.conf && \
			sed -i -E 's/^height(.*)/height 480/' /etc/motion/motion.conf && \
			sed -i -E 's/^output_pictures(.*)/output_pictures on/' /etc/motion/motion.conf && \
			sed -i -E 's/^locate_motion_mode(.*)/locate_motion_mode on/' /etc/motion/motion.conf && \
			sed -i -E 's/^locate_motion_style(.*)/locate_motion_style redbox/' /etc/motion/motion.conf && \
			sed -i -E 's/^stream_localhost(.*)/stream_localhost off/' /etc/motion/motion.conf && \
			echo "Build complete." 

ENTRYPOINT	motion
