url=""

# Set appropriate url based on machine architecture
if [ $(uname -m) = "aarch64" ]; then
    url="https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip"
else
    url="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
fi

# Install AWS CLI
curl $url -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install --update

# Clean up
rm -r ./aws*