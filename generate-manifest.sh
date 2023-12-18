#!/bin/bash

# Check if version argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

# Version from the argument
version="$1"

# Base URL for the GitHub releases
url_base="https://github.com/chrisurf/terraform-provider-chrisurf/releases/download/v${version}"

# Construct the JSON
cat > terraform-registry-manifest.json <<EOF
{
  "version": "${version}",
  "architectures": {
    "freebsd_amd64": "${url_base}/terraform-provider-chrisurf_${version}_freebsd_amd64.zip",
    "freebsd_386": "${url_base}/terraform-provider-chrisurf_${version}_freebsd_386.zip",
    "freebsd_arm": "${url_base}/terraform-provider-chrisurf_${version}_freebsd_arm.zip",
    "freebsd_arm64": "${url_base}/terraform-provider-chrisurf_${version}_freebsd_arm64.zip",
    "windows_amd64": "${url_base}/terraform-provider-chrisurf_${version}_windows_amd64.zip",
    "windows_386": "${url_base}/terraform-provider-chrisurf_${version}_windows_386.zip",
    "windows_arm": "${url_base}/terraform-provider-chrisurf_${version}_windows_arm.zip",
    "windows_arm64": "${url_base}/terraform-provider-chrisurf_${version}_windows_arm64.zip",
    "linux_amd64": "${url_base}/terraform-provider-chrisurf_${version}_linux_amd64.zip",
    "linux_386": "${url_base}/terraform-provider-chrisurf_${version}_linux_386.zip",
    "linux_arm": "${url_base}/terraform-provider-chrisurf_${version}_linux_arm.zip",
    "linux_arm64": "${url_base}/terraform-provider-chrisurf_${version}_linux_arm64.zip",
    "darwin_amd64": "${url_base}/terraform-provider-chrisurf_${version}_darwin_amd64.zip",
    "darwin_arm64": "${url_base}/terraform-provider-chrisurf_${version}_darwin_arm64.zip"
  }
}
EOF

echo "terraform-registry-manifest.json created for version ${version}"
