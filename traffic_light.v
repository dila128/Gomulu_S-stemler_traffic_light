module traffic_light(input clk,rst,output reg[2:0] led);

reg [3:0] count_red = 4'd0;
reg [2:0] count_green = 3'd0;
reg [1:0] count_blue = 2'd0;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        count_red <= 4'd0;
        count_green <= 3'd0;
        count_blue <= 2'd0;
    end
    else begin
        if(count_red < 4'd10) begin
            count_red <= count_red + 1;
            led <= 3'b101; //kırmızı
        end
        else if(count_green < 3'd5)begin
            count_green <= count_green + 1;
            led <= 3'b110; //yeşil
        end
        else if(count_blue < 2'd2) begin
            count_blue <= count_blue + 1;
            led <= 3'b011; //mavi 
        end
        else begin
            count_red <= 4'd0;
            count_green <= 3'd0;
            count_blue <= 2'd0;
        end
      
    end
end 
endmodule