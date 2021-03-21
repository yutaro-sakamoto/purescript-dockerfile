# purs + spago

purescriptコンパイラ[purs](https://github.com/purescript/purescript)と
purescriptビルドツール[spago](https://github.com/purescript/spago)を
インストールしたDockerコンテナをビルドできます.

# Usage

```sh
# build a container
docker build -t purescript:sample .

# run the container
docker run -itd --name ps purescript:sample
docker attach ps

###### in the container ######

# print the versions of purs and spago
purs --version
spago --verson

# create a sample project and execute a sample program
mkdir ~/sample
cd ~/sample
spago init
spago build
spago run
```
