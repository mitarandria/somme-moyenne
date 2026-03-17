<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="POUR i ALLANT_DE 0 A s"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" maxBoucle="500000" nbDecimales="8" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#a" algoitem="a EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#s" algoitem="s EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#max" algoitem="max EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#position_max" algoitem="position_max EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#min" algoitem="min EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#position_min" algoitem="position_min EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#z" algoitem="z EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="3#n#0#pasliste" algoitem="AFFICHER n"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="5#s#n-1#pasliste" algoitem="s PREND_LA_VALEUR n-1"/>
        <item code="12#i#0#s" algoitem="POUR i ALLANT_DE 0 A s">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#a#i" algoitem="LIRE a[i]"/>
            <item code="5#somme#somme+a[i]#pasliste" algoitem="somme PREND_LA_VALEUR somme+a[i]"/>
            <item code="5#moyenne#somme/n#pasliste" algoitem="moyenne PREND_LA_VALEUR somme/n"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#somme=#0" algoitem="AFFICHER &quot;somme=&quot;"/>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
        <item code="4#moyenne=#0" algoitem="AFFICHER &quot;moyenne=&quot;"/>
        <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
        <item code="5#max#a[0]#pasliste" algoitem="max PREND_LA_VALEUR a[0]"/>
        <item code="12#i#1#s" algoitem="POUR i ALLANT_DE 1 A s">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#a[i]>max" algoitem="SI (a[i]>max) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#max#a[i]#pasliste" algoitem="max PREND_LA_VALEUR a[i]"/>
                <item code="5#position_max#i#pasliste" algoitem="position_max PREND_LA_VALEUR i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#max=#0" algoitem="AFFICHER &quot;max=&quot;"/>
        <item code="3#max#1#pasliste" algoitem="AFFICHER max"/>
        <item code="4#position max=#0" algoitem="AFFICHER &quot;position max=&quot;"/>
        <item code="3#position_max#1#pasliste" algoitem="AFFICHER position_max"/>
        <item code="5#min#a[s]#pasliste" algoitem="min PREND_LA_VALEUR a[s]"/>
        <item code="12#i#1#s-1" algoitem="POUR i ALLANT_DE 1 A s-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#a[i]&lt;min" algoitem="SI (a[i]&lt;min) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#min#a[i]#pasliste" algoitem="min PREND_LA_VALEUR a[i]"/>
                <item code="5#position_min#i#pasliste" algoitem="position_min PREND_LA_VALEUR i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#min=#0" algoitem="AFFICHER &quot;min=&quot;"/>
        <item code="3#min#1#pasliste" algoitem="AFFICHER min"/>
        <item code="4#position min=#0" algoitem="AFFICHER &quot;position min=&quot;"/>
        <item code="3#position_min#1#pasliste" algoitem="AFFICHER position_min"/>
        <item code="12#i#0#s" algoitem="POUR i ALLANT_DE 0 A s">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#a[i]>a[i+1]" algoitem="SI (a[i]>a[i+1]) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#z#a[i]#pasliste" algoitem="z PREND_LA_VALEUR a[i]"/>
                <item code="5#a#a[i+1]#i" algoitem="a[i] PREND_LA_VALEUR a[i+1]"/>
                <item code="5#a#z#i+1" algoitem="a[i+1] PREND_LA_VALEUR z"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="4#ordre croissante#0" algoitem="AFFICHER &quot;ordre croissante&quot;"/>
            <item code="3#a#1#i" algoitem="AFFICHER a[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#i#0#s" algoitem="POUR i ALLANT_DE 0 A s">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#a[i]&lt;a[i+1]" algoitem="SI (a[i]&lt;a[i+1]) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#z#a[i]#pasliste" algoitem="z PREND_LA_VALEUR a[i]"/>
                <item code="5#a#a[i+1]#i" algoitem="a[i] PREND_LA_VALEUR a[i+1]"/>
                <item code="5#a#z#i+1" algoitem="a[i+1] PREND_LA_VALEUR z"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="3#a#0#i" algoitem="AFFICHER a[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
