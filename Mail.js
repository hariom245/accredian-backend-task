import 'dotenv/config'
import nodemailer from 'nodemailer'
import {google} from 'googleapis'

const CLIENT_ID=process.env.CLIENT_ID
const CLIENT_SECRET =process.env.CLIENT_SECRET
const REDIRECT_URI =process.env.REDIRECT_URI
const REFRESH_TOKEN = process.env.REFRESH_TOKEN

const oAuth2Client = new google.auth.OAuth2(CLIENT_ID,CLIENT_SECRET,REDIRECT_URI)
oAuth2Client.setCredentials({refresh_token:REFRESH_TOKEN})

 export async function sendEmail (to,name){
try {
    const accessToken=await oAuth2Client.getAccessToken();
    const transport=nodemailer.createTransport({
        service: 'gmail',
        auth:{
            type: 'OAuth2',
            user:'harrym091234@gmail.com',
            clientId:CLIENT_ID,
            clientSecret:CLIENT_SECRET,
            refreshToken: REFRESH_TOKEN,
            accessToken: accessToken
        }
    })

    const mailOptions={
        from: 'HARRYM091234 ✉️<harrym091234@gmail.com>',
        to,
        subject:'Referral Confirmation',
        text:`Hello ${name},\n\nThank you for your referral!\n\nBest Regards,\nReferral Team`

    }
    await transport.sendMail(mailOptions)
    console.log(`Email sent to ${to}`)

} catch (error) {
    return error
}
}
// module.exports=sendEmail;