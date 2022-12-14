# README

## init Ror project

```bash
# Ejecución en db mysql
rails new . --api -d mysql -T
# Ejecución en db potgresql
rails new . --api -d postgresql -T
 # abrir postgresql 
 # ejecutar rails db:create
```

## ejecution project
```bash
# Servidor
rails s
# Testing Rspec
bundle exec rspec
```

## Install gem's project
```bash
rails webpacker:install
```

## MYSQL DB correction

```bash
# Esto por lo general se instala una sola vez

gem install mysql2 --platform=ruby -- '--with-mysql-lib="C:\mysql-connector\lib" --with-mysql-include="C:\mysql-connector\include" --with-mysql-dir="C:\mysql-connector"'
```

## Generar controlador
```bash
rails g controller Subject index show edit new delete
rails g controller page index show edit new delete

rails destroy controller subject index show edit new delete
```

## Generar Modelos
```bash
rails g model Subject name:string position:integer visible:boolean
rails db:migrate
rails db:seed 
```

## Gemas de Ruby
```bash
rails g rspec:install
```
## Generar Modelos
```bash
rails g model User email name auth_token
rails g model Post title content published:boolean user:references

tipos:  integer, primary_key, decimal, float, boolean, binary, string, text, date, datetime, timestamp
# Migración para Develop
rails db:migrate
# Migración para Test
rails db:migrate RAILS_ENV=test
```

## Generar Controladores
```bash
rails g factory_bot:model user email name auth_token
rails g factory_bot:model post title content published user:references
```
## Generar Serialize
```bash
rails g serializer post 
```
## Generar de devise
```bash
rails g devise:install
rails g devise User
rails g devise:views
# Pagina de inicio por devise
http://localhost:3000/users/sign_in
http://localhost:3000/users/sign_up
```

## Deploy Heroku
```bash
git push heroku main
https://testtalentodigital.herokuapp.com/
```

## Crear - borrar variables de entorno Heroku

```bash
heroku --version
heroku config
heroku config:set nombre="Guillermo"
heroku config:unset nombre
```

## Logs en heroku

```bash
heroku logs -n 100 -a
heroku logs -n 100 --tail
```

## Entidad Relación
![](img/entidad-relacion.png)

## Problema N+1
![](img/N+1.png)
![](img/2N+1.png)
![](img/sol_N+1.png)
