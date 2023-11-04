#include <iostream>
using namespace std;
void triselection(int liste[], int taille) {
    for (int i = 0; i < taille - 1; i++) {
        int min = i;
        for (int j = i + 1; j < taille; j++) {
            if (liste[j] < liste[min]) {
                min = j;
            }
        }
        swap(liste[i], liste[min]);
    }
}

int main() {
    int liste[] = {5, 2, 9, 3, 8, 6};
    int taille = sizeof(liste) / sizeof(liste[0]);
    triselection(liste, taille);

    cout << "Tableau trie avec tri par selection : ";
    for (int i = 0; i < taille; i++) {
        cout << liste[i] << " ";
    }

    return 0;
}
