# shari · strumenti per il sushi

Due pagine gratuite di [dal punto web](https://www.dalpuntoweb.it/link/), in italiano, che girano tutte nel browser.

| Progetto | Online | Cosa fa |
|---|---|---|
| [`riso-sushi/`](riso-sushi/) | [dalpuntoweb.it/riso-sushi](https://www.dalpuntoweb.it/riso-sushi/) | Calcolatore del riso per sushi: da grammi, tazze, persone o pezzi ad aceto di riso, zucchero, sale e acqua, con tabella di marcia e ricetta passo passo. |
| [`sushi-counter/`](sushi-counter/) | [dalpuntoweb.it/sushi-counter](https://www.dalpuntoweb.it/sushi-counter/) | Contatore per l'all you can eat, da soli o in sfida al tavolo: stanza con codice, classifica dal vivo, podio e immagine per le storie. |

## Riso per sushi

- Dosi ogni 100 g di riso crudo: 20 ml di aceto di riso, 8 g di zucchero, 2 g di sale (più dolce 20/13/2,5, più sapido 22/4/3; condimento pronto 20 ml).
- Acqua 1,3 volte il peso del riso in pentola, 1,2 nel cuociriso; resa 2,2 volte (300 g crudi → 660 g).
- Fonti citate nella pagina: Just One Cookbook, Mizkan, Kikkoman Italia, Una Giapponese in Cucina, Delish Kitchen, Altroconsumo, Food Standards Scotland.

## Sushi counter

- Le stanze passano dal broker MQTT pubblico `broker.emqx.io` ([mqtt.js](https://github.com/mqttjs/MQTT.js) 5.13.0).
- Il codice della stanza (6 caratteri su 32, oltre 1 miliardo di combinazioni) genera con PBKDF2 sia l'argomento sia la chiave AES-GCM: tutti i messaggi viaggiano cifrati.
- Le foto del profilo (192 × 192 px) non vengono mai salvate sul broker: passano solo tra i telefoni collegati e si cancellano a fine sfida.
- Opzione «Menu completo» con 20 piatti giapponesi e cinesi; resa con rientro finché non hanno finito tutti.

## File

Ogni progetto è una pagina sola (`index.html` con CSS e JS dentro), più `fonts/` (Cormorant Garamond e Figtree, sottoinsieme latino), `img/` e `og.png`. `tools/og.html` disegna l'immagine di anteprima; `sushi-counter/tools/genera.sh` è lo script usato per generare le illustrazioni.

Le immagini sono generate con l'intelligenza artificiale (stile descritto in `brand.md`).

## Licenza

Codice sotto licenza [MIT](LICENSE). I font Cormorant Garamond e Figtree sono distribuiti con la SIL Open Font License 1.1.

Un progetto di Luigi D'Ambra.
