### Test locally

To test just point the browser to the repo root.

Or using a server:

```
python -m http.server
```

### Deply to s3

Make sure the aws CLI is
[installed](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux-mac.html)
and
[configured](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration).

Upload the full site with
```
./upload.sh
```

or to upload an individual file

```
./upload.sh <myfile>
```

Navigate to:

http://awnihannun.com.s3-website.us-east-1.amazonaws.com/
