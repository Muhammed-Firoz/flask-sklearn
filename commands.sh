#! usr/bin/env bash

ssh-keygen -t rsa
cat /home/odl_user/.ssh/id_rsa.pub
git clone git@github.com:Muhammed-Firoz/flask-sklearn.git
az configure --defaults group=Azuredevops
python3 -m venv ~/.flask-ml-azure
source ~/.flask-ml-azure/bin/activate
cd flask-sklearn
make install
az webapp up -n firozflaskmlapp --runtime "PYTHON:3.7"
./make_predict_azure_app.sh
