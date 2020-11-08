#!/bin/bash

git status #посмотреть состояние 
git log #показать историю коммитов 
git show #показать последний коммит
git add . #добавить файлы в индекс 
git commit -m # добавить коммит 
git diff <commit1> <commit2> #сравнить изменения в коммитах
git diff <file> HEAD~1... #покать изменения в этом коммите
git diff --name-only HEAD~1 <commit1> #показать файл в котором были изменения
git checkout -- <file> #отменить изменения до добавление индекса подобие cmd+z в редакторе
git commit --amend #изменить последний коммит
git revert <commit1> #откатить к указанному коммиту
git reset --hard <commit1> #отменить удалить коммиты что ниже этого/этот оставить
git reset --hard #удалить все что добавлено в индекс и изменения которые не добавлены до HEAD
git reset --soft <commit1> #срезает до указанного коммита и добавляет в индекс
git reset --mixed HEAD <file> # возвращает коммиты в unstage
git commit -a -m "new commit" #-а добавляет все изменения которые вернули в один общий коммит
git init #создает репозиторий в папке
git clone <http://.../work> #клонирование облачного репозитория себе на комп, создается новая папка work.
git push #отправить изменения на github  только закомиченный 
git pull #скачать комиты с удаленного репозитория

#Change login to ssh.
#For example, a GitHub project like Git will have an HTTPS URL:
https://github.com/<Username>/<Project>.git
#And the SSH one:
git@github.com:<Username>/<Project>.git
#You can do:
git remote set-url origin git@github.com:<Username>/<Project>.git
#to change the URL.
git checkout -b dev #создать новую ветку и переключиться на нее
git checkout master #переключиться в ветку мастер 
git push -u origin dev #отправляет всю ветку на сервер хранения
git branch -m dev develop #изменяет имя ветки
git remote #показывает список удаленных серверов (первый origin)
git remote -v #показать адреса серверов 
git branch -l #показать список всех веток которые есть в проекте
git branch -d develop #удалить ветку 
git push --delete origin dev #удалить ветку на удаленном репозитории origin
git diff master..develop #сравнить ветки 
git fetch #не сливает ветки но скачивает с удаленного репозитория 
git diff master..origin/master #сравниваем ветку мастер на локальном хосте и на удаленном
git pull #сливает ветку мастер на удаленном компе с веткой мастер на локальном компе
git merge develop #слияние ветки develop c веткой в которой находимся
git merge abort #отмена последнего автоматического мерджа, срабатывает при автоматических слияниях, где нет конфликтов 

#дополнительные фитчи гита
git blame src/<file>  #показывает кто и когда и в каких коммитах внес изменения в файл
git gc #приберается в большом репозитории, удаляет старое и архивирует 
git stash # добавить все изменения текущие в стэш, для дальйшего открытия и работы с ними без коммитов
git stash list #показать список стэшей 
git stash pop #последний стэш вливаем в unstages изменения для редактирования

#Правила хорошего тона при работе с гитом
#правильное именование веток: фича или билд
#Осмысленные коммиты
#Регулярность коммитов
#Делать git pull перед git push
#Использовать  git по назначению, не хранить фотки и др.
#придерживаться процесса и правил именования веток, которые приняты в команде

Настройка авторизации github по ssh ключу 
git config --global user.name "grader" #добавляем в настройки гита логин
git config --global user.email "grader.75@gmail.com" #добавляем в настройки гита логин
git remote add origin git@github.com:<Username>/<Project>.git #добавляем удаленный репозиторий на комп