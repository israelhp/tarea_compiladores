#include <iostream> // Biblioteca unilizado para operaciones de entrada y salida 

using namespace std; // Espacio de nombres que permite utilizar cout y cin sin utilizar std:: antes  Ejemplo: std::cout<<"Hola"  => colocnado la siguiente linea cout<< "Hola"

int main(){ // Funcion principal del programa indicando que retorna un entero. 
	char primer_mensaje[15] = "Primer Mensaje";  // Se crea un arreglo de tipo char de 15 posiciones y se asigna el mensaje
	cout<<primer_mensaje<<endl; // Muestra en consola el mensaje que contiene la variable primer_mensaje
	
	char segundo_mensaje[16] = "Segundo Mensaje"; // Se crea un arreglo de tipo char de 15 posiciones y se asigna el mensaje 
	cout<<segundo_mensaje<<endl; // Muestra en consola el mensaje que contiene la variable segundo_mensaje
	return 1; // retorna un entero 
}
