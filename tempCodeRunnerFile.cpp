// #include <iostream>
// using namespace std;
// int main() 
// {
//     int n, x;
//     cout<<"Enter the number of rows: ";
//     cin>>n;
//     cout<<"Enter the number to be made a pattern of (the number needs to be <=999): ";
//     cin>>x;
//     if(x<=99){
//     for(int i = 1; i <= n; i++)
//     {
//         for(int j = 0; j < i-1; j++)
//         cout<<" ";
//             for(int j = 1; j<=n-i+1; j++)
//               if(x>=10&&x<=99){cout<<x;}
//               else{cout<<x<<" ";}
//             cout<<endl;
//     }
//     for(int i=2; i<=n; i++)
//     {
//         for(int j=1; j<n-i+1; j++)
//         cout<<" ";
//              for(int j=1; j<=i; j++)
//                if(x>=10&&x<=99){cout<<x;}
//                else{cout<<x<<" ";}
//              cout<<endl;
//     }
//     }
//     else if(x<=999){
//         for(int i=1; i<=n; i++){
//         for(int j=0; j<((2*i)-2); j++)
//         cout<<" ";
//         for (int j=1; j<n-i+2; j++)
//         cout<<x<<" ";
//         cout<<endl;
//     }
//     for (int i=2; i<=n; i++)
//     {
//         for (int j=0; j<((2*n-2)-(i-1)*2); j++)
//         cout<<" ";
//         for(int j=1; j<=i; j++)
//         cout<<x<<" ";
//         cout<<endl;
//     }
//     }
// }
#include <iostream>
using namespace std;

int main() {
    for(int i=0; i<9; i++) {
      
        for(int j=0; j<=i; j++) {
              if(j==8){
                cout<<'J';
            continue;}
            cout << char('A' + j);
             
        }
        for(int k=2*(10-i-2); k>=2; k--) {
            cout << " ";
        }
        for(int l=i; l>=0; l--) {
            if(l==8)
            continue;
            cout << char('A' + l);
        }
        cout << endl;
    }
    for(int i=7; i>=0; i--) {
        for(int j=0; j<=i; j++) {
            cout << char('A' + j);
        }
        for(int k=2*(8-i); k>=2; k--) {
            cout << " ";
        }
        for(int l=i; l>=0; l--) {
            cout << char('A' + l);
        }
        cout << endl;
    }
    return 0;
}