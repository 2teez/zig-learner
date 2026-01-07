const std = @import("std");

pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

fn square(number: i32) i32 {
    return number * number;
}

fn parseInt(value: []const u8) !i32 {
    return std.fmt.parseInt(i32, value, 10);
}

test "square function should return the square of the number" {
    try std.testing.expect(square(3) == 9);
    try std.testing.expect(square(-4) == 16);
    try std.testing.expect(square(0) == 0);
}

test "parse a string to a number. The test should fail" {
    const invalid_type = "not a number";
    const result = parseInt(invalid_type);
    try std.testing.expectError(std.fmt.ParseIntError.InvalidCharacter, result);
}

test "this test is not ready" {
    return error.SkipZigTest;
}
