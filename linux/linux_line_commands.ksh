while true; do now=$(date); echo '#########################################################       D o  n o t  p r e s s  a n y  k e y   ' $now ' #######################################################'; sleep 20; done;




 while true; do echo '#######################################################################       D o  n o t  p r e s s  a n y  k e y   ' $LC_TIME ' #####################################################################'; sleep 2; done;

 while true;  do echo 'hola mundo'; done; sleep 10m;

cp         #copy

mv         #corta y pega

ls         #muestra elementos contenidos

ls -l      #muestra detalles de cada uno de los elementos contenidos

ls | wc -l # cuenta todos los elementos contenidos

ls -1t     #ordena por fecha descendente
ls -1tr     #ordena por fecha ascendente

ls -l *zip*
	   #busqueda por string contenido en nombre "zip"

crear      #limpia la pantalla

tail -f 100
	   #muestra ultimas 10 lineas del archivo, a menos que se indique otro numero especifico ( en ese caso 100)
	   #p.ej.  tail -f  MX151111.SRQ | grep 977 # muestra las lineas contenidas en las ultimas 10 que tengan el string "977" del archivo MX151111.SRQ
	   #       tail -20  MX151111.SRQ | grep 7  # muestra las lineas contenidas en las ultimas 20 que tengan el string "7" del archivo MX151111.SRQ

tail -fn 200 #muestra 200 filas y si el archivo crece actualiza

head 20    #muestra las primeras 20 lineas del archivo

find [dir] [str] 
	   # busqueda en un directorio, de un directorio o archivo del usuario fort [-user] find /lana_p/ftp/fort/MX/import/luml -user fort -name "*SRQ*" # busca alrchivos que contengan en su nombre [-name] "SRQ" dentro del directorio especificado
	   #find / -name "[0-9]*"     (todo lo que empieze con un dígito)
           #find / -name "[Mm]*"      (todo lo que empieze con un la letra M o m)
           #find / -name "[a-m]*.txt" (todo lo que empieze entre a y m y termine en ".txt")

more [file]#muestra las primeras lineas del archivo especificado y permite ir revisando linea por linea presionando "space" o "enter"

grep -lir "" 
           #grep -lir 00328708 /lana_p/ftp/fort/MX/import/luml  # busca el registro 00328708 en el directorio especificado y muestra los archivos en los cuales se encuentra
	   #El parámetro -l le indica que imprima los nombres de archivos en los que se 
           #encuentre el texto solicitado. El parámetro -i, que ignore las mayúsculas y 
           #minúsculas. El parámetro -r, que busque en forma recursiva dentro de la ruta indicada.
           #grep -lir "usemos linux" *.pdf para reducir busqueda a un solo tipo de archivos en este caso PDF's, ejecutar posicionados en el directorio donde se realizará la busqueda
           # OK  grep 00169517 MX151113.CSRPC  #busqueda de string dentro de archivo
           #  grep -c 00169517 MX151113.CSRPC  #numero de veces que el string aparece dentro del archivo
	   #  grep '"MX"~"00169517"' MX151113.CSRPC  #las comillas simple son como una variable de escape


rmdir [dir]#borra el directorio vacio especificado

rm -Rf [dir]
	   #borra los directorios y archivos recursivamente, es decir borra el directorio especificado, así como todo lo que se encuentra contenido en él

ftp host    # después pide user y pass
	quit     # salir del modo ftp
        put file # enviar un archivo al directio ftp default del ftp al que se accedió
        get file # trae el archivo desde el ftp al que se accedio

scp MX160203.CSR fortftp@ryelxecconqdb2:/ftp/fort/MX/import #to FTP files

touch /path/to/file #for an empty file
vi file    # editar shif + i    "se pone el cursor listo para editar
           # [esc|shif|ctrl] el cursor se pone hasta abajo de la sigm manera " : " en espera de que se ingrese instrucción
           # :q!   "sale del archivo ignorando los cambios"   quit enfatito !!!!
           # :wq   "salva los cambios y sale del archivo"  quit
           # :w    "guarda los cambios"  write 
vi myFile  # el archivo myFile no existe, pero lo creo y abro la consola de edición.

bash  #cambia la consola a modo bash

histoy # muestra el historial de comandos ejecutados por el usuario con "-c" (clear) borra el historial

ps -aux #muestra todos los procesos que se encuentran vivos
netstat #muestra las conexiones vivas del host en el que uno se encuentra

unzip # pro, para varios archivos: 
	for f in *.zip; do unzip "$f"; done
vi    :%s/FindMe/ReplaceME/g
	#replace with vi for ex. replace UNIX for Linux using in vi the following :%s/UNIX/Linux/g

###### M u c h o   m a s   #######################
#   http://www.guia-ubuntu.com/?title=Comandos   #
##################################################
00038162
125760
