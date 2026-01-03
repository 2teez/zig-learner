const std = @import("std");

const MathErr = error{
    ZeroDivision,
};

pub fn main() !void {
    const result = try division(34, 0);
    std.debug.print("{}\n", .{result});
}

fn division(num: i32, deno: i32) !i32 {
    if (deno == 0) {
        return MathErr.ZeroDivision;
    }
    return @divTrunc(num, deno);
}
