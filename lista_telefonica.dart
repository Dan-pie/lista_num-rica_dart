
import 'dart:io';

void main() {
    int? esc = 6;
    var usernames = [];
    var numbers = [];
    while (esc != 0){
        print('----|Menu|----');
        print('1 - Cadastrar');
        print('2 - Listar');
        print('3 - Excluir');
        print('0 - Sair');
        print('--------------');
        print('escolha uma opção:');
        esc = int.parse(stdin.readLineSync()!);

        if (esc == 1){
            print('--------------');
            print('Digite um nome:');
            String? nome = stdin.readLineSync();
            print('Digite um número:');
            String numero = stdin.readLineSync()!;

            while (numero.length != 11){
                print('Digite um número válido (11 digitos):');
                numero = stdin.readLineSync()!;
            }
            usernames.add(nome);
            numbers.add(numero);
        }
        else if (esc == 2){
            

            if (usernames.length > 1){
                print('--------------');
                print('Lista telefonica');
                print('--------------');
                for(int c = 0; c <= usernames.length - 1; c++){
                    print('${usernames[c]} : ${numbers[c]}');
                }
            }
            else if (usernames.length == 1){
                print('--------------');
                print('Lista telefonica');
                print('--------------');
                print('${usernames[0]} : ${numbers[0]}');
            }
            else{
                print('--------------');
                print('Lista telefonica vazia');
            }
        }
        else if (esc == 3){
            print('--------------');
            print('Lista telefonica');
            print('--------------');
            for(int c = 0; c <= usernames.length - 1; c++){
                    print('${c+1} - ${usernames[c]} : ${numbers[c]}');
                }
                print('--------------');
                print('Digite qual você deseja excluir: ');
                int exclude = int.parse(stdin.readLineSync()!);
                while (usernames.length < exclude || 1 > exclude){
                    print('opção inválida:');
                    exclude = int.parse(stdin.readLineSync()!);
                }
                usernames.remove(usernames[exclude-1]);
                numbers.remove(numbers[exclude-1]);
        }
        else if (esc == 0){
            print('Até mais!!!');
            break;
        }
        else{
            print('--------------');
            print('opção inválida');
            
        }
    }
}