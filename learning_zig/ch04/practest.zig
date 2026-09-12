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

fn parseInt(str: []const u8) !i32 {
    const result = std.fmt.parseInt(i32, str, 10) catch |err| {
        return err;
    };
    return result;
}

test "parseInt function should return an error" {
    try std.testing.expectError(error.InvalidCharacter, parseInt("hello integer"));
}

test "parseInt function should return the parsed integer" {
    const result = try parseInt("42");
    try std.testing.expect(result == 42);
}

test "parseInt function with float should return an error" {
    try std.testing.expectError(error.InvalidCharacter, parseInt("42.5"));
}

test "square function should return the square of a number" {
    try std.testing.expect(square(3) == 9);
    try std.testing.expect(square(-6) == 36);
    try std.testing.expect(square(0) == 0);
}

test "safeSquare should return an error on overflow" {
    try std.testing.expectError(error.Overflow, safeSquare(1000000));
}
