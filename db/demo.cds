namespace msdb;
using { msdb.commons as spiderman } from './commons';
using { temporal,Country,Currency, Language,managed,cuid } from '@sap/cds/common';


context master {
    
   
    

   entity student : spiderman.address {
     key ID: spiderman.Guid ;
        NAME : String(80);
        CLASS: Association to one master.standards;
        GENDER: String(1);
        // CITY: String(10);
   }

   entity books  {
        key ID: spiderman.Guid;
        BOOKNAME: String(80);
        AUTHOR: String(32);
   }

   entity standards  {
        key ID: Int16;
        CLASSNAME: String(10);
        SECTION: Int16;
        CLASSTEACHER: String(80);
   }
}

context trans {
    entity rentals: cuid,temporal,managed  {
        student: Association to one master.student ;
        book: Association to one master.books ;
    }
}
