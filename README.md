Данный продукт является интерфейсом для просмотра записей с видеокамер, созданных программой motion.
Проверялся на Rails 3.2 и Ruby 1.9.3. В качестве СУБД используется PostgreSQL, но можно использовать и на ваш выбор (необходимо будет внести правильные данные в database.yml).
Измените данные в db/seeds.rb для пользователя admin.

Также motion тоже должен писать данные в базу. Для этого, после установки данного продукта, в motion.conf в секции
#####################################################################                                                                                                           
# Common Options for database features.                                                                                                                                         
# Options require database options to be active also.                                                                                                                           
#####################################################################
параметр sql_query привести к следующему виду:
sql_query insert into records(thread, filename, frame, file_type, event_timestamp, created_at, updated_at) values('%t', '%f', '%q', '%n', '%Y-%m-%d %T', NOW(), NOW())

Необходимо параметру ffmpeg_video_codec выставить значение ogg
ffmpeg_video_codec ogg
Для этого возможно вам придется вручную собрать последнюю версию пакета motion из git репозитория.
Подробнее как это сделать можно посмотреть на сайте проекта http://www.lavrsen.dk/foswiki/bin/view/Motion/MotionGuideInstallation

Необходимо настроить окружение для Ruby On Rails (пример как можно сделать http://habrahabr.ru/post/140910/).
Возможно понадобится установка NodeJS (https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager).

Установка.
1. Клонировать при помощи git сайт.
2. Переименовать config/database.yml.example в config/database.yml и вписать туда настройки для вашей базы.
3. Измените данные в db/seeds.rb для пользователя admin.
4. rake db:migrate
5. rake db:seed
6. Для проверки можно будет запустить rails s. Сервер будет слушать на 3000 порту. Если все нормально, можно работать.
7. И напоследок, настроить задание для крона по чистке базы. По умолчанию хранятся записи за 21 день, но можно изменить этот параметр в файле app/models/record.rb 12 строка, но лучше в lib/tasks/crontask.rake строку
Record.clean_old_records
заменить на
Record.clean_old_records Нужное_количество_дней.
После чего прогнать команду
whenever --update-crontab из под пользователя, от имени которого будет работать сайт.
