`timescale 1ns / 1ps //specifies the time units and time precision for the simulation
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 15:26:43
// Design Name: 
// Module Name: my_control_module_simulation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//Testbenches are used to verify the functionality of a design by providing inputs (stimuli) and observing the outputs.

module my_control_module_simulation(

    ); //does not have any input or output ports because its purpose is to simulate the functionality of another module, this module is the testbench
    
    //Simulation Inputs
    //The testbench will drive values for these signals (A and B) to test the module.
    reg A;
    reg B;
    
    //Simulation Outputs
    //These represent the outputs of the module being tested. 
    wire LED1;
    wire LED2;
    wire LED3;
    
    //Instantion of the module to be simulated
    //Connects the inputs (A, B) and outputs (LED1, LED2, LED3) of the module to the corresponding testbench signals.
    my_control_module dut(A, B, LED1, LED2, LED3);
    
    //Stimuli
    //waits for 10 simulation time units.
    initial begin
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
    end
     
endmodule
