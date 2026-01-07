const std = @import("std");

pub fn main() void {
    top_function() catch |err| {
        std.debug.print("Error found: {}\n", .{err});
        return;
    };
    std.debug.print("No error found\n", .{});
}

fn top_function() !void {
    try mid_function();
}

fn mid_function() !void {
    try bottom_function();
}

fn bottom_function() !void {
    return error.FileNotFound;
}
