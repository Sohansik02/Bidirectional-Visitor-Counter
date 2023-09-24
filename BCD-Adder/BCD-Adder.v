module bcd_adder(a,b,cin,sum,cout);
    //taking two 4bit bcd numbers as input
    input [3:0] a,b;
    //taking cin as input
    input cin;
    //giving 4 bit sum as output
    output [3:0] sum;
    //giving cout as output
    output cout;
    //using temporary reg sumtemp for storing 5bit outputs
    reg [4:0] sumtemp;
    //using temporary reg sum for 4 bit outputs
    reg [3:0] sum;
    //using cout as temporary carry
    reg cout;  
    //it ensures the logic changes whenever input changes
    always @(a,b,cin)
    //start loop
    begin
	//adding three input 
        sumtemp = a+b+cin; 
	//if sumtemp is greater than 9
        if(sumtemp > 9)
        //start new loop
	begin
            sumtemp = sumtemp+6; //add 6, if result is more than 9.
            cout = 1;  //set the carry output
            sum = sumtemp[3:0];   
   	end
        else    
	begin
            cout = 0;
            sum = sumtemp[3:0];
        end
    end     

endmodule


module tb_bcdadder;

    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    wire [3:0] sum;
    wire cout;

    bcd_adder uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .cout(cout)
    );

    initial begin
        a = 0;  b = 0;  cin = 0;   #100;
        a = 6;  b = 9;  cin = 0;   #100;
        a = 3;  b = 3;  cin = 1;   #100;
        a = 4;  b = 5;  cin = 0;   #100;
        a = 8;  b = 2;  cin = 0;   #100;
        a = 9;  b = 9;  cin = 1;   #100;
    end
      
endmodule
