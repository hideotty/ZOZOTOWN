// $(function(){



// //モーダルウィンドウを出現させるクリックイベント
// $("#modal-open").on('click', function(){

//   //キーボード操作などにより、オーバーレイが多重起動するのを防止する
//   $( this ).blur() ;  //ボタンからフォーカスを外す
//   if( $( "#modal-overlay" )[0] ) return false ;   //新しくモーダルウィンドウを起動しない (防止策1)
//   //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;   //現在のモーダルウィンドウを削除して新しく起動する (防止策2)

//   //オーバーレイを出現させる
//   $( "body" ).append( '<div id="modal-overlay"></div>' ) ;
//   $( "#modal-overlay" ).fadeIn( "slow" ) ;

//   //コンテンツをセンタリングする
//   centeringModalSyncer() ;

//   //コンテンツをフェードインする
//   $( "#modal-content" ).fadeIn( "slow" ) ;

//   //[#modal-overlay]、または[#modal-close]をクリックしたら…
//   $( "#modal-overlay, .modal-close" ).unbind().click( function(){

//     //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
//     $( "modal-content, #modal-overlay" ).fadeOut( "slow" , function(){

//       //[#modal-overlay]を削除する
//       $('#modal-overlay').remove() ;

//     });

//   });

//   });


//   $("#modal-open-login").on('click',function(){

//   //キーボード操作などにより、オーバーレイが多重起動するのを防止する
//   $( this ).blur() ;  //ボタンからフォーカスを外す
//   if( $( "#modal-overlay" )[0] ) return false ;   //新しくモーダルウィンドウを起動しない (防止策1)
//   //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;   //現在のモーダルウィンドウを削除して新しく起動する (防止策2)

//   //オーバーレイを出現させる
//   $( "body" ).append( '<div id="modal-overlay"></div>' ) ;
//   $( "#modal-overlay" ).fadeIn( "slow" ) ;

//   //コンテンツをセンタリングする
//   centeringModalSyncer() ;

//   //コンテンツをフェードインする
//   $( "#modal-content-login" ).fadeIn( "slow" ) ;

//   //[#modal-overlay]、または[.modal-close]をクリックしたら…
//   $( "#modal-overlay, #modal-close-login" ).unbind().click( function(){

//     //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
//     $( "#modal-content-login, #modal-overlay" ).fadeOut( "slow" , function(){

//       //[#modal-overlay]を削除する
//       $('#modal-overlay').remove() ;

//     });

//   });

// });

// });
