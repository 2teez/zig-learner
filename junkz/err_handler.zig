const std = @import("std");

const MathErr = error{
    ZeroDivision,
};

//pub fn main() !void {
pub fn main() void {
    //const result = try division(34, 0);
    _ = division(34, 0) catch |err| {
        std.debug.print("{}\n", .{err});
        return;
    };
}

fn division(num: i32, deno: i32) MathErr!i32 {
    if (deno == 0) {
        return MathErr.ZeroDivision;
    }
    return @divTrunc(num, deno);
}
