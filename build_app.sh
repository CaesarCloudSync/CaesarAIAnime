git add .
git commit -m "$1"
git push origin -u main:main
docker build -t palondomus/amarianime:5 .
docker push palondomus/amarianime:5
docker run -it -p 8080:8080 palondomus/amarianime:5