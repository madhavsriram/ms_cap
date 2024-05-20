namespace anubhav.common;
using { Currency } from '@sap/cds/common';

type Gender : String(1) enum {
    male = 'M';
    female = 'F';
    undisclosed = 'U';
};

type AmountT : Decimal(15,2) @(
    Semanti.amount.CurrencyCode: 'CURRENCY_code',
    sap.unit: 'CURRENCY_code'
);

aspect Amount : {
    CURRENCY: Currency;
    GROSS_AMOUNT: AmountT ;
     NET_AMOUNT: AmountT @(title : 'Net Amount');
      TAX_AMOUNT: AmountT @(title : 'Tax Amount');
       
};

    type Guid : String(32);
    type PhoneNumber : String(30) ;
    type EmailAddress : String(80) @assert.format : '^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
    
    
    aspect address:{
        HOUSENO: Int16;
        STREET: Guid;
        CITY : String(80);
        COUNTRY: String(3);
    }