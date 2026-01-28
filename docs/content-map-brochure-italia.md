# CONTENT MAP — Brochure ITALIA (Eventi + B2B)

**Fonte unica**: `Brochure ITALIA.pdf` (22 pagine)
**Data creazione map**: 2026-01-28

---

## STRUTTURA SITO

```
/
├── index.html (HOME)
├── eventi/
│   ├── index.html (EVENTI - Landing)
│   ├── saletta-privata-tosinghi/
│   │   └── index.html (Pacchetti Silver/Gold/Platinum)
│   ├── evento-esterno/
│   │   ├── index.html (3 opzioni: Cool Box, Carretto, Vetrina)
│   │   ├── cool-box.html
│   │   ├── carretto.html
│   │   └── vetrina.html
│   ├── gelato-van/ (COMING SOON)
│   └── speciale-aziende/ (Custom events B2B)
└── b2b/
    ├── index.html (B2B Catalog)
    ├── gelato/
    ├── monoporzioni/
    ├── torte/
    ├── accessori/
    └── clienti/ (Trusted clients showcase)
```

---

## 1. HOME PAGE (index.html)

### Ordine sezioni (dall'alto verso il basso):

1. **HERO INTRO**
   - Logo Badiani
   - Titolo centrale: "Badiani events?" / "Esperienze Badiani?" / "Gelato su misura?" (DA DEFINIRE)
   - Note TODO già presente

2. **BADIANI LA STORIA** (sezione già esistente `buontalenti-story`)
   - Timeline 3 card: 1500 → 1960 → OGGI
   - Sfondo Firenze con opacity
   - Contenuto attuale va mantenuto

3. **BADIANI NEL MONDO** (sezione già esistente `heritage` + `global-presence`)
   - Stats: 1932, 30+ negozi, 100% qualità, 5 paesi
   - Mappa mondiale
   - Contenuto attuale va mantenuto

4. **VIDEO LABORATORIO**
   - Video Paolo produzione Buontalenti
   - TODO: "sostituire il video con Paolo in laboratorio produzione del Buontalenti"

5. **SCELTA ESPERIENZA** (già esistente `choice-section`)
   - **Titolo**: "Scegli l'esperienza che ti serve"
   - **2 box card cliccabili**:
     - **EVENTI**: "Feste private ed eventi su misura" / "Il tuo party personalizzato con Badiani"
     - **B2B**: "Soluzioni gelato per catering, hotel" (da definire categorie)

---

## 2. SEZIONE EVENTI (`eventi/index.html`)

### Landing Eventi — 2 tipologie principali + 2 EXTRA

**Layout**: Grid 2 colonne con card grandi e cliccabili (stile Il Barattolo)

#### Tipologie principali:
1. **SALETTA PRIVATA TOSINGHI** → link a `saletta-privata-tosinghi/`
2. **EVENTO ESTERNO** → link a `evento-esterno/`

#### EXTRA (sezioni separate in fondo):
3. **SPECIALE AZIENDE** → link a `speciale-aziende/`
4. **GELATO VAN** → badge COMING SOON

---

## 3. SALETTA PRIVATA TOSINGHI (`eventi/saletta-privata-tosinghi/index.html`)

### Hero
- **Titolo**: "Il tuo party nella nostra saletta privata"
- **Visual**: Foto grande saletta o video breve eventi passati

### Pacchetti (3 card selezionabili con hover/clic → espansione modale)

#### PACCHETTO SILVER
- **Prenotazione**: Minimo 10 giorni prima
- **Food** (tutto preparato da noi):
  - Pizzette
  - Tramezzini
  - Rustici
  - Panettone gastronomico (pesce/carne/vegetariano)
- **Drink** (1 a persona):
  - 2 cocktail alcolici (scelta cliente tra classici)
  - 1 cocktail analcolico
  - Prosecco
  - (Menù cocktail esposto su postazione beverage)
- **Durata**: Fino a 1h 30min
- **Prezzo**: €20,00/persona (IVA inclusa)

#### PACCHETTO GOLD
- **Prenotazione**: Minimo 10 giorni prima
- **Food**:
  - Panettone gastronomico (pesce/carne/vegetariano)
  - 5 tipi finger food (scelta da lista da concordare)
  - Monoporzioni dolci o coppetta Buontalenti
