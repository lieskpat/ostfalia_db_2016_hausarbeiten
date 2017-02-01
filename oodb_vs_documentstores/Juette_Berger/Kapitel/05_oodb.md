
# 5. Verbreitung von OODB

Wie bereits in Kapitel 2.2 beschrieben, versuchen objektorientiere Datenbankmanagementsysteme die objektorientierten Prinzipien bis zur Speicherung der Daten in einer Datenbank zu realisieren.
Trotz der großen Verbreitung von objektorientierten Programmiersprachen werden kaum objektbasierte Datenbanken eingesetzt und sind eine Nischentechnologie.
Vielmehr werden für gängige Client-Server-Anwendungen weiterhin relationale Datenbanken verwendet und der Medienbruch wird durch die objekt-relationalen Mapper kompensiert.
Trotzdem erleben viele NoSQL-Datenbanken in den letzten Jahren einen großen Aufwind, zu denen die objektbasierten nicht gehören.
In der Popularitäts Analyse von @solidGmbh ist dieser Trend erkennbar.
Der Fokus von Dokumentendatenbanken ist ausgelegt auf eine sehr schnelle Verarbeitung der Daten über eine leichtgewichtige Schnittstelle, die Objektdatenbanken fokussieren hingegen den Paradigmenwechsel von relationalen Datenbanken zu Objektdatenbanken.
Doch genau dieser Wechsel passiert nicht.

