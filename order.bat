rem ��������� ������������� � ������� ����������� ��������
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

rem ���������� ������ ����� ������������ ����� � arhives
for %%f in (*.zip,*.gz,*.tgz,*.rar) do move "%%f" "archives"

rem ISO-����� � � ������� ISO
move *.iso iso

rem ����� � � ������� video
for %%f in (*.avi,*.mov,*.mp4,*.mkv,*.3gp) do move "%%f" "video"

rem ������ (� �������� ��� MP3-�����)
move *.mp3 music

rem ��������� � ����

for %%f in (*.exe,*.msi,*.jar) do move "%%f" "programs"
move *.jpg photos

rem �����������
for %%f in (*.png,*.bmp,*.gif,*.tiff) do move "%%f" "images"

rem ���������
for %%f in (*.txt,*.doc,*.docx,*.xls,*.pptx,*.ppt,*.rtf,*.csv) do move "%%f" "docs"

for %%f in (*.pdf,*.djvu) do move "%%f" "books"

move *.html html

rem ������� �������-�����
del *.torrent