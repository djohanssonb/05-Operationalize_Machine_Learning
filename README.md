[![djohanssonb](https://circleci.com/gh/djohanssonb/05-Operationalize_Machine_Learning/tree/master.svg?style=svg&circle-token=a4bc0e683200736798591a09c5e7f680a767461e)](<LINK>)

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Run machine learning predictions:
	make_prediction.sh locally
	make_prediction_ESK.sh against EKS

### Kubernetes Steps
1. Created a EKS cluster in AWS
2. Created a Node Group
3. Run the image kubectl run --image=57192472048/05-machinelearning --port=80 05-machinelearning
4. Executed port forward: kubectl port-forward deployment/05-Mmachinelearning 8000:80
5. Exposed the server via LB in AWS: kubectl expose deployment 05-machinelearning --type=LoadBalancer --name=machinelearning


