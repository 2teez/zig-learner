const std = @import("std");

pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

fn square(number: i32) i32 {
    return number * number;
}

test "square function should return the square of the number" {
    std.testing.expect(square(3) == 9);
    std.testing.expect(square(-4) == 16);
    std.testing.expect(square(0) == 0);
}
