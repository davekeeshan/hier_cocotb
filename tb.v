module counter0 (
      input wire clkin
    , input wire rst
    , output [31:0] pc
);


logic [31:0] f_pc ;

    always @(posedge clkin or negedge rst) begin
        if (rst) begin
            f_pc <= 0;
        end else begin
            f_pc <= f_pc + 1'b1;
        end
    end
    
    assign pc = f_pc;
    
endmodule

module counter1 #(
    parameter X=0
)(
      input wire clkin
    , input wire rst
    , output [31:0] pc
);


generate
if (X == 0) begin: g_x01
    counter0 i_counter0 (
        .clkin  (clkin)
        ,.rst(rst)
        ,.pc   (pc)
    );
end else begin: g_x02
    counter0 i_counter0 (
        .clkin  (clkin)
        ,.rst(rst)
        ,.pc   (pc)
    );
end
endgenerate
    
endmodule

// module counter2 (
//       input wire clkin
//     , input wire rst
//     , output [31:0] pc
// );
// 
// 
//     counter1 i_counter1 (
//         .clkin  (clkin)
//         ,.rst(rst)
//         ,.pc   (pc)
//     );
// 
//     
// endmodule
// 
// module counter3 (
//       input wire clkin
//     , input wire rst
//     , output [31:0] pc
// );
// 
// 
//     counter2 i_counter2 (
//         .clkin  (clkin)
//         ,.rst(rst)
//         ,.pc   (pc)
//     );
// 
//     
// endmodule

module tb (
      input wire clkin
    , input wire rst
);
logic [31:0] w_pc0 ;
logic [31:0] w_pc1 ;
logic [31:0] w_pc2 ;
logic [31:0] w_pc3 ;

    counter0 i_counter0 (
        .clkin  (clkin)
        ,.rst(rst)
        ,.pc   (w_pc0)
    );

    counter1 i_counter1 (
        .clkin  (clkin)
        ,.rst(rst)
        ,.pc   (w_pc1)
    );

//     counter2 i_counter2 (
//         .clkin  (clkin)
//         ,.rst(rst)
//         ,.pc   (w_pc2)
//     );
// 
//     counter3 i_counter3 (
//         .clkin  (clkin)
//         ,.rst(rst)
//         ,.pc   (w_pc3)
//     );

endmodule
