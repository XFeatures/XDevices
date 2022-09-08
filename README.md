# XDevices
Более удобное решение для scrcpy и sndcpy.

# Как установить?
Подключите свое Android устройство и включите `Откладку по USB`.  
Если не знаете как это сделать, посмотрите видео на YouTube.  

Скачайте и распакуйте архив в папку `C:\XFeatures\` (если её нет - создайте). 

Для трансляции экрана используйте `C:\XFeatures\XDevices\screen\scrcpy.cmd`.  
Для трансляции звука используйте `C:\XFeatures\XDevices\sound\sndcpy.cmd`.  

Запустите файл `add-to-context-menu.reg`, если хотите видеть выше перечисленные программы в контекстном меню Windows.  

# Функционал
- [ ] Установщик.
- [x] Трансляция экрана.
- [x] Трансляция звука.
- [ ] Трансляция экрана и звука одновременно.
- [ ] Скрытие консоли.
- [x] Запуск из контекстного меню.
- [ ] Установка APK файлов.

# Библиотеки (или то, что было исползовано в создании проекта)
[scrcpy](https://github.com/Genymobile/scrcpy)  
[sndcpy](https://github.com/rom1v/sndcpy)  
[vlc](https://www.videolan.org/)  
adb (from sndcpy, i fix this later)  
