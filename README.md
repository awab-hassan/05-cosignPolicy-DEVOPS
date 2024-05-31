# Project #5 - Cosign Deployment

Project Type: Policy Implementation in Kubernetes Cluster.

Project Description: Client asked me to deploy a policy in Kubernetes cluster which implements a restriction that only signed images can be pulled in Kubernetes cluster. Any Image that is not signed by Client won't be allowed in Kubernetes cluster.

Solution:
- I installed cosign and generated keys first.
- I deployed Keyverno Policy in cluster and added the verification key in policy.
- I wrote a shell script to sign images.
- I provided demo to the client which demonstrated the policy allowing only signed images to be pulled in cluster.

![cb66c9c8cb664e32a529acb6888e68ff](https://github.com/awab-hassan/05-cosignPolicy-DEVOPS/assets/90965012/d9e64635-e0d6-4f8b-887e-1911b33acb88)
