import 'dotenv/config'
import { PrismaClient } from '@prisma/client';
import express from 'express'
import Joi from 'joi'
import {body,validationResult}  from 'express-validator'
import {sendEmail} from './Mail.js'
import cors from 'cors'
const app=express();
const port=process.env.PORT ||3001
const prisma= new PrismaClient()
app.use(express.json());
app.use(cors())

const validate=[
    body('refreeName').isString().notEmpty(),
    body('refreeEmail').isEmail().notEmpty(),
    body('referrerName').isString().notEmpty(),
    body('referrerEmail').isEmail().notEmpty()
]

app.post('/referals',validate,async(req,res)=>{
    const errors=validationResult(req);
    if(!errors.isEmpty()){
        console.log("dome bro!")
        return res.status(400).json({ errors: errors.array() });
        
    }
    try {
        const referrals=await prisma.refer.create({data:req.body})
        await sendEmail(referrals.refreeEmail,referrals.refreeName)
        res.status(200).json({message:"referral submitted successfully!" , referrals});

    } catch (e) {
        res.status(500).json({error:e.message})
    }
    
})


app.listen(port,()=>{
    console.log("app is listening on port 3001 !");
})

