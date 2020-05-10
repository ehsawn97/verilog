module mytesttable ();
reg  inputa , inputb  ;
wire outbufif1 , outand , outnotif1 , outxor  ;

and myand(outand , inputa , inputb );
bufif1 bufif(outbufif1 , inputa , inputb );
notif1 notit (outnotif1 , inputa , inputb );
xor xor1(outxor, inputa , inputb );

initial 
begin

inputa = 0 ; inputb = 0  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 0 ; inputb = 1  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1 ; inputb = 0 ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1 ; inputb = 1 ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 0 ; inputb = 1'bz  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1'bz ; inputb = 0 ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1'bz ; inputb = 1'bz  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1 ; inputb = 1'bx  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1'bx ; inputb = 1 ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10
 

inputa = 1 ; inputb = 1'bz  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1'bz ; inputb = 1  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1'bx ; inputb = 1'bx ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1'bx ; inputb = 1'bz  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );


#10

inputa = 1'bz ; inputb = 1'bx  ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );


#10

inputa = 0 ; inputb = 1'bx ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );

#10

inputa = 1'bx ; inputb = 0 ; 
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the and gate  is %b " , outand );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome  of the bufif1 is %b " , outbufif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of  notif1 is %b " , outnotif1 );
	$display ("inputa = 0 ; inputb = 0  ; and the  outcome of xor is is %b " , outxor );
	
	
end 
endmodule 


