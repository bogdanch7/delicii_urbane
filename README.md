# Delicii Urbane – Website restaurant

Acest proiect reprezintă un site web complet funcțional pentru un restaurant fictiv numit **Delicii Urbane**, realizat în cadrul disciplinei *Tehnologii Web*. Platforma permite atât vizualizarea meniului și informațiilor utile de către clienți, cât și gestionarea rezervărilor printr-un panou de administrare protejat.

---

## Funcționalități

- Pagina **Acasă** cu imagine de fundal, carusel de recenzii și secțiune dinamică *Happy Hours* (JS)
- Pagina **Meniu** cu categorii și preparate ilustrate
- Pagina **Rezervări** cu formular validat (JS) și salvare în baza de date (PHP + MySQL)
- Pagina **Contact** cu formular funcțional și hartă Google Maps
- Panou **Admin Rezervări** protejat prin login (PHP Sessions) cu opțiune de ștergere rezervări
- Sistem de autentificare (login/logout) cu parolă criptată
- Stocarea datelor într-o bază MySQL (`delicii_urbane`)

---

## Structura fișierelor

- `index.html` – pagina principală (load dinamic)
- `acasa.html`, `meniu.html`, `contact.html`, `rezervari.html` – secțiuni HTML individuale
- `login.php`, `logout.php`, `admin_rezervari.php` – funcționalități admin
- `scrolltop.js`, `happy_hours.js` – interactivitate și carusel JS
- `rezervare.php`, `trimitere_contact.php`, `sterge_rezervare.php` – procesare formulare
- `delicii_urbane.sql` – baza de date (includere rezervări)

---

## Cerințe & rulare locală

1. Instalează **XAMPP**
2. Clonează repository-ul sau copiază fișierele în `htdocs/`
3. Importează fișierul `delicii_urbane.sql` în **phpMyAdmin**
4. Accesează site-ul la adresa: `http://localhost/delicii_urbane/index.html`

---

## Login Admin

- **URL:** `http://localhost/delicii_urbane/login.php`
- **User:** `admin`  
- **Parolă:** *(stabilită în cod, criptată cu `password_hash`)*

---

## Capturi
![image](https://github.com/user-attachments/assets/97d2e5eb-f9d7-4c9e-ad92-572bd1217b94)
![image](https://github.com/user-attachments/assets/d40b35f0-8420-481f-95aa-55fcdb75e55e)
![image](https://github.com/user-attachments/assets/6a81b718-56b1-4fea-a92f-b0b444adad68)
![image](https://github.com/user-attachments/assets/ed72b711-63f0-4af8-ab06-00c9d572512f)
![image](https://github.com/user-attachments/assets/de544e58-8763-4c57-8743-564a7409af53)
![image](https://github.com/user-attachments/assets/9ec39b4a-93fa-4064-bc47-9fb733478da2)

---

## Realizat de

Proiect realizat de [bogdanch7](https://github.com/bogdanch7)  
An universitar 2024–2025

---

## Licență

Acest proiect este creat pentru uz educațional.
