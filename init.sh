#!/bin/bash

echo hello world!!!
git status #посмотреть состояние 
git log #показать историю коммитов 
git show #показать последний коммит
git add . #добавить файлы в изменения 
git commit -m # добавить коммит 
git diff <commit1> <commit2> #сравнить изменения в коммитах
git diff <file> HEAD~1... #покать изменения в этом коммите
git diff --name-only HEAD~1 <commit1> #показать файл в котором были изменения

git commit --amend #изменить последний коммит
