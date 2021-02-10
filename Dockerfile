FROM nginx as base
WORKDIR /app
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 80

FROM node:12.18-alpine as build
WORKDIR /app
COPY . .
RUN yarn && yarn build && ls

FROM base as final
WORKDIR /app
COPY --from=build /app/roadmap.conf /etc/nginx/conf.d
COPY --from=build /app/cert /etc/nginx/conf.d
COPY --from=build /app/dist /usr/share/nginx/html
CMD [ "nginx", "-g", "daemon off;" ]
