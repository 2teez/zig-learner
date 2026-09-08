const std = @import("std");

pub fn main() void {
    const result = blk: {
        const a = 20;
        const b = 30;
        break :blk a + b;
    };
    std.debug.print("Result: {}\n", .{result});
}
