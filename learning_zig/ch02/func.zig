const std = @import("std");

pub fn main() void {
    const result = blk: {
        const a = 20;
        const b = 30;
        break :blk add(a, b);
    };
    std.debug.print("Result: {}\n", .{result});
}

pub fn add(a: i32, b: i32) i32 {
    return a + b;
}
