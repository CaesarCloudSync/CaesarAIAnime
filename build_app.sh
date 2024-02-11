git add .
git commit -m "$1"
git push origin -u main:main
docker build -t palondomus/amarianime:coldest .
docker push palondomus/amarianime:coldest
docker run -it -p 8080:8080 palondomus/amarianime:coldest