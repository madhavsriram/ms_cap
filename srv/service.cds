using { msdb.master as master, msdb.trans as transaction } from '../db/demo';

service MyService1 {
 
 entity StudentSet as projection on master.student;
 entity StandardsSet as projection on master.standards;
 entity BookSet as projection on master.books;
 entity BookRentalSet as projection on transaction.rentals;

    

}