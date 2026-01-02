const std = @import("std");

const str = []const u8;

pub fn main() void {
    greet("john", "bonjour");
}

fn greet(obj: str, msg: str) void {
    std.debug.print("{s}, {s}\n", .{ msg, obj });
}
