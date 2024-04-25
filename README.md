To integerating the nirmata policy with harness CI/CD following are the shell commands to be used before the dockerimage build and push step.

wget https://nirmata-downloads.s3.us-east-2.amazonaws.com/nctl/nctl_3.4.3/nctl_3.4.3_linux_64-bit.zip

unzip nctl_3.4.3_linux_64-bit.zip

chmod u+x nctl

ls -lrth

./nctl scan dockerfile --policies=dockerfile-policy.yaml,dockerfile-policy-1.yaml,dockerfile-policy-2.yaml --resources Dockerfile --output yaml | tee scan-report.yaml

cat scan-report.yaml

export text=$(cat scan-report.yaml | grep -i  Error | head -n 1)

./check.sh
