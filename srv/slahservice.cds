namespace datamodel.db;


using datamodel.db as db from '../db/datamodel';

service SlahService {
    @readonly
    entity Typ as select from db.Typ;
    @readonly 
    entity Geraet as projection on db.Geraet;
}
