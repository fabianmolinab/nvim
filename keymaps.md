## Comandos por defecto de nvim

H => Moverse hacia la parte superior de la pantalla

M => Moverse hacia el centro de la pantalla

L => Moverse hacia la parte inferio de la pantalla

w => Hacia el inicio de la siguiente palabra

W => Salta el inicio de la siguiente palabra(con puntuación)

e => Salta hacia el final de la palabra

E => Salta hacia el final de la palabra(con puntuación)

b => regresar al inicio de la palabra

B => regresar al inicio de la palabra(con puntuación)

0 => salta al inicio de la linea

$ => salta al final de la linea

gg => salta hacia la primera linea del documento

G => ir a la ultima linea del documento

Ctrl + e => mover la pantalla hacia abajo una linea

Ctrl + y => mover la pantalla una linea arriba

Ctrl + b => retroceder una pantalla

Ctrl + f => avanzar una pantalla

Ctrl + d => cursor a media pantalla

Ctrl + u => retroceder cursor media pantalla

## Modo Insertar

I => insertar al comienzo de la linea

a => despues del cursor

A => insertar al final de la linea

o => insertar una nueva linea por debajo

O => insetar una nueva linea encima de la linea actual

## Modo Editar

r => remplazar

r - reemplazar un carácter

R - reemplazar más de un carácter, hasta que se presione ESC.

J - juntar siguiente línea con la actual

gJ - une la línea de abajo a la actual sin espacio entre ellas

gwip - párrafo de reflujo

g~ - cambiar caso a movimiento

gu - cambiar a minúsculas hasta movimiento

gU - cambiar a mayúsculas hasta el movimiento

cc - cambiar (reemplazar) toda la línea

ciw - cambiar (reemplazar) palabra completa

cw or ce - cambiar (reemplazar) una palabra

s - eliminar carácter y reemplazar texto

S - eliminar línea y reemplazar texto (igual que el comando cc)

xp - transponer dos letras (suprimir y pegar)

u - deshacer

### Atajos personalizados

**jj** => Salir del modo insert

**K** => Mostrar Documentación
**<br>leader + le** => Mostrar errores
**<br>leader + er** => Mostrar errores en menú

**f** => Busqueda de palabra dentro del archivo x2
**<br>Tab** => Siguiente buffer
**<br>shift + Tab** => Buffer anterior
**<br>leader + t** => Nuevo archivo o buffer
**<br>control + l** => cambiar pestaña activa a la derecha
**<br>control + h** => cambiar pestaña activa a la izquierda

### Archivos de buscador Tree

**leader + nt** => Abre barra del busqueda de archivos

**leader + nc** => Cierra barra de busqueda

a => Crear archivo nuevo

r => Renombrar Archivo

d => Borrar Archivo

c => Copiar Archivo

x => Cortar Archivo

p => Pegar Archivo

q => Cerrar Tree

f => Filtrar archivos

F => Cancelar filtrado

### Archivos y pestañas

**leader + w** => Guardado de archivos
<br>**leader + q** => Cerrar archivos
<br>**leader + Q** => Cerrar archivos sin guardar
<br>**leader + qq** => Cerrar pestaña actual

**leader + vs** => nuevo split de la pantalla actual en vertical
<br>**leader + sp** => nuevo split de la pantalla actual en horizontal

### Busqueda

/ => Busqueda de palabras o frases
<br>// => Limpiar los resultado de busqueda

**leader + f** => Buscar archvos
**<br>leader + a** => Buscar palabras
**<br>leader + ag** => Buscar archivos de git
**<br>leader + ls** => Lista de commits
**<br>leader + b** => Lista de buffers
**<br>leader + td** => Lista de TODOS Comments

### git

**:g** => Acceder a los cambios del repositorio
**<br>:g + [codigoGit]** => ejecutar cualquier commando en git

### Comentarios (NERD Commenter)

**[selección] leader + cc** => Comentar lineas enteras
**<br>[selección] leader + ci** => Comentar lineas de manera individual
**<br>[selección] leader + cs** => Comentar lineas en grupo
**<br>[selección] leader + cu** => Descomentar

### Terminal

**control + t** => Abir terminal
