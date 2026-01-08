const std = @import("std");

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
