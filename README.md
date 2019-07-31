# Mangocoin Blockchain Explorer
Block explorer for Mangocoin CryptoNote based cryptocurrency.

#### Installation

1) It takes data from daemon Mangocoind. It should be accessible from the Internet. Run Mangocoind with open port as follows:
```bash
./Mangocoind --enable-cors="*" --enable-blockexplorer --rpc-bind-ip=0.0.0.0 --rpc-bind-port=11898
```
2) Just upload to your website and change 'api' variable in config.js to point to your daemon.

### Development
Donate: [MNG] MEpLh1LswBqihtwVB7VuYAQP7E39SYSwVQwFVyAjpGd6fdALVvZk74YTq5jTo4DNnTdkw2wcWCzJ2EtVJ9k9DhioBWQ7GGq

### Note
A lot of this code is from the great Karbovanets/Karbowanec-Blockchain-Explorer
