This is built from the [official nginx image][official], but modified to read
configs from a mounted volume. It makes it easy to use in places where you'd
want to modify the configs without creating or deploying a new image, such as
[Rock-ons in Rockstor][rockons].

[official]: https://hub.docker.com/_/nginx/
[rockons]: http://rockstor.com/docs/docker-based-rock-ons/overview.html

# How to Use This Image

```
$ docker run --name some-nginx \
    -v /some/content:/usr/share/nginx/html:ro \
    -v /some/config:/config:ro \
    -p 8080:80 -p 1443:443 \
    -d jtarka/nginx:latest
```

# Things to Know
- Configs are read from `/config` rather than `/etc/nginx/conf.d/`
- If `/config` is empty, the contents of `/etc/nginx/conf.d/` are copied to
  `/config` on startup
  - This should be just `default.conf`
- The default static files from nginx are not copied to your content directory
- There is no SSL configured by default

