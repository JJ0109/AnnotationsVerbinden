using datamodel.db.SlahService from './slahservice';

annotate SlahService.Geraet with @(
  UI:{
    Identification: [{ Value: 'Geraet' }],
    SelectionFields: [ 'verbindungT_ID' ],
    LineItem: [
      { Value: verbindungT.name, Label: 'Bezeichnung' }, 
      { Value: ID, Label: 'ID' },    
      { Value: status, Label: 'Status' }            

    ]
  }
){
  verbindungT @(
    Common: {
      Label: 'Typ',
      ValueList: {
        Label: 'Typ',
        CollectionPath: 'Typ',
        Parameters:[
	  { $Type:'Common.ValueListParameterInOut', LocalDataProperty: 'verbindungT_ID', ValueListProperty:'ID' },
          { $Type:'Common.ValueListParameterDisplayOnly', ValueListProperty:'name' },
		    ]
      }
    }
  );
};