Die folgenden Liste versucht einige der größten Probleme von Objektdatenbanken zu erörtern:

  * Es gibt keine aktuelle Standardisierung von Modellierungs- und Abfragesprachen, da die ehemalige ODMG nicht mehr existiert und es keine weiteren Organisationen gibt, welche eine Standardisierung und Weiterentwicklung vorantreiben. Nur im Bereich der UML findet eine solche statt, da dies aber ein generische Modellansatz ist, muss noch zusätzlich eine eigene Modellierungssprache von der Datenbank angeboten werden. Die Sprachen ODL und OQL sind dafür nicht ausreichend. Daher implementieren neuere Datenbanksysteme meist eigene Sprachen, welche keiner Standardisierung unterliegen. Beispielsweise das OODBMS db4o bietet drei verschiedene Abfragesprachen. Das sind *Query By Example (QBE)*, *Simple Object Database Access (SODA)* und *native Abfragen*. Native Abfragen basieren auf der verwendeten Programmiersprache, z. B. LINQ unter C#.
  * Eine gescheiterte Standardisierung der Object Database Technology Working Group (ODBT WG), welche bis 2009 versucht hat einen neuen Standard zu etablieren. Durch die Einstellung dieser Gruppe haben sich die Unternehmen, welche OODBMS-Systeme entwickelten, anderen Projekten zugewandt.
  * Starke Verbreitung von SQL. Das Erlernen von SQL gehört heute zum Standard in jeder IT-Nahen Ausbildung. Im Grundstudium wird neben der allgemeinen Datenbanktheorie vorrangig SQL gelehrt, ebenfalls in den verwandten Ausbildungsberufen. Dadurch findet eine starke Fokussierung statt, sodass ein späterer Wechsel selten vollzogen wird. @solidGmbh weisen in ihrem Ranking drei Relationale Datenbanksysteme auf den Plätzen 1-3 aus. Die erste objektorientiere Datenbank (Db40) ist erst auf Platz 100 zu finden.
  * Ausgereifte ORM-Frameworks für beliebte Programmiersprachen. Für fast jede Programmiersprache existieren meist mehrere ORM-Frameworks für den einfachen Zugriff auf relationale Datenbanken. Allein die Wikipedia führt 80 verschiedene Frameworks für 14 unterschiedliche Sprachen auf.[^wikiorm] Viele davon stehen unter einer Open Source Lizenz, sodass deren Einsatz meist unkompliziert möglich ist.
  * ORM Integration in beliebten Webframeworks. Im Bereich der Webentwicklung entstehen viele neue Frameworks, welche bereits auf bestimmte ORM-Mapper aufsetzen und den Programmierer dazu anleiten dieses zu verwenden. Der einfache Austausch ist meist nicht vorgesehen, wodurch die Verwendung einer Objektdatenbank erschwert wird. Beispiele dafür sind das ASP.MVC Framework[^mvcef], welches im Standard auf das Entity Framework setzt oder das Vaadin-Framework[^vaadin], welches die JPA als generische Schnittstelle anbindet.
  * Für eine schnelle Suche oder ein verbessertes Auffinden von Daten haben sich andere Arten von NoSQL-Datenbanken etabliert, die diese Aufgaben effizienter durchführen. Beispielsweise die Dokumentendatenbanken, welche im Gegensatz zu den Objektdatenbanken eine horizontale Skalierung sehr einfach ermöglichen.
  * Der Einsatz von Stored Procedures ist nur in sehr wenigen Fällen möglich. Durch die fehlende Standardisierung können diese meist nicht ausreichend Programmiert werden, da die Kontrolle über die Abfragen bei den Entwicklern der Software liegt und nicht bei den Administratoren der Datenbank. Das kann zu Sicherheitsproblemen in kritischen Umgebungen führen.
  * Durch den Einsatz von JSON als generisches Format ist die Umwandlung in ein natives Objekt der Programmiersprache sehr einfach. Da einer der größten Vorteile von Objektdatenbanken das direkte Auslesen der Objekte darstellt, ist es im Bereich der NoSQL-Datenbanken einfacher, diese im JSON Format abzulegen, welches eine programmiersprachen-unabhängige Speicherung ermöglicht. Des Weiteren lässt sich dieses Format leichter durchsuchen.
  * Ein Mangel an der Auswahl von objektbasierten Datenbanken führt nicht zum Einsatz von Objektdatenbanken. Die vorhandenen Datenbanken werden weitestgehend nicht gepflegt oder nur sehr selten angepasst. Das letzte Update von db4o stammt beispielsweise vom April 2015[^db4o] und deren direkte Webpräsenz(http://www.db4o.com/) ist zum aktuellen Zeitpunkt (Januar 2017) nicht erreichbar.
  * Auf der Codeplattform Github finden sich keine größeren Projekte zu objektbasierten Datenbanken, was zu deren geringerer Verbreitung beiträgt oder zumindest die Schlussfolgerung zulässt, dass diese Technologie keine weitreichende Verbreitung besitzt.
  * Objektdatenbanken eigenen sich nicht für sehr große Datenmengen, da eine Skalierung über mehrere Systeme schwierig ist. Daher ist der Einsatz durch den maximal verfügbaren Speicher auf dem Hostsystem begrenzt.
  * Der Einsatz lohnt sich nur bei sehr komplexen Objektbeziehungen und nicht für einfache Anwendungen. Wird eine Anwendung iterativ entwickelt, wird die Entscheidung zugunsten einer relationalen Datenbank bereits im frühen Stadium getroffen, wo die Komplexität der Beziehungen noch überschaubar ist.
  * Datenbanken wie db4o unterstützen nicht den Import von verbreiteten Formten wie JSON oder XML, was den Einsatz dieser Datenbank für einige Anwendungsfälle unbrauchbar macht. Ebenfalls bietet die Datenbank keine referenzielle Integrität, dessen Verzicht nur bei skalierbaren Datenbanken tragbar ist.

Des Weiteren wurde eine Stichwortsuche auf einigen großen Plattformen durchgeführt, um die Verbreitung der Datenbanksysteme zu ermitteln.
Treffer bei einer reinen Suche bei Google wurden nicht mit aufgenommen, da diese die Skalen der anderen Treffer zu stark reduzieren.
Wie auf der Abbildung 10 zu erkennen ist, sind auf allen drei Plattformen am meisten Treffer zu relationalen Datenbanken und der Abfragesprache SQL zu finden.
Lediglich auf Google Scholar gibt es eine deutliche Anzahl von Treffern für die objektorientierten Datenbanken.
Eine mögliche Schlussfolgerung daraus ist, dass diese Datenbanksysteme bisher nur im akademischen Umfeld vorkommen.
Besonders wichtiges Indiz für eine geringe Verbreitung einer Technologie sind die Anzahl der öffentlichen Projekte auf der Plattform Github.
Wie in der Abbildung 10 zu erkennen ist, gibt es zu den Stichworten *sql* und *nosql*, dort nennenswerte Treffermengen.
Zu den objektorientierten Datenbanken gibt es nur wenige Treffer (52 bzw. 162).

![Stichwortsuche](images/keyword_search_result.png)

Trotz dieser vielen Probleme gibt es einige interessante Einsatzgebiete für diese Art von Datenbank, dazu gehören:

  * Geografische Informationssysteme für Dokumente, oder Fotos
  * CAD und CAM Systeme
  * Patientensysteme in Krankenhäusern
  * Finanzeinrichtungen für den Bereich Data Mining

Den o.g. Nachteilen zum Trotz, werden die OODBMS von namenhaften Unternehmen verwendet. Dazu zählen Unternehmen wie BMW, Bosch, IBM, Intel und Seagate nutzen für interne Anwendung das OODBMS db4o. (vgl. @nayak2013type S. 3)
