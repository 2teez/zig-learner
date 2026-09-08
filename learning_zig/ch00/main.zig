const std = @import("std");

pub fn main() void {
    std.debug.print("Hello Zig! \n", .{});
    var y: i32 = 42;
    y += 1;
    std.debug.print("y: {}\n", .{y});
}
