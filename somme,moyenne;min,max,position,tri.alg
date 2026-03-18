<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER a[i]" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
        <item algoitem="moyenne EST_DU_TYPE NOMBRE" code="1#NOMBRE#moyenne"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="a EST_DU_TYPE LISTE" code="1#LISTE#a"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
        <item algoitem="position_max EST_DU_TYPE NOMBRE" code="1#NOMBRE#position_max"/>
        <item algoitem="min EST_DU_TYPE NOMBRE" code="1#NOMBRE#min"/>
        <item algoitem="position_min EST_DU_TYPE NOMBRE" code="1#NOMBRE#position_min"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="z EST_DU_TYPE NOMBRE" code="1#NOMBRE#z"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER n" code="3#n#0#pasliste"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="somme PREND_LA_VALEUR 0" code="5#somme#0#pasliste"/>
        <item algoitem="s PREND_LA_VALEUR n-1" code="5#s#n-1#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A s" code="12#i#0#s">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE a[i]" code="2#a#i"/>
            <item algoitem="somme PREND_LA_VALEUR somme+a[i]" code="5#somme#somme+a[i]#pasliste"/>
            <item algoitem="moyenne PREND_LA_VALEUR somme/n" code="5#moyenne#somme/n#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;somme=&quot;" code="4#somme=#0"/>
        <item algoitem="AFFICHER somme" code="3#somme#1#pasliste"/>
        <item algoitem="AFFICHER &quot;moyenne=&quot;" code="4#moyenne=#0"/>
        <item algoitem="AFFICHER moyenne" code="3#moyenne#1#pasliste"/>
        <item algoitem="max PREND_LA_VALEUR a[0]" code="5#max#a[0]#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 1 A s" code="12#i#1#s">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (a[i]>max) ALORS" code="6#a[i]>max">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR a[i]" code="5#max#a[i]#pasliste"/>
                <item algoitem="position_max PREND_LA_VALEUR i" code="5#position_max#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;max=&quot;" code="4#max=#0"/>
        <item algoitem="AFFICHER max" code="3#max#1#pasliste"/>
        <item algoitem="AFFICHER &quot;position max=&quot;" code="4#position max=#0"/>
        <item algoitem="AFFICHER position_max" code="3#position_max#1#pasliste"/>
        <item algoitem="min PREND_LA_VALEUR a[s]" code="5#min#a[s]#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 1 A s-1" code="12#i#1#s-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (a[i]&lt;min) ALORS" code="6#a[i]&lt;min">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="min PREND_LA_VALEUR a[i]" code="5#min#a[i]#pasliste"/>
                <item algoitem="position_min PREND_LA_VALEUR i" code="5#position_min#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;min=&quot;" code="4#min=#0"/>
        <item algoitem="AFFICHER min" code="3#min#1#pasliste"/>
        <item algoitem="AFFICHER &quot;position min=&quot;" code="4#position min=#0"/>
        <item algoitem="AFFICHER position_min" code="3#position_min#1#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-2" code="12#i#0#n-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR j ALLANT_DE i+1 A s" code="12#j#i+1#s">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (a[i]>a[j]) ALORS" code="6#a[i]>a[j]">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="z PREND_LA_VALEUR a[i]" code="5#z#a[i]#pasliste"/>
                    <item algoitem="a[i] PREND_LA_VALEUR a[j]" code="5#a#a[j]#i"/>
                    <item algoitem="a[j] PREND_LA_VALEUR z" code="5#a#z#j"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A s" code="12#i#0#s">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;ordre croissante:&quot;" code="4#ordre croissante:#0"/>
            <item algoitem="AFFICHER a[i]" code="3#a#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A n-2" code="12#i#0#n-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR j ALLANT_DE i+1 A s" code="12#j#i+1#s">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (a[i]&lt;a[j]) ALORS" code="6#a[i]&lt;a[j]">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="z PREND_LA_VALEUR a[i]" code="5#z#a[i]#pasliste"/>
                    <item algoitem="a[i] PREND_LA_VALEUR a[j]" code="5#a#a[j]#i"/>
                    <item algoitem="a[j] PREND_LA_VALEUR z" code="5#a#z#j"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A s" code="12#i#0#s">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER a[i]" code="3#a#0#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
