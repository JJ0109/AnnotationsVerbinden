using datamodel.db.SlahService from './slahservice';

annotate SlahService.Typ with @(
  UI: {
    //Identification : [name],
    SelectionFields: [name],
      LineItem: [
	{ Value: ID, Label: 'TypID' },            
        { Value: name, Label: 'Bezeichnung' }
      ]
  }
){
	ID @title:'ID' @UI.HiddenFilter;
	name @title:'Name';
}

//annotate CatalogService.Teams with @cds.odata.valuelist;