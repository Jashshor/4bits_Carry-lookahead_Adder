`timescale 1ns/100ps
module adder(
            A4,
            B4,
            A3,
            B3,
            A2,
            B2,
            A1,
            B1,
            C0,
            S1,
            S2,
            S3,
            S4,
            C4
            );
//Input
input A4;
input A3;
input A2;
input A1;
input B4;
input B3;
input B2;
input B1;
input C0;
//First Level ouput
wire G1;
wire P1;
wire G2;
wire P2;
wire G3;
wire P3;
wire G4;
wire P4;
//Second Level output
wire G11;
wire G12;
wire G13;
wire G14;
wire G15;
wire G16;
wire G17;
wire G18;
wire G19;
wire G20;
//Third Level output
wire O3;
wire O2;
wire O1;
//Output
output C4;
output S1;
output S2;
output S3;
output S4;

//First Level
u_AND2 u_g4(
        .IN1(B4),
        .IN2(A4),
        .OUT(G4)
);
XOR2 u_p4(
        .IN1(A4),
        .IN2(B4),
        .OUT(P4)
);

u_AND2 u_g3(
        .IN1(B3),
        .IN2(A3),
        .OUT(G3)
);
XOR2 u_p3(
        .IN1(A3),
        .IN2(B3),
        .OUT(P3)
);

u_AND2 u_g2(
        .IN1(B2),
        .IN2(A2),
        .OUT(G2)
);
XOR2 u_p2(
        .IN1(A2),
        .IN2(B2),
        .OUT(P2)
);

u_AND2 u_g1(
        .IN1(B1),
        .IN2(A1),
        .OUT(G1)
);

XOR2 u_p1(
        .IN1(A1),
        .IN2(B1),
        .OUT(P1)
);
//Second Level
u_AND2 u_g11(
        .IN1(G3),
        .IN2(P4),
        .OUT(G11)
);
u_AND3 u_g12(
        .IN1(P4),
        .IN2(G2),
        .IN3(P3),
        .OUT(G12)
);
u_AND4 u_g13(
        .IN1(P4),
        .IN2(P3),
        .IN3(P2),
        .IN4(G1),
        .OUT(G13)
);
u_AND5 u_g14(
        .IN1(P4),
        .IN2(P3),
        .IN3(P2),
        .IN4(P1),
        .IN5(C0),
        .OUT(G14)
);
u_AND2 u_g15(
        .IN1(G2),
        .IN2(P3),
        .OUT(G15)
);
u_AND3 u_g16(
        .IN1(P3),
        .IN2(P2),
        .IN3(G1),
        .OUT(G16)
);
u_AND4 u_g17(
        .IN1(P3),
        .IN2(P2),
        .IN3(P1),
        .IN4(C0),
        .OUT(G17)
);
u_AND2 u_g18(
        .IN1(G1),
        .IN2(P2),
        .OUT(G18)
);
u_AND3 u_g19(
        .IN1(P2),
        .IN2(P1),
        .IN3(C0),
        .OUT(G19)
);
u_AND2 u_g20(
        .IN1(P1),
        .IN2(C0),
        .OUT(G20)
);

//Third Level
u_OR4 u_o3(
        .IN1(G15),
        .IN2(G3),
        .IN3(G16),
        .IN4(G17),
        .OUT(O3)
);
u_OR3 u_o2(
        .IN1(G2),
        .IN2(G19),
        .IN3(G18),
        .OUT(O2)
);
u_OR2 u_o1(
        .IN1(G1),
        .IN2(G20),
        .OUT(O1)
);
//Output
u_OR5 u_c4(
        .IN1(G11),
        .IN2(G12),
        .IN3(G13),
        .IN4(G14),
        .IN5(G4),
        .OUT(C4)
);
XOR2 u_s4(
        .IN1(O3),
        .IN2(P4),
        .OUT(S4)
);
XOR2 u_s3(
        .IN1(O2),
        .IN2(P3),
        .OUT(S3)
);
XOR2 u_s2(
        .IN1(O1),
        .IN2(P2),
        .OUT(S2)
);
XOR2 u_s1(
        .IN1(P1),
        .IN2(C0),
        .OUT(S1)
);

endmodule