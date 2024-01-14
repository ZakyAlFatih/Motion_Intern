
import 'package:flutter/material.dart';

class transaction extends StatelessWidget {
  const transaction({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child:SingleChildScrollView( 
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.chevron_left_outlined,
                  size: 40,
                ),
                Container(
                  width: 60,
                  height: 60,
                  child: Image.asset("assets/images/logo.png"),
                ),
                Icon(
                  Icons.ios_share_outlined,
                  size: 40,
                )
              ],
            ),
            Container(
              width:378.04,
             height:326.87,
              padding: EdgeInsets.all(22),
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              
              child: Column(
                children: [ Container(child:Image.asset("assets/images/SuccesIcon.png"),
                                      width:63.19,height:63.19, margin: EdgeInsets.only(bottom: 10)),      
                Row(mainAxisAlignment:MainAxisAlignment.center,
                           children:[Text("Transaksi Berhasil",style:TextStyle(fontFamily: 'Poppins',fontSize: 18.06),
                                    ),],
                                ),
                          Text("Rp. 58,000",style:TextStyle(fontSize:27.08,fontWeight:FontWeight.w500,)),
                                      Container(
                                      child:Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                              
                           Divider(
                            color: Colors.black,
                            thickness: 1,
                            indent: 25,
                            endIndent: 25,
                            ),
                          SizedBox(height:18.06),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("Invoice Number",style:TextStyle(fontFamily:'Poppins',fontSize:13.54,fontWeight:FontWeight.w500),),
                            Text("000085752257",style:TextStyle(fontFamily:'Poppins',fontSize:13.54,fontWeight:FontWeight.w500))],),
                          SizedBox(height:18.06),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Tanggal Transaski",style:TextStyle(fontFamily:'Poppins',fontSize:13.54,fontWeight:FontWeight.w500)),
                              Text("16 Juni 2023",style:TextStyle(fontFamily:'Poppins',fontSize:13.54,fontWeight:FontWeight.w500)) ],),
                          SizedBox(height:18.06),  
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Jenis Pembayaran",style:TextStyle(fontFamily:'Poppins',fontSize:13.54,fontWeight:FontWeight.w500)),
                              Text("QRIS",style:TextStyle(fontFamily:'Poppins',fontSize:13.54,fontWeight:FontWeight.w500))
                            ],)
                          
                                                ],)
                                                ),
                          SizedBox(height:10),
                  
                
                ],
              ),
            ),

               
                          Container(  width:378.04,
                                      height:188,
                                      padding: EdgeInsets.all(22),
                                      margin: EdgeInsets.all(20.0),
                                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                                    BoxShadow(
                                                    color: Colors.black.withOpacity(0.1),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3),
                                                    ),
                                                  ],
                                                  ),
                                                  child:Column(children: [Row(children: [ Text("Detail Pesanan",style:TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins',fontSize:16))],),
                                                        SizedBox(height:16),
                                                        Container(width:double.infinity,child:Column(children: [Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[Text("Jenis Pesanan",style:TextStyle(fontWeight: FontWeight.w500,fontFamily:'Poppins',fontSize:12),),Text("2x Frappucino - Monte",style:TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins',fontSize:12),)],),
                                                                           SizedBox(height:16),
                                                                                                               
                                                                          Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text("Nama Pemesan",style:TextStyle(fontWeight: FontWeight.w500,fontFamily:'Poppins',fontSize:12),),Text("Asep Knalpot",style:TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins',fontSize:12))],),
                                                                          SizedBox(height:16),
                                                                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("Total Pesanan",style:TextStyle(fontWeight: FontWeight.w500,fontFamily:'Poppins',fontSize:12),),Text("Rp. 58,000",style:TextStyle(fontWeight:FontWeight.w500,fontFamily:'Poppins',fontSize:12))],)
                                                        ]),)
                                                   
                                                  ],)),
                        SizedBox(height:16),
                        Container(
                          width: 381,
                          height: 55,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(27.5),
                            color:Color(0xff00623B)
                          ),
                          child:Center(child:Text("Download E - Ticket",style:TextStyle(color:Colors.white,fontFamily:'Raleway',fontWeight:FontWeight.w500,fontSize:20),)),
                        )

                
          ],
        ),)
         
        
      ),
    ),
  );
}
}