- **Drink** (1 a persona):
  - 2 cocktail alcolici
  - 1 cocktail analcolico
  - Franciacorta
- **Durata**: Fino a 2 ore
- **Prezzo**: €30,00/persona (IVA inclusa)

#### PACCHETTO PLATINUM
- **Prenotazione**: Minimo 14 giorni prima
- **Food**:
  - 7 tipi finger food (scelta da lista)
  - Possibilità gusto gelato dedicato (min 35 pax, prezzo da concordare)
  - Monoporzioni/dolci creati da cake designer a tema evento
- **Drink** (1 a persona):
  - Cocktail a tema con nome personalizzato
  - 1 cocktail analcolico
  - Champagne
- **Allestimento personalizzabile**
- **Durata**: Fino a 2 ore
- **Prezzo**: Da €40,00/persona (IVA inclusa, da valutare in base a preventivo cake designer)

### Termini e Condizioni (sezione separata sotto i pacchetti, font più piccolo)
- **Min/max persone**: 15-35 pax sedute
- **Extra drink**: Prezzo pieno, pagamento immediato
- **Acconto**: 50% al momento conferma
- **Saldo**: Entro giorno evento tramite bonifico
- **TODO**: (se si aggiungono/tolgono ospiti all'ultimo, come gestiamo? Pagamento a fine evento?)

### Footer sezione
- **Contatti**: eventi@badiani1932.com

---

## 4. EVENTO ESTERNO (`eventi/evento-esterno/index.html`)

### Landing — 3 opzioni con card + immagini

#### COOL BOX
- **Descrizione**: Pratico e versatile, ideale per eventi piccola scala
- **Capacità**: 40-90 pax (dipende da spazio stoccaggio), max 2 gusti
- **Costo Servizio**:
  - Prezzo gelato: da concordare in fase d'ordine
  - Costo servizio 1 operatore: da definire in base al tempo
  - Trasporto: da definire in base alla distanza
  - Personalizzazione: da concordare (min 14 giorni preavviso)
- **Allegare**: Foto esempio eventi passati

#### CARRETTO E BICICLETTA
- **Descrizione**: Ideale per eventi casual e all'aperto
- **Costo Servizio**:
  - 0-50 pax: €1.000,00 + 10% (€900)
  - 50-70 pax: €1.200,00 + 10%
  - 70-100 pax: €1.400,00 + 10% (€1500)
- **Include**: 2h servizio con 1 operatore
- **Extra time**: €100,00/h + IVA 10%
- **Trasporto**: Veicolo entro 100km €250,00 + IVA
- **Personalizzazione**: Min 14 giorni preavviso (da definire)
- **Allegare**: Foto esempio eventi passati

#### VETRINA GELATO
- **Descrizione**: Soluzione istituzionale, elegante, per eventi aziendali
- **Costo Servizio**: Identico a Carretto
  - 0-50 pax: €1.000,00 + 10% (€900)
  - 50-70 pax: €1.200,00 + 10%
  - 70-100 pax: €1.400,00 + 10% (€1500)
- **Include**: 2h servizio con 1 operatore
- **Extra time**: €100,00/h + IVA 10%
- **Trasporto**: €250,00 + IVA entro 100km
- **Personalizzazione**: Min 14 giorni preavviso (da definire)
- **Allegare**: Foto esempio eventi passati

### Termini e Condizioni Evento Esterno (footer)
- **Acconto**: 50% al momento conferma tramite bonifico
- **Saldo**: Entro giorno evento tramite bonifico
- **Preavviso**: Da definire

---

## 5. GELATO VAN (`eventi/gelato-van/index.html`)

**Status**: COMING SOON

- Aggiungere sezione con Gelato Van
- Badge/scritta "COMING SOON"
- Obiettivo: capire se c'è richiesta

---

## 6. SPECIALE AZIENDE (`eventi/speciale-aziende/index.html`)

**Posizione**: Al di sotto dei 3 pacchetti eventi esterni, sezione separata

### Titolo
"CREA IL TUO EVENTO AZIENDALE SU MISURA"

### Sottotitolo
"Crea un evento unico, pensato intorno al tuo brand"

### Descrizione
Ogni azienda ha un'identità diversa. Per questo realizziamo eventi personalizzati, studiati su misura in base alle tue esigenze, al contesto e al tipo di pubblico.

### Cosa possiamo personalizzare
- Tipologia di servizio gelato
- Selezione dei gusti (possibilità gusti personalizzati e/o su richiesta)
- Allestimento dell'evento
- Branding personalizzato
- Concept creativo in linea con il tuo brand

### Ideale per
- Eventi aziendali
- Inaugurazioni
- Attivazioni in store
- Conferenze e press day
- Eventi corporate e team building

### Allegare
Foto esempio eventi passati (es: Steve Madden e Menarini)

---

## 7. SEZIONE B2B (`b2b/index.html`)

### Layout diviso per categorie (card cliccabili, stile Il Barattolo)

#### 1. GELATO
Tutti i gusti di gelato con:
- Foto
- Dettagli: allergeni
- Formato acquistabile: carapina, vaschetta stretta, vaschetta larga
- Specifiche: quantità, misure, capienza

#### 2. MONOPORZIONI
Prodotti: stecchi, donut, biscotti, lingotti, tavolette, ghiaccioli, dopocena, mini millefoglie
- Ogni prodotto: minimo d'ordine + allergeni

#### 3. TORTE
Prodotti:
- Millefoglie Buontalenti
- Millefoglie BT Dolcevita
- Millefoglie BT Pistacchio
- Formati: SMALL e MEDIUM (da aggiungere peso)
- Allergeni

#### 4. ACCESSORI
- Coni
- Coppette

#### 5. PERSONALIZZAZIONE ACCESSORI
- Quantitativo minimo d'ordine (MOQ Products)

### Riferimenti documenti
- **Listino completo b2b**: con prodotti da inserire nel catalogo (prezzi accessori da rivedere con Paolo)
- **Allergeni**: Da aggiungere
- **FOTO**: Focus su vasche intere dall'alto + monoporzioni (produrre foto mancanti dopo aver mappato prodotti)

### Modulo contatti
- Sezione contatti
- Form per lasciare dati e richiedere info
- **Email B2B**: DA CREARE

---

## 8. CLIENTI B2B (`b2b/clienti/`)

**Sezione dedicata ai clienti già attivi con loghi**

- Crystal Cruises
- Frescobaldi
- Gilli
- Paszkowski
- International Carlton Beach Club
- Tiratissima
- Bagno Onda
- La Versiliana
- Cibreo

**Riferimento**: Listino completo clienti attivi b2b

---

## 9. MODULO DI CONTATTO (globale)

Creare modulo di contatto per:
- Eventi
- B2B

---

## TODO E PLACEHOLDER DA BROCHURE

### HOME
- [ ] Titolo hero: scegliere tra "Badiani events?" / "Esperienze Badiani?" / "Gelato su misura?"
- [ ] Video: sostituire con "Paolo in laboratorio produzione del Buontalenti"

### EVENTI
- [ ] Saletta: definire gestione ospiti extra/mancanti all'ultimo
- [ ] Evento esterno: definire preavviso minimo
- [ ] Email eventi: eventi@badiani1932.com (VERIFICARE SE ESISTE)

### B2B
- [ ] Definire categorie per slogan B2B
- [ ] Creare email B2B di riferimento
- [ ] Rivedere prezzi accessori con Paolo
- [ ] Aggiungere allergeni a tutti i prodotti
- [ ] Aggiungere peso torte SMALL e MEDIUM
- [ ] Produrre foto mancanti (vasche dall'alto + monoporzioni)
- [ ] Completare MOQ Products per personalizzazione

### GLOBAL
- [ ] Allegare foto eventi passati dove richiesto
- [ ] Verificare/ottenere loghi clienti B2B per sezione trust

---

## NOTE IMPLEMENTAZIONE

### Design Pattern (da inspiration/)
- Card cliccabili con hover (transform + shadow)
- Modal overlay fullscreen per dettagli
- Grid responsive: `grid-template-columns: repeat(auto-fit, minmax(380px, 1fr))`
- Transizioni smooth (0.4s cubic-bezier)
- Font SuperGrotesk A/B/C
- Colori Badiani (blue, pink, yellow, cyan, gray)

### Comportamento Card
- Hover: translateY(-8px) + scale(1.02) + shadow più profonda
- Button overlay che compare on hover
- Modal onClick per espandere dettagli pacchetti

### Responsive
- Mobile: stack verticale
- Desktop: grid 2-3 colonne
- Tablet/iPad: layout desktop forzato (come Il Barattolo)
