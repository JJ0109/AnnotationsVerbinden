namespace datamodel.db;

using { managed, cuid } from '@sap/cds/common';


entity Typ : managed {
  key ID : Integer;
  name : String(30);
  verbindungG : Association to many Geraet on verbindungG.verbindungT = $self;
}

entity Geraet: cuid, managed {
  key ID : Integer;
  status: String(10);
  key verbindungT : Association to Typ;
}


