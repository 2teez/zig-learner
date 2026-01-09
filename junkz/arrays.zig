const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    const msg = [_]u8{ 'h', 'e', 'l', 'l', 'o' };
    const alt_msg: [5]u8 = .{ 'h', 'e', 'l', 'l', 'o' };
    comptime {
        const mem = std.mem;
        const assert = std.debug.assert;
        assert(mem.eql(u8, &msg, &alt_msg));
        assert(msg.len == 5);
    }
}

test "iterate over an array" {
    const greet = "hello";
    var sum: usize = 0;
    for (greet) |byte| {
        sum += byte;
    }

    try std.testing.expect(sum == 'h' + 'e' + 'l' * 2 + 'o');
}

test "modify an array" {
    var numbers: [100]i32 = undefined;
    for (&numbers, 0..) |*nums, idx| {
        nums.* = @intCast(idx);
    }
    try expect(numbers[99] == 99);
    try expect(numbers[10] == 10);
}
