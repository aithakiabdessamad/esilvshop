# Esilv Shop - Application E-Commerce Flutter

Application mobile de e-commerce développée en Flutter dans le cadre du TP / examen évalué "Panier Articles".

## Fonctionnalites

1. **Catalogue Produits** :
   - Récupération dynamique des produits depuis l'API externe FakeStoreAPI (`https://fakestoreapi.com/products`).
   - Affichage de la liste avec image, titre, prix converti en euros et bouton d'ajout rapide au panier.
   - Compteur d'articles en temps réel dans l'icône du panier de l'AppBar.

2. **Detail Produit** :
   - Vue détaillée d'un produit sélectionné.
   - Affichage de la note au format dynamique (ex: `3.9/5`).
   - Titre, prix, description complète et catégorie.
   - Boutons "Commander" et "Ajouter" pour intégrer l'article au panier.

3. **Gestion du Panier** :
   - Affichage du montant total dynamique du panier (`priceInEuros`).
   - Gestion des articles en double (possibilité d'ajouter plusieurs fois le même article).
   - Suppression ciblée d'un article spécifique sans supprimer les autres exemplaires identiques (`removeAt`).
   - État vide géré proprement.

4. **Écran de Paiement (Bonus)** :
   - Accessible depuis le bouton "Commander" de la page de détail.
   - Sélection du moyen de paiement (VISA, Mastercard, AMEX) avec mise en surbrillance interactive.
   - Champs de saisie sécurisés pour le numéro de carte, le nom du titulaire, la date d'expiration et le CVV accompagnés d'icônes adaptées.
   - Bouton de confirmation de paiement.

5. **Architecture Technique** :
   - **Framework UI** : Flutter (Material Design 3).
   - **Navigation** : `go_router` (routes imbriquées `/`, `/product/:idProduct`, `/cart`, `/payment`).
   - **Gestion d'état** : Riverpod (`Notifier`, `NotifierProvider`, `WidgetRef`, `ref.watch`, `ref.read`).
   - **Réseau & JSON** : Package `http` et sérialisation manuelle `fromMap` / `toMap` / `fromJson` / `toJson`.

## Commandes pour Lancer le Projet

1. Installer les dépendances :
   ```bash
   flutter pub get
   ```

2. Lancer l'application sur un appareil ou un émulateur :
   ```bash
   flutter run -d emulator-5554
   ```
