const std = @import("std");

pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

test "basic array and slicing" {
    const array = [_]u16{ 56, 89, 23, 90 };
    const array_total_len = array.len;

    try std.testing.expect(array_total_len == 4);
    try std.testing.expect(array[0] == 56);
    try std.testing.expect(array[3] == 90);
}
