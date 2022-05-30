module u_AND2(
        input IN1,
        input IN2,
        output OUT
        );
assign OUT = IN1 & IN2;
endmodule

module u_AND3(
        input IN1,
        input IN2,
        input IN3,
        output OUT
        );
assign OUT = IN1 & IN2 & IN3;
endmodule

module u_AND4(
        input IN1,
        input IN2,
        input IN3,
        input IN4,
        output OUT
        );
assign OUT = IN1 & IN2 & IN3 & IN4 ;
endmodule

module u_AND5(
        input IN1,
        input IN2,
        input IN3,
        input IN4,
        input IN5,
        output OUT
        );
assign OUT = IN1 & IN2 & IN3 & IN4 & IN5 ;
endmodule

module XOR2(
        input IN1,
        input IN2,
        output OUT
        );
assign OUT = ((~IN1)&IN2)|((~IN2)&IN1);  
endmodule

module u_OR2(
        input IN1,
        input IN2,
        output OUT
        );
assign OUT = IN1 | IN2;
endmodule

module u_OR3(
        input IN1,
        input IN2,
        input IN3,
        output OUT
        );
assign OUT = IN1 | IN2 | IN3;
endmodule

module u_OR4(
        input IN1,
        input IN2,
        input IN3,
        input IN4,
        output OUT
        );
assign OUT = IN1 | IN2 | IN3 | IN4 ;
endmodule

module u_OR5(
        input IN1,
        input IN2,
        input IN3,
        input IN4,
        input IN5,
        output OUT
        );
assign OUT = IN1 | IN2 | IN3 | IN4 | IN5 ;
endmodule