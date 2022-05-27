# mailbagit-notebook
Jupyter notebooks for exploring mailbagit


### Option 1: Build docker image

```
sudo docker build -t ualbanyarchives/mailbagit:vtd .
```

### Option 2: Pull docker image

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

http://localhost:8888/notebooks/mailbagit-vtd.ipynb