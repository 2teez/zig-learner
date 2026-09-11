const std = @import("std");

pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

fn square(num: i32) i32 {
    return num * num;
}

fn safeSquare(num: i32) !i32 {
    const ov = @mulWithOverflow(num, num);
    if (ov[0] != 0) return error.Overflow;
    return ov[0];
}

test "square function should return the square of a number" {
    try std.testing.expect(square(3) == 9);
    try std.testing.expect(square(-6) == 36);
    try std.testing.expect(square(0) == 0);
}

test "safeSquare should return an error on overflow" {
    try std.testing.expectError(error.Overflow, safeSquare(1000000));
}
