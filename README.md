# Проект Pir Online
## Сборка проекта

Для сборки проекта и создания исполняемого JAR файла выполните следующую команду в консоли:

```bash
./mvnw clean package -DskipTests
```

## Запуск проекта
Для запуска проекта потребуется:
1) Запустить Docker Desktop
2) Выполняем следующую команду в консоли  
```bash
docker-compose up -d
````

## Тестирование через Postman
### Для любого запроса во вкладке Headers указываем (X-API-KEY: TestTaskForPir)
1) Get -> localhost:8080/api/projects 

2) 1) Post -> localhost:8080/api/projects
   2) Добавляем в Headers (Content-Type: application/json)
   3) В body выбираем raw(JSON) и пишем запрос например {"name": "Project Beta","code": "PB002","startDate": "2024-02-01","endDate": "2024-12-31","status": "IN_PROGRESS","sections":["AR", "KR", "IOS1", "IOS6"]}

3) Put -> localhost:8080/api/projects{id}, а дальше тоже самое что и в Post
4) Delete -> localhost:8080/api/projects{id}
