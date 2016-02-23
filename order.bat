rem Проверяем существование и создаем необходимые каталоги
if not exist "archives" md "archives"
if not exist "iso" md "iso"
if not exist "music" md "music"
if not exist "video" md "video"
if not exist "programs" md "programs"
if not exist "photos" md "photos"
if not exist "images" md "images"
if not exist "docs" md "docs"
if not exist "html" md "html"
if not exist "books" md "books"

rem Перемещаем архивы часто используемых типов в arhives
for %%f in (*.zip,*.gz,*.tgz,*.rar) do move "%%f" "archives"

rem ISO-файлы — в каталог ISO
move *.iso iso

rem Видео — в каталог video
for %%f in (*.avi,*.mov,*.mp4,*.mkv,*.3gp) do move "%%f" "video"

rem Музыка (в основном это MP3-файлы)
move *.mp3 music

rem Программы и фото

for %%f in (*.exe,*.msi,*.jar) do move "%%f" "programs"
move *.jpg photos

rem Изображения
for %%f in (*.png,*.bmp,*.gif,*.tiff) do move "%%f" "images"

rem Документы
for %%f in (*.txt,*.doc,*.docx,*.xls,*.pptx,*.ppt,*.rtf,*.csv) do move "%%f" "docs"

for %%f in (*.pdf,*.djvu) do move "%%f" "books"

move *.html html

rem Удаляем торрент-файлы
del *.torrent