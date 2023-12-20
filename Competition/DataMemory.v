    `timescale 1ns/1ps
    
    module DataMemory(
        //Absolute Reference in data memory for first pixel
        input [15:0] i,

        output reg [15:0] MEM_Index,

        //Output window pixels 4x4
        output reg [8:0] window0,
        output reg [8:0] window1,
        output reg [8:0] window2,
        output reg [8:0] window3,
        output reg [8:0] window4,
        output reg [8:0] window5,
        output reg [8:0] window6,
        output reg [8:0] window7,
        output reg [8:0] window8,
        output reg [8:0] window9,
        output reg [8:0] window10,
        output reg [8:0] window11,
        output reg [8:0] window12,
        output reg [8:0] window13,
        output reg [8:0] window14,
        output reg [8:0] window15,
        
        //output frame pixels for half of one row of 4x4 blocks
        output reg [8:0] frame0,
        output reg [8:0] frame1,
        output reg [8:0] frame2,
        output reg [8:0] frame3,
        output reg [8:0] frame4,
        output reg [8:0] frame5,
        output reg [8:0] frame6,
        output reg [8:0] frame64,
        output reg [8:0] frame65,
        output reg [8:0] frame66,
        output reg [8:0] frame67,
        output reg [8:0] frame68,
        output reg [8:0] frame69,
        output reg [8:0] frame70,
        output reg [8:0] frame128,
        output reg [8:0] frame129,
        output reg [8:0] frame130,
        output reg [8:0] frame131,
        output reg [8:0] frame132,
        output reg [8:0] frame133,
        output reg [8:0] frame134,
        output reg [8:0] frame192,
        output reg [8:0] frame193,
        output reg [8:0] frame194,
        output reg [8:0] frame195,
        output reg [8:0] frame196,
        output reg [8:0] frame197,
        output reg [8:0] frame198,
        output reg [8:0] frame256,
        output reg [8:0] frame257,
        output reg [8:0] frame258,
        output reg [8:0] frame259,
        output reg [8:0] frame260,
        output reg [8:0] frame261,
        output reg [8:0] frame262,
        output reg [8:0] frame320,
        output reg [8:0] frame321,
        output reg [8:0] frame322,
        output reg [8:0] frame323,
        output reg [8:0] frame324,
        output reg [8:0] frame325,
        output reg [8:0] frame326,
        output reg [8:0] frame384,
        output reg [8:0] frame385,
        output reg [8:0] frame386,
        output reg [8:0] frame387,
        output reg [8:0] frame388,
        output reg [8:0] frame389,
        output reg [8:0] frame390,
        output reg [8:0] frame448,
        output reg [8:0] frame449,
        output reg [8:0] frame450,
        output reg [8:0] frame451,
        output reg [8:0] frame452,
        output reg [8:0] frame453,
        output reg [8:0] frame454,
        output reg [8:0] frame512,
        output reg [8:0] frame513,
        output reg [8:0] frame514,
        output reg [8:0] frame515,
        output reg [8:0] frame516,
        output reg [8:0] frame517,
        output reg [8:0] frame518,
        output reg [8:0] frame576,
        output reg [8:0] frame577,
        output reg [8:0] frame578,
        output reg [8:0] frame579,
        output reg [8:0] frame580,
        output reg [8:0] frame581,
        output reg [8:0] frame582,
        output reg [8:0] frame640,
        output reg [8:0] frame641,
        output reg [8:0] frame642,
        output reg [8:0] frame643,
        output reg [8:0] frame644,
        output reg [8:0] frame645,
        output reg [8:0] frame646
    );

        reg [8:0] InsaneMemory [4117: 0];

        initial begin
            $readmemh("data_memory.mem", InsaneMemory);
        end

        always @(i)begin
            MEM_Index <= i[11:0];

            window0 <= InsaneMemory[4100];
            window1 <= InsaneMemory[4101];
            window2 <= InsaneMemory[4102];
            window3 <= InsaneMemory[4103];
            window4 <= InsaneMemory[4104];
            window5 <= InsaneMemory[4105];
            window6 <= InsaneMemory[4106];
            window7 <= InsaneMemory[4107];
            window8 <= InsaneMemory[4108];
            window9 <= InsaneMemory[4109];
            window10 <= InsaneMemory[4110];
            window11 <= InsaneMemory[4111];
            window12 <= InsaneMemory[4112];
            window13 <= InsaneMemory[4113];
            window14 <= InsaneMemory[4114];
            window15 <= InsaneMemory[4115];

            frame0 <= InsaneMemory[i + 4];
            frame1 <= InsaneMemory[i + 5];
            frame2 <= InsaneMemory[i + 6];
            frame3 <= InsaneMemory[i + 7];
            frame4 <= InsaneMemory[i + 8];
            frame5 <= InsaneMemory[i + 9];
            frame6 <= InsaneMemory[i + 10];

            frame64 <= InsaneMemory[i + 68];
            frame65 <= InsaneMemory[i + 69];
            frame66 <= InsaneMemory[i + 70];
            frame67 <= InsaneMemory[i + 71];
            frame68 <= InsaneMemory[i + 72];
            frame69 <= InsaneMemory[i + 73];
            frame70 <= InsaneMemory[i + 74];

            frame128 <= InsaneMemory[i + 132];
            frame129 <= InsaneMemory[i + 133];
            frame130 <= InsaneMemory[i + 134];
            frame131 <= InsaneMemory[i + 135];
            frame132 <= InsaneMemory[i + 136];
            frame133 <= InsaneMemory[i + 137];
            frame134 <= InsaneMemory[i + 138];

            frame192 <= InsaneMemory[i + 196];
            frame193 <= InsaneMemory[i + 197];
            frame194 <= InsaneMemory[i + 198];
            frame195 <= InsaneMemory[i + 199];
            frame196 <= InsaneMemory[i + 200];
            frame197 <= InsaneMemory[i + 201];
            frame198 <= InsaneMemory[i + 202];

            frame256 <= InsaneMemory[i + 260];
            frame257 <= InsaneMemory[i + 261];
            frame258 <= InsaneMemory[i + 262];
            frame259 <= InsaneMemory[i + 263];
            frame260 <= InsaneMemory[i + 264];
            frame261 <= InsaneMemory[i + 265];
            frame262 <= InsaneMemory[i + 266];

            frame320 <= InsaneMemory[i + 324];
            frame321 <= InsaneMemory[i + 325];
            frame322 <= InsaneMemory[i + 326];
            frame323 <= InsaneMemory[i + 327];
            frame324 <= InsaneMemory[i + 328];
            frame325 <= InsaneMemory[i + 329];
            frame326 <= InsaneMemory[i + 330];

            frame384 <= InsaneMemory[i + 388];
            frame385 <= InsaneMemory[i + 389];
            frame386 <= InsaneMemory[i + 390];
            frame387 <= InsaneMemory[i + 391];
            frame388 <= InsaneMemory[i + 392];
            frame389 <= InsaneMemory[i + 393];
            frame390 <= InsaneMemory[i + 394];

            frame448 <= InsaneMemory[i + 452];
            frame449 <= InsaneMemory[i + 453];
            frame450 <= InsaneMemory[i + 454];
            frame451 <= InsaneMemory[i + 455];
            frame452 <= InsaneMemory[i + 456];
            frame453 <= InsaneMemory[i + 457];
            frame454 <= InsaneMemory[i + 458];
            
            frame512 <= InsaneMemory[i + 516];
            frame513 <= InsaneMemory[i + 517];
            frame514 <= InsaneMemory[i + 518];
            frame515 <= InsaneMemory[i + 519];
            frame516 <= InsaneMemory[i + 520];
            frame517 <= InsaneMemory[i + 521];
            frame518 <= InsaneMemory[i + 522];

            frame576 <= InsaneMemory[i + 580];
            frame577 <= InsaneMemory[i + 581];
            frame578 <= InsaneMemory[i + 582];
            frame579 <= InsaneMemory[i + 583];
            frame580 <= InsaneMemory[i + 584];
            frame581 <= InsaneMemory[i + 585];
            frame582 <= InsaneMemory[i + 586];

            frame640 <= InsaneMemory[i + 644];
            frame641 <= InsaneMemory[i + 645];
            frame642 <= InsaneMemory[i + 646];
            frame643 <= InsaneMemory[i + 647];
            frame644 <= InsaneMemory[i + 648];
            frame645 <= InsaneMemory[i + 649];
            frame646 <= InsaneMemory[i + 650];
    
end


endmodule
