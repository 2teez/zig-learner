const std = @import("std");

pub fn main() !void {
    try top_function();
}

fn top_function() !void {
    try mid_function();
}

fn mid_function() !void {
    try bottom_function();
}

fn bottom_function() !void {
    return error.FileNotFound();
}
