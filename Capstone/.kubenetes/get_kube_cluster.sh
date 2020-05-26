# https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html

eksctl create cluster \
> --name marcocapcluster \
> --version 1.16 \
> --region us-east-1 \
> --nodegroup-name standard-workers \
> --node-type t2.small \
> --nodes 3 \
> --nodes-min 1 \
> --nodes-max 4 \

