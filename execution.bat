@echo off
REM Nettoyage du fichier result.txt précédent (si existe déjà)
echo. > result.txt

REM Capture de toutes les sorties dans result.txt
(
    REM Installation des dépendances nécessaires
    echo Installation des dépendances...
    pip install coverage

    REM Exécution des tests avec coverage
    echo Execution des tests avec coverage...
    python -m coverage run --source=bank -m unittest test_bank.py

    REM Génération automatique de requirements.txt
    echo Generation du fichier requirements.txt...
    pip freeze > requirements.txt

    REM Génération du rapport de couverture dans un fichier texte (format structuré)
    echo Generation du rapport coverage dans report.txt...
    python -m coverage report --omit="*test*" > report.txt

    REM Génération du rapport HTML
    echo Generation du rapport HTML...
    python -m coverage html

) > result.txt 2>&1

REM Fin de la capture dans result.txt
echo Tout le processus est termine. Vous pouvez consulter le fichier result.txt pour les détails.
