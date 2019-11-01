/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Discrete Cosine Transform, cosine table                    ////
////                                                             ////
////  Author: Richard Herveille                                  ////
////          richard@asics.ws                                   ////
////          www.asics.ws                                       ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2001 Richard Herveille                        ////
////                    richard@asics.ws                         ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////

//  CVS Log
//
//  $Id: dct_cos_table.v,v 1.2 2002/10/23 09:06:59 rherveille Exp $
//
//  $Date: 2002/10/23 09:06:59 $
//  $Revision: 1.2 $
//  $Author: rherveille $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: dct_cos_table.v,v $
//               Revision 1.2  2002/10/23 09:06:59  rherveille
//               Improved many files.
//               Fixed some bugs in Run-Length-Encoder.
//               Removed dependency on ud_cnt and ro_cnt.
//               Started (Motion)JPEG hardware encoder project.
//


function [31:0] dct_cos_table;

	//
	// inputs & outputs
	//
	input [2:0] x,y,u,v; // table entry

begin
	//
	// Table definition
	//
	// Function: cos( (2x +1) * u * pi)/16) * cos( (2y +1) * v * pi)/16)
	//
	// select bits:
	// 11:9 - V
	//  8:6 - U
	//  5:3 - Y
	//  2:0 - X

	case ( {v,u} ) // synopsys full_case parallel_case
		6'h00:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h20000000; // = +0.500000
				6'h01: dct_cos_table = 32'h20000000; // = +0.500000
				6'h02: dct_cos_table = 32'h20000000; // = +0.500000
				6'h03: dct_cos_table = 32'h20000000; // = +0.500000
				6'h04: dct_cos_table = 32'h20000000; // = +0.500000
				6'h05: dct_cos_table = 32'h20000000; // = +0.500000
				6'h06: dct_cos_table = 32'h20000000; // = +0.500000
				6'h07: dct_cos_table = 32'h20000000; // = +0.500000
				6'h08: dct_cos_table = 32'h20000000; // = +0.500000
				6'h09: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0a: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0d: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0e: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0f: dct_cos_table = 32'h20000000; // = +0.500000
				6'h10: dct_cos_table = 32'h20000000; // = +0.500000
				6'h11: dct_cos_table = 32'h20000000; // = +0.500000
				6'h12: dct_cos_table = 32'h20000000; // = +0.500000
				6'h13: dct_cos_table = 32'h20000000; // = +0.500000
				6'h14: dct_cos_table = 32'h20000000; // = +0.500000
				6'h15: dct_cos_table = 32'h20000000; // = +0.500000
				6'h16: dct_cos_table = 32'h20000000; // = +0.500000
				6'h17: dct_cos_table = 32'h20000000; // = +0.500000
				6'h18: dct_cos_table = 32'h20000000; // = +0.500000
				6'h19: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1a: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1d: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1e: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1f: dct_cos_table = 32'h20000000; // = +0.500000
				6'h20: dct_cos_table = 32'h20000000; // = +0.500000
				6'h21: dct_cos_table = 32'h20000000; // = +0.500000
				6'h22: dct_cos_table = 32'h20000000; // = +0.500000
				6'h23: dct_cos_table = 32'h20000000; // = +0.500000
				6'h24: dct_cos_table = 32'h20000000; // = +0.500000
				6'h25: dct_cos_table = 32'h20000000; // = +0.500000
				6'h26: dct_cos_table = 32'h20000000; // = +0.500000
				6'h27: dct_cos_table = 32'h20000000; // = +0.500000
				6'h28: dct_cos_table = 32'h20000000; // = +0.500000
				6'h29: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2a: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2d: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2e: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2f: dct_cos_table = 32'h20000000; // = +0.500000
				6'h30: dct_cos_table = 32'h20000000; // = +0.500000
				6'h31: dct_cos_table = 32'h20000000; // = +0.500000
				6'h32: dct_cos_table = 32'h20000000; // = +0.500000
				6'h33: dct_cos_table = 32'h20000000; // = +0.500000
				6'h34: dct_cos_table = 32'h20000000; // = +0.500000
				6'h35: dct_cos_table = 32'h20000000; // = +0.500000
				6'h36: dct_cos_table = 32'h20000000; // = +0.500000
				6'h37: dct_cos_table = 32'h20000000; // = +0.500000
				6'h38: dct_cos_table = 32'h20000000; // = +0.500000
				6'h39: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3a: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3d: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3e: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3f: dct_cos_table = 32'h20000000; // = +0.500000
			endcase
		6'h01:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h01: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h02: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h03: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h04: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h05: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h06: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h07: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h08: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h09: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0b: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h10: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h11: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h12: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h13: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h14: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h15: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h16: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h17: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h18: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h19: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1b: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h20: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h21: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h22: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h23: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h24: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h25: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h26: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h27: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h28: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h29: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2b: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h30: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h31: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h32: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h33: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h34: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h35: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h36: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h37: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h38: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h39: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3b: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
			endcase
		6'h02:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h01: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h02: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h03: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h04: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h05: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h06: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h07: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h08: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h09: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0f: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h10: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h11: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h12: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h13: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h14: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h15: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h16: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h17: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h18: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h19: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h1a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h1f: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h20: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h21: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h22: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h23: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h24: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h25: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h26: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h27: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h28: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h29: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2f: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h30: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h31: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h32: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h33: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h34: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h35: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h36: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h37: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h38: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h39: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3f: dct_cos_table = 32'h29cf5d22; // = +0.653281
			endcase
		6'h03:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h01: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h02: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h03: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h04: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h05: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h06: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h07: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h08: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h09: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0c: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0f: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h10: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h11: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h12: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h13: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h14: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h15: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h16: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h17: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h18: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h19: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1c: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1f: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h20: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h21: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h22: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h23: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h24: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h25: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h26: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h27: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h28: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h29: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2c: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2f: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h30: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h31: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h32: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h33: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h34: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h35: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h36: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h37: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h38: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h39: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3c: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3f: dct_cos_table = 32'hda5f3a21; // = -0.587938
			endcase
		6'h04:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h20000000; // = +0.500000
				6'h01: dct_cos_table = 32'he0000000; // = -0.500000
				6'h02: dct_cos_table = 32'he0000000; // = -0.500000
				6'h03: dct_cos_table = 32'h20000000; // = +0.500000
				6'h04: dct_cos_table = 32'h20000000; // = +0.500000
				6'h05: dct_cos_table = 32'he0000000; // = -0.500000
				6'h06: dct_cos_table = 32'he0000000; // = -0.500000
				6'h07: dct_cos_table = 32'h20000000; // = +0.500000
				6'h08: dct_cos_table = 32'h20000000; // = +0.500000
				6'h09: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0a: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0d: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0e: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0f: dct_cos_table = 32'h20000000; // = +0.500000
				6'h10: dct_cos_table = 32'h20000000; // = +0.500000
				6'h11: dct_cos_table = 32'he0000000; // = -0.500000
				6'h12: dct_cos_table = 32'he0000000; // = -0.500000
				6'h13: dct_cos_table = 32'h20000000; // = +0.500000
				6'h14: dct_cos_table = 32'h20000000; // = +0.500000
				6'h15: dct_cos_table = 32'he0000000; // = -0.500000
				6'h16: dct_cos_table = 32'he0000000; // = -0.500000
				6'h17: dct_cos_table = 32'h20000000; // = +0.500000
				6'h18: dct_cos_table = 32'h20000000; // = +0.500000
				6'h19: dct_cos_table = 32'he0000000; // = -0.500000
				6'h1a: dct_cos_table = 32'he0000000; // = -0.500000
				6'h1b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1d: dct_cos_table = 32'he0000000; // = -0.500000
				6'h1e: dct_cos_table = 32'he0000000; // = -0.500000
				6'h1f: dct_cos_table = 32'h20000000; // = +0.500000
				6'h20: dct_cos_table = 32'h20000000; // = +0.500000
				6'h21: dct_cos_table = 32'he0000000; // = -0.500000
				6'h22: dct_cos_table = 32'he0000000; // = -0.500000
				6'h23: dct_cos_table = 32'h20000000; // = +0.500000
				6'h24: dct_cos_table = 32'h20000000; // = +0.500000
				6'h25: dct_cos_table = 32'he0000000; // = -0.500000
				6'h26: dct_cos_table = 32'he0000000; // = -0.500000
				6'h27: dct_cos_table = 32'h20000000; // = +0.500000
				6'h28: dct_cos_table = 32'h20000000; // = +0.500000
				6'h29: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2a: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2d: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2e: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2f: dct_cos_table = 32'h20000000; // = +0.500000
				6'h30: dct_cos_table = 32'h20000000; // = +0.500000
				6'h31: dct_cos_table = 32'he0000000; // = -0.500000
				6'h32: dct_cos_table = 32'he0000000; // = -0.500000
				6'h33: dct_cos_table = 32'h20000000; // = +0.500000
				6'h34: dct_cos_table = 32'h20000000; // = +0.500000
				6'h35: dct_cos_table = 32'he0000000; // = -0.500000
				6'h36: dct_cos_table = 32'he0000000; // = -0.500000
				6'h37: dct_cos_table = 32'h20000000; // = +0.500000
				6'h38: dct_cos_table = 32'h20000000; // = +0.500000
				6'h39: dct_cos_table = 32'he0000000; // = -0.500000
				6'h3a: dct_cos_table = 32'he0000000; // = -0.500000
				6'h3b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3d: dct_cos_table = 32'he0000000; // = -0.500000
				6'h3e: dct_cos_table = 32'he0000000; // = -0.500000
				6'h3f: dct_cos_table = 32'h20000000; // = +0.500000
			endcase
		6'h05:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h01: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h02: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h03: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h04: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h05: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h06: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h07: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h08: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h09: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h10: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h11: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h12: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h13: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h14: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h15: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h16: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h17: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h18: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h19: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h20: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h21: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h22: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h23: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h24: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h25: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h26: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h27: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h28: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h29: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h30: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h31: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h32: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h33: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h34: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h35: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h36: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h37: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h38: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h39: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3f: dct_cos_table = 32'he6db9640; // = -0.392847
			endcase
		6'h06:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h01: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h02: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h03: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h04: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h05: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h06: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h07: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h08: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h09: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0f: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h10: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h11: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h12: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h13: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h14: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h15: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h16: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h17: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h18: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h19: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h1b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h1e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1f: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h20: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h21: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h22: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h23: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h24: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h25: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h26: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h27: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h28: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h29: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2f: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h30: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h31: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h32: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h33: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h34: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h35: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h36: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h37: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h38: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h39: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3f: dct_cos_table = 32'h11517a7b; // = +0.270598
			endcase
		6'h07:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h01: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h02: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h03: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h04: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h05: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h06: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h07: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h08: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h09: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0c: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0f: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h10: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h11: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h12: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h13: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h14: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h15: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h16: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h17: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h18: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h19: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1c: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1f: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h20: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h21: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h22: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h23: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h24: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h25: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h26: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h27: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h28: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h29: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2c: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2f: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h30: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h31: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h32: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h33: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h34: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h35: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h36: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h37: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h38: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h39: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3c: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3f: dct_cos_table = 32'hf72bd511; // = -0.137950
			endcase
		6'h08:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h01: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h02: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h03: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h04: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h05: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h06: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h07: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h08: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h09: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0c: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0d: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0e: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0f: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h10: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h11: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h12: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h13: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h14: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h15: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h16: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h17: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h18: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h19: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1b: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1c: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1d: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1f: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h20: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h21: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h22: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h23: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h24: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h25: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h26: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h27: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h28: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h29: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2a: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2e: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h30: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h31: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h32: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h33: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h34: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h35: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h36: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h37: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h38: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h39: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3c: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3d: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3e: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
			endcase
		6'h09:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h01: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h02: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h03: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h04: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h05: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h06: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h07: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h08: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h09: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h0a: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h0b: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h0c: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h0d: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h0e: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h0f: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h10: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h11: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h12: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h13: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h14: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h15: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h16: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h17: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h18: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h19: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h1a: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h1b: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h1c: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h1d: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h1e: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h1f: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h20: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h21: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h22: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h23: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h24: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h25: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h26: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h27: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h28: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h29: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h2a: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h2b: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h2c: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h2d: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h2e: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h2f: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h30: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h31: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h32: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h33: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h34: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h35: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h36: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h37: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h38: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h39: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h3a: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h3b: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h3c: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h3d: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h3e: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h3f: dct_cos_table = 32'h3d906bcf; // = +0.961940
			endcase
		6'h0a:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h01: dct_cos_table = 32'h18056948; // = +0.375330
				6'h02: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h03: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h04: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h05: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h06: dct_cos_table = 32'h18056948; // = +0.375330
				6'h07: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h08: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h09: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h0a: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h0b: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h0c: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h0d: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h0e: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h0f: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h10: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h11: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h12: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h13: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h14: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h15: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h16: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h17: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h18: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h19: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h1a: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h1b: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h1c: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h1d: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h1e: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h1f: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h20: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h21: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h22: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h23: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h24: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h25: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h26: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h27: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h28: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h29: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h2a: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h2b: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h2c: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h2d: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h2e: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h2f: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h30: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h31: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h32: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h33: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h34: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h35: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h36: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h37: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h38: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h39: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h3a: dct_cos_table = 32'h18056948; // = +0.375330
				6'h3b: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h3c: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h3d: dct_cos_table = 32'h18056948; // = +0.375330
				6'h3e: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h3f: dct_cos_table = 32'hc6020207; // = -0.906127
			endcase
		6'h0b:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h01: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h02: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h03: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h04: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h05: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h06: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h07: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h08: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h09: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h0a: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h0b: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h0c: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h0d: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h0e: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h0f: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h10: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h11: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h12: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h13: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h14: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h15: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h16: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h17: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h18: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h19: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h1a: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h1b: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h1c: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h1d: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h1e: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h1f: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h20: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h21: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h22: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h23: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h24: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h25: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h26: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h27: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h28: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h29: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h2a: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h2b: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h2c: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h2d: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h2e: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h2f: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h30: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h31: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h32: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h33: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h34: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h35: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h36: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h37: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h38: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h39: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h3a: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h3b: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h3c: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h3d: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h3e: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h3f: dct_cos_table = 32'h34310a35; // = +0.815493
			endcase
		6'h0c:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h01: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h02: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h03: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h04: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h05: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h06: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h07: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h08: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h09: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0a: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0c: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0f: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h10: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h11: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h12: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h13: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h14: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h15: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h16: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h17: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h18: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h19: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1a: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1b: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1c: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1e: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1f: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h20: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h21: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h22: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h23: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h24: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h25: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h26: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h27: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h28: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h29: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2d: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h30: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h31: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h32: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h33: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h34: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h35: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h36: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h37: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h38: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h39: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3a: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3c: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
			endcase
		6'h0d:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h01: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h02: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h03: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h04: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h05: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h06: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h07: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h08: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h09: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h0a: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h0b: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h0c: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h0d: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h0e: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h0f: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h10: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h11: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h12: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h13: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h14: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h15: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h16: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h17: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h18: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h19: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h1a: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h1b: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h1c: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h1d: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h1e: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h1f: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h20: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h21: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h22: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h23: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h24: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h25: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h26: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h27: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h28: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h29: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h2a: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h2b: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h2c: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h2d: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h2e: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h2f: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h30: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h31: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h32: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h33: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h34: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h35: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h36: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h37: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h38: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h39: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h3a: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h3b: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h3c: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h3d: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h3e: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h3f: dct_cos_table = 32'h22df8fb9; // = +0.544895
			endcase
		6'h0e:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h18056948; // = +0.375330
				6'h01: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h02: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h03: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h04: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h05: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h06: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h07: dct_cos_table = 32'h18056948; // = +0.375330
				6'h08: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h09: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h0a: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h0b: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h0c: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h0d: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h0e: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h0f: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h10: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h11: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h12: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h13: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h14: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h15: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h16: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h17: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h18: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h19: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h1a: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h1b: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h1c: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h1d: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h1e: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h1f: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h20: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h21: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h22: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h23: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h24: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h25: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h26: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h27: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h28: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h29: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h2a: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h2b: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h2c: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h2d: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h2e: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h2f: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h30: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h31: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h32: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h33: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h34: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h35: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h36: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h37: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h38: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h39: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h3a: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h3b: dct_cos_table = 32'h18056948; // = +0.375330
				6'h3c: dct_cos_table = 32'h18056948; // = +0.375330
				6'h3d: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h3e: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h3f: dct_cos_table = 32'he7fa96b8; // = -0.375330
			endcase
		6'h0f:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h01: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h02: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h03: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h04: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h05: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h06: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h07: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h08: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h09: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h0a: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h0b: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h0c: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h0d: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h0e: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h0f: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h10: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h11: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h12: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h13: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h14: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h15: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h16: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h17: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h18: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h19: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h1a: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h1b: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h1c: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h1d: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h1e: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h1f: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h20: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h21: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h22: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h23: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h24: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h25: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h26: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h27: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h28: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h29: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h2a: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h2b: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h2c: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h2d: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h2e: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h2f: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h30: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h31: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h32: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h33: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h34: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h35: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h36: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h37: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h38: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h39: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h3a: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h3b: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h3c: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h3d: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h3e: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h3f: dct_cos_table = 32'h0c3ef153; // = +0.191342
			endcase
		6'h10:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h01: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h02: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h03: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h04: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h05: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h06: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h07: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h08: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h09: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0a: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0b: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0c: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0d: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0f: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h10: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h11: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h12: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h13: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h14: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h15: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h16: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h17: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h18: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h19: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1a: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1d: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1f: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h20: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h21: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h22: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h23: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h24: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h25: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h26: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h27: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h28: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h29: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2e: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2f: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h30: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h31: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h32: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h33: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h34: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h35: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h36: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h37: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h38: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h39: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3b: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3c: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3e: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3f: dct_cos_table = 32'h29cf5d22; // = +0.653281
			endcase
		6'h11:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h01: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h02: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h03: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h04: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h05: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h06: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h07: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h08: dct_cos_table = 32'h18056948; // = +0.375330
				6'h09: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h0a: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h0b: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h0c: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h0d: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h0e: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h0f: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h10: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h11: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h12: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h13: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h14: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h15: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h16: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h17: dct_cos_table = 32'h18056948; // = +0.375330
				6'h18: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h19: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h1a: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h1b: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h1c: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h1d: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h1e: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h1f: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h20: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h21: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h22: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h23: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h24: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h25: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h26: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h27: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h28: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h29: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h2a: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h2b: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h2c: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h2d: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h2e: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h2f: dct_cos_table = 32'h18056948; // = +0.375330
				6'h30: dct_cos_table = 32'h18056948; // = +0.375330
				6'h31: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h32: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h33: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h34: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h35: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h36: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h37: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h38: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h39: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h3a: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h3b: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h3c: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h3d: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h3e: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h3f: dct_cos_table = 32'hc6020207; // = -0.906127
			endcase
		6'h12:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h01: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h02: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h03: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h04: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h05: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h06: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h07: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h08: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h09: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h0a: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h0b: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h0c: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h0d: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h0e: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h0f: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h10: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h11: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h12: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h13: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h14: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h15: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h16: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h17: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h18: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h19: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h1a: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h1b: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h1c: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h1d: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h1e: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h1f: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h20: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h21: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h22: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h23: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h24: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h25: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h26: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h27: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h28: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h29: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h2a: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h2b: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h2c: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h2d: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h2e: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h2f: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h30: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h31: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h32: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h33: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h34: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h35: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h36: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h37: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h38: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h39: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h3a: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h3b: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h3c: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h3d: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h3e: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h3f: dct_cos_table = 32'h36a09e66; // = +0.853553
			endcase
		6'h13:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h01: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h02: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h03: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h04: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h05: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h06: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h07: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h08: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h09: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h0a: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h0b: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h0c: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h0d: dct_cos_table = 32'h18056948; // = +0.375330
				6'h0e: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h0f: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h10: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h11: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h12: dct_cos_table = 32'h18056948; // = +0.375330
				6'h13: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h14: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h15: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h16: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h17: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h18: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h19: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h1a: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h1b: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h1c: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h1d: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h1e: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h1f: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h20: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h21: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h22: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h23: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h24: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h25: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h26: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h27: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h28: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h29: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h2a: dct_cos_table = 32'h18056948; // = +0.375330
				6'h2b: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h2c: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h2d: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h2e: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h2f: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h30: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h31: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h32: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h33: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h34: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h35: dct_cos_table = 32'h18056948; // = +0.375330
				6'h36: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h37: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h38: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h39: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h3a: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h3b: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h3c: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h3d: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h3e: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h3f: dct_cos_table = 32'hced62cf7; // = -0.768178
			endcase
		6'h14:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h01: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h02: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h03: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h04: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h05: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h06: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h07: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h08: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h09: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0b: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0c: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0e: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0f: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h10: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h11: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h12: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h13: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h14: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h15: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h16: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h17: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h18: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h19: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h1a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h1b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h1e: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h1f: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h20: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h21: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h22: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h23: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h24: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h25: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h26: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h27: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h28: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h29: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2a: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2d: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2f: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h30: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h31: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h32: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h33: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h34: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h35: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h36: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h37: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h38: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h39: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3a: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3b: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3c: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3d: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3f: dct_cos_table = 32'h29cf5d22; // = +0.653281
			endcase
		6'h15:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h01: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h02: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h03: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h04: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h05: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h06: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h07: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h08: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h09: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h0a: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h0b: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h0c: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h0d: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h0e: dct_cos_table = 32'h18056948; // = +0.375330
				6'h0f: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h10: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h11: dct_cos_table = 32'h18056948; // = +0.375330
				6'h12: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h13: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h14: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h15: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h16: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h17: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h18: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h19: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h1a: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h1b: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h1c: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h1d: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h1e: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h1f: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h20: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h21: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h22: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h23: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h24: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h25: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h26: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h27: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h28: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h29: dct_cos_table = 32'h18056948; // = +0.375330
				6'h2a: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h2b: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h2c: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h2d: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h2e: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h2f: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h30: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h31: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h32: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h33: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h34: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h35: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h36: dct_cos_table = 32'h18056948; // = +0.375330
				6'h37: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h38: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h39: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h3a: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h3b: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h3c: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h3d: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h3e: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h3f: dct_cos_table = 32'hdf266bc8; // = -0.513280
			endcase
		6'h16:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h01: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h02: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h03: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h04: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h05: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h06: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h07: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h08: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h09: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h0a: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h0b: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h0c: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h0d: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h0e: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h0f: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h10: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h11: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h12: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h13: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h14: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h15: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h16: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h17: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h18: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h19: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h1a: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h1b: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h1c: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h1d: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h1e: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h1f: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h20: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h21: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h22: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h23: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h24: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h25: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h26: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h27: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h28: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h29: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h2a: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h2b: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h2c: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h2d: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h2e: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h2f: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h30: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h31: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h32: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h33: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h34: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h35: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h36: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h37: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h38: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h39: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h3a: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h3b: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h3c: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h3d: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h3e: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h3f: dct_cos_table = 32'h16a09e66; // = +0.353553
			endcase
		6'h17:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h01: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h02: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h03: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h04: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h05: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h06: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h07: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h08: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h09: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h0a: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h0b: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h0c: dct_cos_table = 32'h18056948; // = +0.375330
				6'h0d: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h0e: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h0f: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h10: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h11: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h12: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h13: dct_cos_table = 32'h18056948; // = +0.375330
				6'h14: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h15: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h16: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h17: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h18: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h19: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h1a: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h1b: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h1c: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h1d: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h1e: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h1f: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h20: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h21: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h22: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h23: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h24: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h25: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h26: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h27: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h28: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h29: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h2a: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h2b: dct_cos_table = 32'h18056948; // = +0.375330
				6'h2c: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h2d: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h2e: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h2f: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h30: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h31: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h32: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h33: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h34: dct_cos_table = 32'h18056948; // = +0.375330
				6'h35: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h36: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h37: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h38: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h39: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h3a: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h3b: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h3c: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h3d: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h3e: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h3f: dct_cos_table = 32'hf476f2d6; // = -0.180240
			endcase
		6'h18:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h01: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h02: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h03: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h04: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h05: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h06: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h07: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h08: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h09: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0a: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0b: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0e: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0f: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h10: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h11: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h12: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h13: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h14: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h15: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h16: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h17: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h18: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h19: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1a: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1e: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h20: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h21: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h22: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h23: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h24: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h25: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h26: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h27: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h28: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h29: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2a: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2b: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2c: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2f: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h30: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h31: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h32: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h33: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h34: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h35: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h36: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h37: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h38: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h39: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3a: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3b: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3f: dct_cos_table = 32'hda5f3a21; // = -0.587938
			endcase
		6'h19:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h01: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h02: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h03: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h04: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h05: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h06: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h07: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h08: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h09: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h0a: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h0b: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h0c: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h0d: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h0e: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h0f: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h10: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h11: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h12: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h13: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h14: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h15: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h16: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h17: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h18: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h19: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h1a: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h1b: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h1c: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h1d: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h1e: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h1f: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h20: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h21: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h22: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h23: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h24: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h25: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h26: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h27: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h28: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h29: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h2a: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h2b: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h2c: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h2d: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h2e: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h2f: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h30: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h31: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h32: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h33: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h34: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h35: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h36: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h37: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h38: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h39: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h3a: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h3b: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h3c: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h3d: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h3e: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h3f: dct_cos_table = 32'h34310a35; // = +0.815493
			endcase
		6'h1a:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h01: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h02: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h03: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h04: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h05: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h06: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h07: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h08: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h09: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h0a: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h0b: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h0c: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h0d: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h0e: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h0f: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h10: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h11: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h12: dct_cos_table = 32'h18056948; // = +0.375330
				6'h13: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h14: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h15: dct_cos_table = 32'h18056948; // = +0.375330
				6'h16: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h17: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h18: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h19: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h1a: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h1b: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h1c: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h1d: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h1e: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h1f: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h20: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h21: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h22: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h23: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h24: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h25: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h26: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h27: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h28: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h29: dct_cos_table = 32'h18056948; // = +0.375330
				6'h2a: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h2b: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h2c: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h2d: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h2e: dct_cos_table = 32'h18056948; // = +0.375330
				6'h2f: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h30: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h31: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h32: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h33: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h34: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h35: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h36: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h37: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h38: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h39: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h3a: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h3b: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h3c: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h3d: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h3e: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h3f: dct_cos_table = 32'hced62cf7; // = -0.768178
			endcase
		6'h1b:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h01: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h02: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h03: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h04: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h05: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h06: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h07: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h08: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h09: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h0a: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h0b: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h0c: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h0d: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h0e: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h0f: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h10: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h11: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h12: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h13: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h14: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h15: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h16: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h17: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h18: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h19: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h1a: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h1b: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h1c: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h1d: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h1e: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h1f: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h20: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h21: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h22: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h23: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h24: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h25: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h26: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h27: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h28: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h29: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h2a: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h2b: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h2c: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h2d: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h2e: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h2f: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h30: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h31: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h32: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h33: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h34: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h35: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h36: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h37: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h38: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h39: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h3a: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h3b: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h3c: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h3d: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h3e: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h3f: dct_cos_table = 32'h2c3ef153; // = +0.691342
			endcase
		6'h1c:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h01: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h02: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h03: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h04: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h05: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h06: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h07: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h08: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h09: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0b: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0d: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0f: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h10: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h11: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h12: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h13: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h14: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h15: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h16: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h17: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h18: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h19: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1d: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h20: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h21: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h22: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h23: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h24: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h25: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h26: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h27: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h28: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h29: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2b: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2c: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2d: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2e: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2f: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h30: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h31: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h32: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h33: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h34: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h35: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h36: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h37: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h38: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h39: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3b: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3d: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3e: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3f: dct_cos_table = 32'hda5f3a21; // = -0.587938
			endcase
		6'h1d:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h01: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h02: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h03: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h04: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h05: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h06: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h07: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h08: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h09: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h0a: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h0b: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h0c: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h0d: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h0e: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h0f: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h10: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h11: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h12: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h13: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h14: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h15: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h16: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h17: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h18: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h19: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h1a: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h1b: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h1c: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h1d: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h1e: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h1f: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h20: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h21: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h22: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h23: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h24: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h25: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h26: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h27: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h28: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h29: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h2a: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h2b: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h2c: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h2d: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h2e: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h2f: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h30: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h31: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h32: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h33: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h34: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h35: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h36: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h37: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h38: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h39: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h3a: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h3b: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h3c: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h3d: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h3e: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h3f: dct_cos_table = 32'h1d906bcf; // = +0.461940
			endcase
		6'h1e:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h01: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h02: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h03: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h04: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h05: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h06: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h07: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h08: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h09: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h0a: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h0b: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h0c: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h0d: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h0e: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h0f: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h10: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h11: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h12: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h13: dct_cos_table = 32'h18056948; // = +0.375330
				6'h14: dct_cos_table = 32'h18056948; // = +0.375330
				6'h15: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h16: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h17: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h18: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h19: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h1a: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h1b: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h1c: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h1d: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h1e: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h1f: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h20: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h21: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h22: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h23: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h24: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h25: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h26: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h27: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h28: dct_cos_table = 32'h18056948; // = +0.375330
				6'h29: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h2a: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h2b: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h2c: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h2d: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h2e: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h2f: dct_cos_table = 32'h18056948; // = +0.375330
				6'h30: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h31: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h32: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h33: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h34: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h35: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h36: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h37: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h38: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h39: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h3a: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h3b: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h3c: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h3d: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h3e: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h3f: dct_cos_table = 32'heba2c7e7; // = -0.318190
			endcase
		6'h1f:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h01: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h02: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h03: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h04: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h05: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h06: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h07: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h08: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h09: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h0a: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h0b: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h0c: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h0d: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h0e: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h0f: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h10: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h11: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h12: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h13: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h14: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h15: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h16: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h17: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h18: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h19: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h1a: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h1b: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h1c: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h1d: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h1e: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h1f: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h20: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h21: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h22: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h23: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h24: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h25: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h26: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h27: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h28: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h29: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h2a: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h2b: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h2c: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h2d: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h2e: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h2f: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h30: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h31: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h32: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h33: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h34: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h35: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h36: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h37: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h38: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h39: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h3a: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h3b: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h3c: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h3d: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h3e: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h3f: dct_cos_table = 32'h0a61ad13; // = +0.162212
			endcase
		6'h20:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h20000000; // = +0.500000
				6'h01: dct_cos_table = 32'h20000000; // = +0.500000
				6'h02: dct_cos_table = 32'h20000000; // = +0.500000
				6'h03: dct_cos_table = 32'h20000000; // = +0.500000
				6'h04: dct_cos_table = 32'h20000000; // = +0.500000
				6'h05: dct_cos_table = 32'h20000000; // = +0.500000
				6'h06: dct_cos_table = 32'h20000000; // = +0.500000
				6'h07: dct_cos_table = 32'h20000000; // = +0.500000
				6'h08: dct_cos_table = 32'he0000000; // = -0.500000
				6'h09: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0a: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0b: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0c: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0d: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0e: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0f: dct_cos_table = 32'he0000000; // = -0.500000
				6'h10: dct_cos_table = 32'he0000000; // = -0.500000
				6'h11: dct_cos_table = 32'he0000000; // = -0.500000
				6'h12: dct_cos_table = 32'he0000000; // = -0.500000
				6'h13: dct_cos_table = 32'he0000000; // = -0.500000
				6'h14: dct_cos_table = 32'he0000000; // = -0.500000
				6'h15: dct_cos_table = 32'he0000000; // = -0.500000
				6'h16: dct_cos_table = 32'he0000000; // = -0.500000
				6'h17: dct_cos_table = 32'he0000000; // = -0.500000
				6'h18: dct_cos_table = 32'h20000000; // = +0.500000
				6'h19: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1a: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1d: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1e: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1f: dct_cos_table = 32'h20000000; // = +0.500000
				6'h20: dct_cos_table = 32'h20000000; // = +0.500000
				6'h21: dct_cos_table = 32'h20000000; // = +0.500000
				6'h22: dct_cos_table = 32'h20000000; // = +0.500000
				6'h23: dct_cos_table = 32'h20000000; // = +0.500000
				6'h24: dct_cos_table = 32'h20000000; // = +0.500000
				6'h25: dct_cos_table = 32'h20000000; // = +0.500000
				6'h26: dct_cos_table = 32'h20000000; // = +0.500000
				6'h27: dct_cos_table = 32'h20000000; // = +0.500000
				6'h28: dct_cos_table = 32'he0000000; // = -0.500000
				6'h29: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2a: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2b: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2c: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2d: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2e: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2f: dct_cos_table = 32'he0000000; // = -0.500000
				6'h30: dct_cos_table = 32'he0000000; // = -0.500000
				6'h31: dct_cos_table = 32'he0000000; // = -0.500000
				6'h32: dct_cos_table = 32'he0000000; // = -0.500000
				6'h33: dct_cos_table = 32'he0000000; // = -0.500000
				6'h34: dct_cos_table = 32'he0000000; // = -0.500000
				6'h35: dct_cos_table = 32'he0000000; // = -0.500000
				6'h36: dct_cos_table = 32'he0000000; // = -0.500000
				6'h37: dct_cos_table = 32'he0000000; // = -0.500000
				6'h38: dct_cos_table = 32'h20000000; // = +0.500000
				6'h39: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3a: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3d: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3e: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3f: dct_cos_table = 32'h20000000; // = +0.500000
			endcase
		6'h21:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h01: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h02: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h03: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h04: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h05: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h06: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h07: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h08: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h09: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0a: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0b: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0c: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0d: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0e: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0f: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h10: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h11: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h12: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h13: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h14: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h15: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h16: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h17: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h18: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h19: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1b: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h20: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h21: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h22: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h23: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h24: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h25: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h26: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h27: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h28: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h29: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2a: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2b: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2c: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2d: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2e: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2f: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h30: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h31: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h32: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h33: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h34: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h35: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h36: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h37: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h38: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h39: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3b: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
			endcase
		6'h22:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h01: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h02: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h03: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h04: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h05: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h06: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h07: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h08: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h09: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0a: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0b: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0c: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0d: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0e: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h0f: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h10: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h11: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h12: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h13: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h14: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h15: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h16: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h17: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h18: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h19: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h1a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h1f: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h20: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h21: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h22: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h23: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h24: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h25: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h26: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h27: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h28: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h29: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2a: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2b: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2c: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2d: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2e: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h2f: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h30: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h31: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h32: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h33: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h34: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h35: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h36: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h37: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h38: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h39: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3f: dct_cos_table = 32'h29cf5d22; // = +0.653281
			endcase
		6'h23:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h01: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h02: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h03: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h04: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h05: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h06: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h07: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h08: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h09: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0a: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0b: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0d: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0e: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0f: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h10: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h11: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h12: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h13: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h14: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h15: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h16: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h17: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h18: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h19: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1c: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1f: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h20: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h21: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h22: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h23: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h24: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h25: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h26: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h27: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h28: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h29: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2a: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2b: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2d: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2e: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2f: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h30: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h31: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h32: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h33: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h34: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h35: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h36: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h37: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h38: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h39: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3c: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3f: dct_cos_table = 32'hda5f3a21; // = -0.587938
			endcase
		6'h24:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h01: dct_cos_table = 32'he0000000; // = -0.500000
				6'h02: dct_cos_table = 32'he0000001; // = -0.500000
				6'h03: dct_cos_table = 32'h20000000; // = +0.500000
				6'h04: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h05: dct_cos_table = 32'he0000000; // = -0.500000
				6'h06: dct_cos_table = 32'he0000001; // = -0.500000
				6'h07: dct_cos_table = 32'h20000000; // = +0.500000
				6'h08: dct_cos_table = 32'he0000000; // = -0.500000
				6'h09: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0a: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h0b: dct_cos_table = 32'he0000000; // = -0.500000
				6'h0c: dct_cos_table = 32'he0000001; // = -0.500000
				6'h0d: dct_cos_table = 32'h20000000; // = +0.500000
				6'h0e: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h0f: dct_cos_table = 32'he0000000; // = -0.500000
				6'h10: dct_cos_table = 32'he0000001; // = -0.500000
				6'h11: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h12: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h13: dct_cos_table = 32'he0000000; // = -0.500000
				6'h14: dct_cos_table = 32'he0000001; // = -0.500000
				6'h15: dct_cos_table = 32'h20000000; // = +0.500000
				6'h16: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h17: dct_cos_table = 32'he0000000; // = -0.500000
				6'h18: dct_cos_table = 32'h20000000; // = +0.500000
				6'h19: dct_cos_table = 32'he0000000; // = -0.500000
				6'h1a: dct_cos_table = 32'he0000000; // = -0.500000
				6'h1b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h1c: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h1d: dct_cos_table = 32'he0000000; // = -0.500000
				6'h1e: dct_cos_table = 32'he0000001; // = -0.500000
				6'h1f: dct_cos_table = 32'h20000000; // = +0.500000
				6'h20: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h21: dct_cos_table = 32'he0000001; // = -0.500000
				6'h22: dct_cos_table = 32'he0000001; // = -0.500000
				6'h23: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h24: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h25: dct_cos_table = 32'he0000000; // = -0.500000
				6'h26: dct_cos_table = 32'he0000001; // = -0.500000
				6'h27: dct_cos_table = 32'h20000000; // = +0.500000
				6'h28: dct_cos_table = 32'he0000000; // = -0.500000
				6'h29: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2a: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2b: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2c: dct_cos_table = 32'he0000000; // = -0.500000
				6'h2d: dct_cos_table = 32'h20000000; // = +0.500000
				6'h2e: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h2f: dct_cos_table = 32'he0000000; // = -0.500000
				6'h30: dct_cos_table = 32'he0000001; // = -0.500000
				6'h31: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h32: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h33: dct_cos_table = 32'he0000001; // = -0.500000
				6'h34: dct_cos_table = 32'he0000001; // = -0.500000
				6'h35: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h36: dct_cos_table = 32'h1fffffff; // = +0.500000
				6'h37: dct_cos_table = 32'he0000000; // = -0.500000
				6'h38: dct_cos_table = 32'h20000000; // = +0.500000
				6'h39: dct_cos_table = 32'he0000000; // = -0.500000
				6'h3a: dct_cos_table = 32'he0000000; // = -0.500000
				6'h3b: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3c: dct_cos_table = 32'h20000000; // = +0.500000
				6'h3d: dct_cos_table = 32'he0000000; // = -0.500000
				6'h3e: dct_cos_table = 32'he0000000; // = -0.500000
				6'h3f: dct_cos_table = 32'h20000000; // = +0.500000
			endcase
		6'h25:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h01: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h02: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h03: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h04: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h05: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h06: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h07: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h08: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h09: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0a: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h0b: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0c: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0d: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h0e: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0f: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h10: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h11: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h12: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h13: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h14: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h15: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h16: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h17: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h18: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h19: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h1b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h1e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h20: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h21: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h22: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h23: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h24: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h25: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h26: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h27: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h28: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h29: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2a: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2b: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2c: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2d: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2e: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2f: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h30: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h31: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h32: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h33: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h34: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h35: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h36: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h37: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h38: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h39: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3f: dct_cos_table = 32'he6db9640; // = -0.392847
			endcase
		6'h26:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h01: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h02: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h03: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h04: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h05: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h06: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h07: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h08: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h09: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0a: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0b: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0c: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h0d: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0e: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0f: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h10: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h11: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h12: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h13: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h14: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h15: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h16: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h17: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h18: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h19: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h1b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h1e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h1f: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h20: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h21: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h22: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h23: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h24: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h25: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h26: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h27: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h28: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h29: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2a: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2b: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2c: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h2d: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2e: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2f: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h30: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h31: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h32: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h33: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h34: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h35: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h36: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h37: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h38: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h39: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h3e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h3f: dct_cos_table = 32'h11517a7b; // = +0.270598
			endcase
		6'h27:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h01: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h02: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h03: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h04: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h05: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h06: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h07: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h08: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h09: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0a: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h0b: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0c: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0d: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h0e: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0f: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h10: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h11: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h12: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h13: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h14: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h15: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h16: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h17: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h18: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h19: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h1a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1c: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h1f: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h20: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h21: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h22: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h23: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h24: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h25: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h26: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h27: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h28: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h29: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h2a: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2b: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h2c: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h2d: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2e: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h2f: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h30: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h31: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h32: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h33: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h34: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h35: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h36: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h37: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h38: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h39: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h3b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h3c: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h3d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h3e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3f: dct_cos_table = 32'hf72bd511; // = -0.137950
			endcase
		6'h28:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h01: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h02: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h03: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h04: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h05: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h06: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h07: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h08: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h09: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0c: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0d: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0e: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h10: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h11: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h12: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h13: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h14: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h15: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h16: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h17: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h18: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h19: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1c: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1d: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1e: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1f: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h20: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h21: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h22: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h23: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h24: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h25: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h26: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h27: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h28: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h29: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2a: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2b: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2e: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2f: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h30: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h31: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h32: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h33: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h34: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h35: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h36: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h37: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h38: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h39: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3a: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3e: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3f: dct_cos_table = 32'he6db9640; // = -0.392847
			endcase
		6'h29:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h01: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h02: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h03: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h04: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h05: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h06: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h07: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h08: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h09: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h0a: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h0b: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h0c: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h0d: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h0e: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h0f: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h10: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h11: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h12: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h13: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h14: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h15: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h16: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h17: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h18: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h19: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h1a: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h1b: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h1c: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h1d: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h1e: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h1f: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h20: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h21: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h22: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h23: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h24: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h25: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h26: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h27: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h28: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h29: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h2a: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h2b: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h2c: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h2d: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h2e: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h2f: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h30: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h31: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h32: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h33: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h34: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h35: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h36: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h37: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h38: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h39: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h3a: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h3b: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h3c: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h3d: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h3e: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h3f: dct_cos_table = 32'h22df8fb9; // = +0.544895
			endcase
		6'h2a:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h01: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h02: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h03: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h04: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h05: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h06: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h07: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h08: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h09: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h0a: dct_cos_table = 32'h18056948; // = +0.375330
				6'h0b: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h0c: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h0d: dct_cos_table = 32'h18056948; // = +0.375330
				6'h0e: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h0f: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h10: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h11: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h12: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h13: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h14: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h15: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h16: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h17: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h18: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h19: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h1a: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h1b: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h1c: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h1d: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h1e: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h1f: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h20: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h21: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h22: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h23: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h24: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h25: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h26: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h27: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h28: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h29: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h2a: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h2b: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h2c: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h2d: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h2e: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h2f: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h30: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h31: dct_cos_table = 32'h18056948; // = +0.375330
				6'h32: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h33: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h34: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h35: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h36: dct_cos_table = 32'h18056948; // = +0.375330
				6'h37: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h38: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h39: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h3a: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h3b: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h3c: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h3d: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h3e: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h3f: dct_cos_table = 32'hdf266bc8; // = -0.513280
			endcase
		6'h2b:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h01: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h02: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h03: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h04: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h05: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h06: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h07: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h08: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h09: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h0a: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h0b: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h0c: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h0d: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h0e: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h0f: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h10: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h11: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h12: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h13: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h14: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h15: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h16: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h17: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h18: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h19: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h1a: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h1b: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h1c: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h1d: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h1e: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h1f: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h20: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h21: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h22: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h23: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h24: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h25: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h26: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h27: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h28: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h29: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h2a: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h2b: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h2c: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h2d: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h2e: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h2f: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h30: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h31: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h32: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h33: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h34: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h35: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h36: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h37: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h38: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h39: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h3a: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h3b: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h3c: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h3d: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h3e: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h3f: dct_cos_table = 32'h1d906bcf; // = +0.461940
			endcase
		6'h2c:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h01: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h02: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h03: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h04: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h05: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h06: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h07: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h08: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h09: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0a: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0c: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h0d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h0f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h10: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h11: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h12: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h13: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h14: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h15: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h16: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h17: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h18: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h19: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1a: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1b: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1c: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h1d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h1f: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h20: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h21: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h22: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h23: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h24: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h25: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h26: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h27: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h28: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h29: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2b: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h2d: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h2f: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h30: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h31: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h32: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h33: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h34: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h35: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h36: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h37: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h38: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h39: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h3d: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h3f: dct_cos_table = 32'he6db9640; // = -0.392847
			endcase
		6'h2d:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h01: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h02: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h03: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h04: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h05: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h06: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h07: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h08: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h09: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h0a: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h0b: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h0c: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h0d: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h0e: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h0f: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h10: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h11: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h12: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h13: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h14: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h15: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h16: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h17: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h18: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h19: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h1a: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h1b: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h1c: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h1d: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h1e: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h1f: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h20: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h21: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h22: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h23: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h24: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h25: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h26: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h27: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h28: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h29: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h2a: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h2b: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h2c: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h2d: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h2e: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h2f: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h30: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h31: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h32: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h33: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h34: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h35: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h36: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h37: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h38: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h39: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h3a: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h3b: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h3c: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h3d: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h3e: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h3f: dct_cos_table = 32'h13c10eac; // = +0.308658
			endcase
		6'h2e:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h01: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h02: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h03: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h04: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h05: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h06: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h07: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h08: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h09: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h0a: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h0b: dct_cos_table = 32'h18056948; // = +0.375330
				6'h0c: dct_cos_table = 32'h18056948; // = +0.375330
				6'h0d: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h0e: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h0f: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h10: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h11: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h12: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h13: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h14: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h15: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h16: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h17: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h18: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h19: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h1a: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h1b: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h1c: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h1d: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h1e: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h1f: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h20: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h21: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h22: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h23: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h24: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h25: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h26: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h27: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h28: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h29: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h2a: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h2b: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h2c: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h2d: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h2e: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h2f: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h30: dct_cos_table = 32'h18056948; // = +0.375330
				6'h31: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h32: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h33: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h34: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h35: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h36: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h37: dct_cos_table = 32'h18056948; // = +0.375330
				6'h38: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h39: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h3a: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h3b: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h3c: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h3d: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h3e: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h3f: dct_cos_table = 32'hf264a36a; // = -0.212608
			endcase
		6'h2f:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h01: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h02: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h03: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h04: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h05: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h06: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h07: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h08: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h09: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h0a: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h0b: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h0c: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h0d: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h0e: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h0f: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h10: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h11: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h12: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h13: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h14: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h15: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h16: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h17: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h18: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h19: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h1a: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h1b: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h1c: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h1d: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h1e: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h1f: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h20: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h21: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h22: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h23: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h24: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h25: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h26: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h27: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h28: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h29: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h2a: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h2b: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h2c: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h2d: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h2e: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h2f: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h30: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h31: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h32: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h33: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h34: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h35: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h36: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h37: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h38: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h39: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h3a: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h3b: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h3c: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h3d: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h3e: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h3f: dct_cos_table = 32'h06efcd68; // = +0.108386
			endcase
		6'h30:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h01: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h02: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h03: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h04: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h05: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h06: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h07: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h08: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h09: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0a: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0d: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0f: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h10: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h11: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h12: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h13: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h14: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h15: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h16: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h17: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h18: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h19: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1e: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1f: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h20: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h21: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h22: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h23: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h24: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h25: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h26: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h27: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h28: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h29: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2b: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2c: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2e: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2f: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h30: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h31: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h32: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h33: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h34: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h35: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h36: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h37: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h38: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h39: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3a: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3b: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3c: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3d: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3f: dct_cos_table = 32'h11517a7b; // = +0.270598
			endcase
		6'h31:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h18056948; // = +0.375330
				6'h01: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h02: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h03: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h04: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h05: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h06: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h07: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h08: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h09: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h0a: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h0b: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h0c: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h0d: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h0e: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h0f: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h10: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h11: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h12: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h13: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h14: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h15: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h16: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h17: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h18: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h19: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h1a: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h1b: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h1c: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h1d: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h1e: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h1f: dct_cos_table = 32'h18056948; // = +0.375330
				6'h20: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h21: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h22: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h23: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h24: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h25: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h26: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h27: dct_cos_table = 32'h18056948; // = +0.375330
				6'h28: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h29: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h2a: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h2b: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h2c: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h2d: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h2e: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h2f: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h30: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h31: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h32: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h33: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h34: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h35: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h36: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h37: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h38: dct_cos_table = 32'h18056948; // = +0.375330
				6'h39: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h3a: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h3b: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h3c: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h3d: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h3e: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h3f: dct_cos_table = 32'he7fa96b8; // = -0.375330
			endcase
		6'h32:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h01: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h02: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h03: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h04: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h05: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h06: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h07: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h08: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h09: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h0a: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h0b: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h0c: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h0d: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h0e: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h0f: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h10: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h11: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h12: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h13: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h14: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h15: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h16: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h17: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h18: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h19: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h1a: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h1b: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h1c: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h1d: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h1e: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h1f: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h20: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h21: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h22: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h23: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h24: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h25: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h26: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h27: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h28: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h29: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h2a: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h2b: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h2c: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h2d: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h2e: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h2f: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h30: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h31: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h32: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h33: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h34: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h35: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h36: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h37: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h38: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h39: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h3a: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h3b: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h3c: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h3d: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h3e: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h3f: dct_cos_table = 32'h16a09e66; // = +0.353553
			endcase
		6'h33:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h01: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h02: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h03: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h04: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h05: dct_cos_table = 32'h18056948; // = +0.375330
				6'h06: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h07: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h08: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h09: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h0a: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h0b: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h0c: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h0d: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h0e: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h0f: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h10: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h11: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h12: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h13: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h14: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h15: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h16: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h17: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h18: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h19: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h1a: dct_cos_table = 32'h18056948; // = +0.375330
				6'h1b: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h1c: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h1d: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h1e: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h1f: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h20: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h21: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h22: dct_cos_table = 32'h18056948; // = +0.375330
				6'h23: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h24: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h25: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h26: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h27: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h28: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h29: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h2a: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h2b: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h2c: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h2d: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h2e: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h2f: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h30: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h31: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h32: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h33: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h34: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h35: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h36: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h37: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h38: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h39: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h3a: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h3b: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h3c: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h3d: dct_cos_table = 32'h18056948; // = +0.375330
				6'h3e: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h3f: dct_cos_table = 32'heba2c7e7; // = -0.318190
			endcase
		6'h34:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h01: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h02: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h03: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h04: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h05: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h06: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h07: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h08: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h09: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0a: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0b: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0c: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h0d: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0e: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h0f: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h10: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h11: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h12: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h13: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h14: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h15: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h16: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h17: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h18: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h19: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h1a: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h1b: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1c: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h1d: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h1e: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h1f: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h20: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h21: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h22: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h23: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h24: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h25: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h26: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h27: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h28: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h29: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2a: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2b: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2c: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h2d: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2e: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h2f: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h30: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h31: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h32: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h33: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h34: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h35: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h36: dct_cos_table = 32'h29cf5d22; // = +0.653281
				6'h37: dct_cos_table = 32'hd630a2de; // = -0.653281
				6'h38: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h39: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3a: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3b: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3c: dct_cos_table = 32'h11517a7b; // = +0.270598
				6'h3d: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3e: dct_cos_table = 32'heeae8585; // = -0.270598
				6'h3f: dct_cos_table = 32'h11517a7b; // = +0.270598
			endcase
		6'h35:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h01: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h02: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h03: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h04: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h05: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h06: dct_cos_table = 32'h18056948; // = +0.375330
				6'h07: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h08: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h09: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h0a: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h0b: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h0c: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h0d: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h0e: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h0f: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h10: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h11: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h12: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h13: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h14: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h15: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h16: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h17: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h18: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h19: dct_cos_table = 32'h18056948; // = +0.375330
				6'h1a: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h1b: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h1c: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h1d: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h1e: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h1f: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h20: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h21: dct_cos_table = 32'h18056948; // = +0.375330
				6'h22: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h23: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h24: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h25: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h26: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h27: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h28: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h29: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h2a: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h2b: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h2c: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h2d: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h2e: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h2f: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h30: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h31: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h32: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h33: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h34: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h35: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h36: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h37: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h38: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h39: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h3a: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h3b: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h3c: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h3d: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h3e: dct_cos_table = 32'h18056948; // = +0.375330
				6'h3f: dct_cos_table = 32'hf264a36a; // = -0.212608
			endcase
		6'h36:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h01: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h02: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h03: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h04: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h05: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h06: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h07: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h08: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h09: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h0a: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h0b: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h0c: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h0d: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h0e: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h0f: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h10: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h11: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h12: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h13: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h14: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h15: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h16: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h17: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h18: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h19: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h1a: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h1b: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h1c: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h1d: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h1e: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h1f: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h20: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h21: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h22: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h23: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h24: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h25: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h26: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h27: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h28: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h29: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h2a: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h2b: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h2c: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h2d: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h2e: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h2f: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h30: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h31: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h32: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h33: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h34: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h35: dct_cos_table = 32'hc95f619a; // = -0.853553
				6'h36: dct_cos_table = 32'h36a09e66; // = +0.853553
				6'h37: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h38: dct_cos_table = 32'h095f6199; // = +0.146447
				6'h39: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h3a: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h3b: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h3c: dct_cos_table = 32'hf6a09e67; // = -0.146447
				6'h3d: dct_cos_table = 32'h16a09e66; // = +0.353553
				6'h3e: dct_cos_table = 32'he95f619a; // = -0.353553
				6'h3f: dct_cos_table = 32'h095f6199; // = +0.146447
			endcase
		6'h37:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h01: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h02: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h03: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h04: dct_cos_table = 32'h18056948; // = +0.375330
				6'h05: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h06: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h07: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h08: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h09: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h0a: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h0b: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h0c: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h0d: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h0e: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h0f: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h10: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h11: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h12: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h13: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h14: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h15: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h16: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h17: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h18: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h19: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h1a: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h1b: dct_cos_table = 32'h18056948; // = +0.375330
				6'h1c: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h1d: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h1e: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h1f: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h20: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h21: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h22: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h23: dct_cos_table = 32'h18056948; // = +0.375330
				6'h24: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h25: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h26: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h27: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h28: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h29: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h2a: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h2b: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h2c: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h2d: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h2e: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h2f: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h30: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h31: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h32: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h33: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h34: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h35: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h36: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h37: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h38: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h39: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h3a: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h3b: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h3c: dct_cos_table = 32'h18056948; // = +0.375330
				6'h3d: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h3e: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h3f: dct_cos_table = 32'hfb38ce5a; // = -0.074658
			endcase
		6'h38:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h01: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h02: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h03: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h04: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h05: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h06: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h07: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h08: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h09: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0a: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0d: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0e: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h10: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h11: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h12: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h13: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h14: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h15: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h16: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h17: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h18: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h19: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1a: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1c: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1d: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1e: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h20: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h21: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h22: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h23: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h24: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h25: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h26: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h27: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h28: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h29: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2a: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2b: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2d: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2e: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2f: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h30: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h31: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h32: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h33: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h34: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h35: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h36: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h37: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h38: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h39: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3a: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3b: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3d: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3e: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3f: dct_cos_table = 32'hf72bd511; // = -0.137950
			endcase
		6'h39:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h01: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h02: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h03: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h04: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h05: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h06: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h07: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h08: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h09: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h0a: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h0b: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h0c: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h0d: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h0e: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h0f: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h10: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h11: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h12: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h13: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h14: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h15: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h16: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h17: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h18: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h19: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h1a: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h1b: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h1c: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h1d: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h1e: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h1f: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h20: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h21: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h22: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h23: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h24: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h25: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h26: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h27: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h28: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h29: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h2a: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h2b: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h2c: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h2d: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h2e: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h2f: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h30: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h31: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h32: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h33: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h34: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h35: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h36: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h37: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h38: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h39: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h3a: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h3b: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h3c: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h3d: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h3e: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h3f: dct_cos_table = 32'h0c3ef153; // = +0.191342
			endcase
		6'h3a:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h01: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h02: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h03: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h04: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h05: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h06: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h07: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h08: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h09: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h0a: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h0b: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h0c: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h0d: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h0e: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h0f: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h10: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h11: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h12: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h13: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h14: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h15: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h16: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h17: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h18: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h19: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h1a: dct_cos_table = 32'h18056948; // = +0.375330
				6'h1b: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h1c: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h1d: dct_cos_table = 32'h18056948; // = +0.375330
				6'h1e: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h1f: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h20: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h21: dct_cos_table = 32'h18056948; // = +0.375330
				6'h22: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h23: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h24: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h25: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h26: dct_cos_table = 32'h18056948; // = +0.375330
				6'h27: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h28: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h29: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h2a: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h2b: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h2c: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h2d: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h2e: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h2f: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h30: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h31: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h32: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h33: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h34: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h35: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h36: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h37: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h38: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h39: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h3a: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h3b: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h3c: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h3d: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h3e: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h3f: dct_cos_table = 32'hf476f2d6; // = -0.180240
			endcase
		6'h3b:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h01: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h02: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h03: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h04: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h05: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h06: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h07: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h08: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h09: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h0a: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h0b: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h0c: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h0d: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h0e: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h0f: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h10: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h11: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h12: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h13: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h14: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h15: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h16: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h17: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h18: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h19: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h1a: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h1b: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h1c: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h1d: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h1e: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h1f: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h20: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h21: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h22: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h23: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h24: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h25: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h26: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h27: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h28: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h29: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h2a: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h2b: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h2c: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h2d: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h2e: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h2f: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h30: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h31: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h32: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h33: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h34: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h35: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h36: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h37: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h38: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h39: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h3a: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h3b: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h3c: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h3d: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h3e: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h3f: dct_cos_table = 32'h0a61ad13; // = +0.162212
			endcase
		6'h3c:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h01: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h02: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h03: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h04: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h05: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h06: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h07: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h08: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h09: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0a: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0b: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0c: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h0d: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0e: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h0f: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h10: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h11: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h12: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h13: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h14: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h15: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h16: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h17: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h18: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h19: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1a: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1b: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1c: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h1d: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1e: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h1f: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h20: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h21: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h22: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h23: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h24: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h25: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h26: dct_cos_table = 32'hd39d5e9e; // = -0.693520
				6'h27: dct_cos_table = 32'h2c62a162; // = +0.693520
				6'h28: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h29: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2a: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2b: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2c: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h2d: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2e: dct_cos_table = 32'h25a0c5df; // = +0.587938
				6'h2f: dct_cos_table = 32'hda5f3a21; // = -0.587938
				6'h30: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h31: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h32: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h33: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h34: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h35: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h36: dct_cos_table = 32'he6db9640; // = -0.392847
				6'h37: dct_cos_table = 32'h192469c0; // = +0.392847
				6'h38: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h39: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3a: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3b: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3c: dct_cos_table = 32'hf72bd511; // = -0.137950
				6'h3d: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3e: dct_cos_table = 32'h08d42aef; // = +0.137950
				6'h3f: dct_cos_table = 32'hf72bd511; // = -0.137950
			endcase
		6'h3d:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h01: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h02: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h03: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h04: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h05: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h06: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h07: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h08: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h09: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h0a: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h0b: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h0c: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h0d: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h0e: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h0f: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h10: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h11: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h12: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h13: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h14: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h15: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h16: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h17: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h18: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h19: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h1a: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h1b: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h1c: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h1d: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h1e: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h1f: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h20: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h21: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h22: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h23: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h24: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h25: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h26: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h27: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h28: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h29: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h2a: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h2b: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h2c: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h2d: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h2e: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h2f: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h30: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h31: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h32: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h33: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h34: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h35: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h36: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h37: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h38: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h39: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h3a: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h3b: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h3c: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h3d: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h3e: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h3f: dct_cos_table = 32'h06efcd68; // = +0.108386
			endcase
		6'h3e:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h01: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h02: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h03: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h04: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h05: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h06: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h07: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h08: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h09: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h0a: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h0b: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h0c: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h0d: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h0e: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h0f: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h10: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h11: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h12: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h13: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h14: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h15: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h16: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h17: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h18: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h19: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h1a: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h1b: dct_cos_table = 32'h18056948; // = +0.375330
				6'h1c: dct_cos_table = 32'h18056948; // = +0.375330
				6'h1d: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h1e: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h1f: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h20: dct_cos_table = 32'h18056948; // = +0.375330
				6'h21: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h22: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h23: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h24: dct_cos_table = 32'he7fa96b8; // = -0.375330
				6'h25: dct_cos_table = 32'h39fdfdf9; // = +0.906127
				6'h26: dct_cos_table = 32'hc6020207; // = -0.906127
				6'h27: dct_cos_table = 32'h18056948; // = +0.375330
				6'h28: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h29: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h2a: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h2b: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h2c: dct_cos_table = 32'h145d3819; // = +0.318190
				6'h2d: dct_cos_table = 32'hced62cf7; // = -0.768178
				6'h2e: dct_cos_table = 32'h3129d309; // = +0.768178
				6'h2f: dct_cos_table = 32'heba2c7e7; // = -0.318190
				6'h30: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h31: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h32: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h33: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h34: dct_cos_table = 32'hf264a36a; // = -0.212608
				6'h35: dct_cos_table = 32'h20d99438; // = +0.513280
				6'h36: dct_cos_table = 32'hdf266bc8; // = -0.513280
				6'h37: dct_cos_table = 32'h0d9b5c96; // = +0.212608
				6'h38: dct_cos_table = 32'hfb38ce5a; // = -0.074658
				6'h39: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h3a: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h3b: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h3c: dct_cos_table = 32'h04c731a6; // = +0.074658
				6'h3d: dct_cos_table = 32'hf476f2d6; // = -0.180240
				6'h3e: dct_cos_table = 32'h0b890d2a; // = +0.180240
				6'h3f: dct_cos_table = 32'hfb38ce5a; // = -0.074658
			endcase
		6'h3f:
			case ( {y,x} )	// synopsys full_case parallel_case
				6'h00: dct_cos_table = 32'h026f9430; // = +0.038060
				6'h01: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h02: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h03: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h04: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h05: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h06: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h07: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h08: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h09: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h0a: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h0b: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h0c: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h0d: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h0e: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h0f: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h10: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h11: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h12: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h13: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h14: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h15: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h16: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h17: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h18: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h19: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h1a: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h1b: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h1c: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h1d: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h1e: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h1f: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h20: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h21: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h22: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h23: dct_cos_table = 32'hc26f9431; // = -0.961940
				6'h24: dct_cos_table = 32'h3d906bcf; // = +0.961940
				6'h25: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h26: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h27: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h28: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h29: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h2a: dct_cos_table = 32'hd3c10ead; // = -0.691342
				6'h2b: dct_cos_table = 32'h34310a35; // = +0.815493
				6'h2c: dct_cos_table = 32'hcbcef5cb; // = -0.815493
				6'h2d: dct_cos_table = 32'h2c3ef153; // = +0.691342
				6'h2e: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h2f: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h30: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h31: dct_cos_table = 32'hec3ef154; // = -0.308658
				6'h32: dct_cos_table = 32'h1d906bcf; // = +0.461940
				6'h33: dct_cos_table = 32'hdd207047; // = -0.544895
				6'h34: dct_cos_table = 32'h22df8fb9; // = +0.544895
				6'h35: dct_cos_table = 32'he26f9431; // = -0.461940
				6'h36: dct_cos_table = 32'h13c10eac; // = +0.308658
				6'h37: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h38: dct_cos_table = 32'hfd906bd0; // = -0.038060
				6'h39: dct_cos_table = 32'h06efcd68; // = +0.108386
				6'h3a: dct_cos_table = 32'hf59e52ed; // = -0.162212
				6'h3b: dct_cos_table = 32'h0c3ef153; // = +0.191342
				6'h3c: dct_cos_table = 32'hf3c10ead; // = -0.191342
				6'h3d: dct_cos_table = 32'h0a61ad13; // = +0.162212
				6'h3e: dct_cos_table = 32'hf9103298; // = -0.108386
				6'h3f: dct_cos_table = 32'h026f9430; // = +0.038060
			endcase
	endcase

end
endfunction


