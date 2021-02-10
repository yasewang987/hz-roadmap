FROM nginx as base
WORKDIR /app
CMD ["nginx","-g", "daemon off;"]
