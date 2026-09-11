const std = @import("std");

const Data = union {
    intValue: i32,
    floatValue: f32,
    stringValue: []const u8,
};

const Result = union(enum) {
    Success: i32,
    Error: [] const u8,
};

pub fn main() void {
    var value = Data{ .intValue = 42 };
    std.debug.print("value: {d}\n", .{value.intValue});
    value = Data{ .floatValue = 3.14 };
    std.debug.print("value: {d}\n", .{value.floatValue});
    value = Data{ .stringValue = "hello Zig" };
    std.debug.print("value: {s}\n", .{value.stringValue});
    // using a tagged union in zig
    const res = calculateValue(-5);
    switch(res) {
        .Success => |result| std.debug.print("Succes value is {}", .{result}),
        .Error => |err_msg| std.debug.print("Error {s}", .{err_msg}),
    }
}

pub fn calculateValue(value: i32) Result {
    if (value >= 0) {
        return Result {.Success = value * 2 };
    }
    return Result {.Error = "value is less than zero." };
}
