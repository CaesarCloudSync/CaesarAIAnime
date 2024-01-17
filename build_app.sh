git add .
git commit -m "$1"
git push origin -u main:main
docker build -t palondomus/amarianime:latest .
docker push palondomus/amarianime:latest
docker run -it -p 8080:8080 palondomus/amarianime:latest