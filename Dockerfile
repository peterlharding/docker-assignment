

FROM node

RUN apt update && apt install \
    mariadb-dev gcc linux-headers libgcc make alpine-sdk libffi-dev python3-dev

COPY . /opt/app

WORKDIR /opt/app

# RUN pip --no-cache-dir install -r requirements.txt

# Use old style passwords because caching_sha2_password.so isn't available
# RUN echo -e 'default-authentication-plugin=mysql_native_password' >>/etc/mysql/conf.d/mysql.cnf

EXPOSE 80 443

# USER www-data
CMD ["node", "app/index.js"]



