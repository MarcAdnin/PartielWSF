# Partiel Marc Adnin P2021 Devops

## Repository Github

https://github.com/MarcAdnin/PartielWSF

## Applications Heroku

**Development**
https://dashboard.heroku.com/apps/partiel-development

**Staging**
https://dashboard.heroku.com/apps/partiel-staging

**Production**
https://dashboard.heroku.com/apps/partiel-production

## Améliorations possibles
- Protéger la branche development du Github
- Ne JAMAIS mettre en production un vendredi (la preuve, la stagiaire il a tout cassé et je vais être en retard pour l'apéro)
- Ne pas confier au stagiaire la tâche de promote les applications Heroku vers staging et encore moins vers production, il faut vérifier que tout fonctionne bien avant.

- En résumé : On push l'appli sur la branche développement de Github, qui se synchronise donc avec l'appli développement sur Heroku, on fait vérifier le tout par quelqu'un de qualifié pour passer en staging, et on ne passe pas en production le vendredi.
