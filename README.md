# mailbagit-notebook
Jupyter notebooks for exploring mailbagit

### Pull docker image

```
sudo docker pull ualbanyarchives/mailbagit:vtd
```

### Run docker image

```
sudo docker run -it -p 8888:8888 ualbanyarchives/mailbagit:vtd
```

### Run the notebook (In the Docker container)

```
jupyter notebook --no-browser mailbagit-vtd.ipynb
```

### Visit Notebook on host

http://localhost:8888/notebooks/mailbagit-vtd.ipynb (with the token displayed in the Docker container)


### For building the Docker image

```
sudo docker build -t ualbanyarchives/mailbagit:vtd .
```
