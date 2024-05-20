using { cappo.cds.CDSViews } from '../db/CDSViews';
using { anubhav.db.master } from '../db/datamodel';


service MyService @(path: 'MyService') {

    function pokymon(name: String(20)) returns String;
    entity POWorklistSet  as projection on CDSViews.POWorklist;
    // entity ProductOrdersSet as projection on CDSViews.ProductViewSub;
    entity ProductItemsSet as projection on CDSViews.ItemView;
    entity ReadEmployeeSrv as projection on master.employees;

}