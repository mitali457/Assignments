
import 'package:cardmathchinggamme/model/score.dart';

import 'package:cardmathchinggamme/screen/home.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

flipped(BuildContext context,index){
   
                  if(!cardmodel.flip)
                  {
                    cardmodel.flip=true;
                    cardmodel.selectedIndex = index;
                  }
                  else{
                    cardmodel.flip = false;
                    if (cardmodel.selectedIndex != index) {
                            if ( cardmodel.cardID[cardmodel.selectedIndex]!=cardmodel.cardID[index]) {
                              cardmodel.cardKey[cardmodel.selectedIndex]
                                  .currentState
                                  .toggleCard();
                              cardmodel.selectedIndex = index;
                            } else {
                              cardmodel.flipontouch[cardmodel.selectedIndex] = false;
                              cardmodel.flipontouch[index] = false;
                             Provider.of<Score>(context,listen:false).add();    

                             if(cardmodel.flipontouch.every((t)=>t==false))
                             {
                              Navigator.of(context).pushNamed("/score");
                             }
                              
                  }
                }
                  }
                }