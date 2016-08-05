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

md5sum myFile #para saber el hash code de un archivo
###### M u c h o   m a s   #######################
#   http://www.guia-ubuntu.com/?title=Comandos   #
##################################################
00038162
125760
grep

Busca en la entrada, líneas que concuerden con el patrón dado. Cualquier meta-carácter con un significado especial debe ser protegido precediéndolo con una barra inclinada inversa (\ ). Algunos patrones de grep se encierran entre '..' (apóstrofos) para indicarle que no es un metacarácter del sehll. También existe en su versión zgrep para buscar en archivos comprimidos.

grep [opciones] 'patrón' archivos

grep "ejemplo" * listara las lineas que concuerden con la cadena ejemplo de "todos" los archivos del directorio actual.

grep -i hola pp.txt considera idénticas las mayúsculas y minúscula en la cadena de búsqueda hola. (hola=HOLA=Hola=etc.).

grep -ri "hola" ./ busca en los archivos del directorio actual y los subdirectorios la palabra hola.

grep -v hola pp.txt lista las líneas que no contengan la cadena hola del archivo pp.txt

grep -n hola pp.txt las líneas concordantes con la cadena hola del archivo pp.txt se mostrarán acompañadas del número de línea.

grep -w sobre pp.txt listara solamente aquellas líneas que contienen concordancias que forman palabras completas.

grep -A 2 hola pp.txt muestra 2 líneas de contexto después de las que concuerden con el patrón hola.

grep -B 2 hola pp.txt muestra 2 líneas de contexto antes de las que concuerden con el patrón hola.

grep -f patron.txt pp.txt obtiene el patrón de fichero patron.txt y listara líneas concordantes del archivo pp.txt

grep -s "ejemplo" * suprime los mensajes de error sobre ficheros que no existen o no se pueden leer.

grep [123] pp.txt listara las lineas que contengan los números 1, 2 o 3

grep '^L' pp.txt lista las lineas de pp.txt que comiencen la línea con el carácter L, el carácter ^ denota inicio de cadena.

grep 'h$' pp.txt lista las líneas de pp.txt que terminen en h, el carácter $ denota fin de cadena.

grep '\<pe' pp.txt muestra todas las líneas de pp.txt que contengan palabras que comiencen con la cadena pe.

grep '\>pe' pp.txt muestra todas las líneas de pp.txt que contengan palabras que finalicen con la cadena pe.

grep 'xy*' pp busca en pp una x seguida por la secuencia más larga de y.

grep '^[^#]' pp.txt muestra pp.txt, ocultando las líneas que empiezan por # y las líneas vaciás.

grep -o patron archivo muestra solo la parte de la linea que coincide con el patrón.

grep --color=always '\bing[[:space:]]' pp.txt | less -R la palabra ing seguida de un espacio sera coloriada y esta redirigida al comando less sin perder el color.

grep -Eio '([[:alnum:]_.-]+@[[:alnum:]_.-]+?\.[[:alpha:].]{2,6})' archivo.txt muestra solo las direcciones de e-mail (no todo la linea que la contiene), del archivo.txt.

cat uu.txt | grep -oE '.*111111' muestra desde el principio de la linea hasta la ocurrencia 111111

# cat uu.txt 
73272028636f6e7461696e657269642054455854205051111115259204b4559204e4f54204e554c4c2c736
cat uu.txt | grep -oE '.*111111'
73272028636f6e7461696e65726964205445585420505111111
Si quisiéramos mostrar desde la ocurrencia hasta el final de la linea sería.

# cat uu.txt | grep -oE '111111.*'
1111115259204b4559204e4f54204e554c4c2c736
Para mostrar el contenido de la línea entre dos ocurrencias por ejemplo entre 6169 y 111111 sería:

# cat uu.txt | grep -oE '6169.*111111'
61696e65726964205445585420505111111
En caso que quisiéramos mostrar el final de la linea excluyendo la ocurrencia sería:

# cat uu.txt | awk -F111111 '{print $NF}'
5259204b4559204e4f54204e554c4c2c736
