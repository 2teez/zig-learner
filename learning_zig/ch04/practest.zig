const std = @import("std");

pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

fn square(num: i32) i32 {
    return num * num;
}

test "square function should return the square of a number" {
    try std.testing.expect(square(3) == 9);
    try std.testing.expect(square(-6) == 36);
    try std.testing.expect(square(0) == 0);
}
