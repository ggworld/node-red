docker build -t node:05 .
docker run -d -p 1880:1880 -v /home/ec2-user/workspaces/mynode/node_red_data:/data --name mynodered2 node:05
