const cds = require('@sap/cds');
const e = require('express');
const { employees } = cds.entities('anubhav.db.master')

module.exports = (srv) => {

    srv.on('pokymon', req => `Hello ${req.data.name}`);
    srv.on('READ','ReadEmployeeSrv', async(req)=>{
        const tx = await cds.tx(req);
        // var returndata = [];
        // var results = await tx.run(SELECT.from(employees).limit(5));
        // for (let index = 0; index < results.length; index++) {
        //     const element = results[index];
        //     element.nameMiddle = 'ms';
        //     returndata.push(element);
            
        // }
        // return returndata;

        var wherecondtion = req.data;
        if(wherecondtion.hasOwnProperty("ID")){
            return await tx.run(SELECT.from(employees).where(wherecondtion))
        }else{
            return await tx.run(SELECT.from(employees).limit(2).where({
                "sex": 'F'
            }))
        }
    })
}

// module.exports = myservice;