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

test "slicing of array" {
    var array = [_]u16{ 56, 89, 23, 90 };
    const subset_counter: usize = 1;
    _ = &subset_counter;
    const subset = array[subset_counter..3];
    try std.testing.expect(subset.len == 2);
}

test "string are just array of bytes" {
    const words: []const u8 = "Caldara's Blaza"; // OR // const worda = "Caldara's Blaza"[0..]
    var length_str: usize = 9;
    _ = &length_str;
    const subset_wrd = words[length_str + 1 ..];
    try std.testing.expect(@TypeOf(subset_wrd) == []const u8);
    try std.testing.expect(std.mem.eql(u8, subset_wrd, "Blaza"));
}
