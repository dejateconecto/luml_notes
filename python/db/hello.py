import datetime
import sqlite3
import sys
import os
import csv

if "MSYSTEM" in os.environ and os.environ["MSYSTEM"] == "MINGW32":
    import posixpath as ospath
else:
    import os.path as ospath

print("Se presenta con pequeñas notas, paso a paso, lo que va realizando el programa")
print("Ejecutar desde cmd con python hello.py my_file (parametro)")

if __name__ == "__main__":
    fn_in = sys.argv[1]
    print ("argument: " + fn_in)

    dir_out = ospath.dirname(fn_in)
    print ("path: " + dir_out)

    bn_in = ospath.splitext(ospath.basename(fn_in))[0]
    print ("basename: " + bn_in)

    fn_out = ospath.join(dir_out, "{}.db".format(bn_in))
    print ("database name: " + fn_out)

    if ospath.exists(fn_out):
        os.remove(fn_out)
    
    conn = sqlite3.connect(fn_out)
    cursor = conn.cursor()

    query = """CREATE TABLE my_table (
	  NAME TEXT,
	  GENDER TEXT,
	  CITY TEXT,
	  BIRTHDAY DATE
	  --,PRIMARY KEY (NUMREP)
	)"""
    cursor.execute(query)
    print("excuting: " + query)

    query = "INSERT INTO my_table VALUES (?, ?, ?, ?)"
    print("excuting: " + query)
    print("leyendo el archivo, linea por linea...")
    with open(fn_in, "Ur") as fo:
        for line in fo.readlines():
        	splited = line.split(',')
        	print(splited)
        	cursor.execute(query, (splited[0], splited[1], splited[2], splited[3]))
    conn.commit()
    cursor.close()
    conn.close()