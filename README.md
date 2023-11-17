### Test locally

To test just point the browser to the repo root.

Or using a server:

```
python -m http.server
```

### Deploy to s3

Make sure the aws CLI is
[installed](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux-mac.html)
and
[configured](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration).

Get the upload script:

```
curl -O https://gist.githubusercontent.com/awni/e159b35f3313a4428a7a27d2b68d009b/raw/1fff5fdd12b7441cfc2f57ae9e3440fbae4d66b5/upload.sh
```

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
