
// Copyright (c) 2000-2009 Bluespec, Inc.

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
// $Revision: 17872 $
// $Date: 2009-09-18 14:32:56 +0000 (Fri, 18 Sep 2009) $

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

// N -bit counter with load, set and 2 increment
module Counter(CLK,
               RST_N,
               Q_OUT, 
               DATA_A, ADDA, 
               DATA_B, ADDB, 
               DATA_C, SETC, 
               DATA_F, SETF);
   // synopsys template   

   parameter width = 1;
   parameter init = 0;

   input                 CLK;
   input                 RST_N;
   input [width - 1 : 0] DATA_A;
   input                 ADDA;
   input [width - 1 : 0] DATA_B;
   input                 ADDB;
   input [width - 1 : 0] DATA_C;
   input                 SETC;
   input [width - 1 : 0] DATA_F;
   input                 SETF;
   
   output [width - 1 : 0] Q_OUT;


   
   reg [width - 1 : 0]    q_state ;
   
   assign                 Q_OUT = q_state ;
   
   always@(posedge CLK /*or negedge RST_N*/ ) begin
    if (RST_N == 0)
      q_state  <= `BSV_ASSIGNMENT_DELAY init;
    else
      begin
         if ( SETF )
           q_state <= `BSV_ASSIGNMENT_DELAY DATA_F ;
         else
           q_state <= `BSV_ASSIGNMENT_DELAY (SETC ? DATA_C : q_state ) + (ADDA ? DATA_A : {width {1'b0}}) + (ADDB ? DATA_B : {width {1'b0}} ) ;
      end // else: !if(RST_N == 0)      
   end // always@ (posedge CLK)

`ifdef BSV_NO_INITIAL_BLOCKS
`else // not BSV_NO_INITIAL_BLOCKS
   // synopsys translate_off
   initial begin
      q_state = {((width + 1)/2){2'b10}} ; 
   end
   // synopsys translate_on
`endif // BSV_NO_INITIAL_BLOCKS

endmodule

