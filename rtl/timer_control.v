module timer_counter(
    input clk,
    input reset,
    input load,
    input enable,
    input [9:0] load_value,

    output reg [9:0] time_remaining,
    output reg timer_done
);

always @(posedge clk or posedge reset) begin

    if (reset) begin
        time_remaining <= 10'd0;
        timer_done <= 1'b0;
    end

    else begin

        if (load) begin
            time_remaining <= load_value;
            timer_done <= 1'b0;
        end

        else if (enable) begin

            if (time_remaining > 0) begin
                time_remaining <= time_remaining - 1'b1;
                timer_done <= 1'b0;
            end

            else begin
                time_remaining <= 10'd0;
                timer_done <= 1'b1;
            end

        end

        else begin
            time_remaining <= time_remaining;
            timer_done <= timer_done;
        end

    end

end

endmodule