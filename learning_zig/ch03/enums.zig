const std = @import("std");

const Data = union {
    intValue: i32,
    floatValue: f32,
    stringValue: []const u8,
};

pub fn main() void {
    var value = Data{ .intValue = 42 };
    std.debug.print("value: {d}\n", .{value.intValue});
    value = Data{ .floatValue = 3.14 };
    std.debug.print("value: {d}\n", .{value.floatValue});
    value = Data{ .stringValue = "hello Zig" };
    std.debug.print("value: {s}\n", .{value.stringValue});
}
