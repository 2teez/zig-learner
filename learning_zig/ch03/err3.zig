const std = @import("std");

const parseError = error{
    Overflow,
    InvalidFormat,
};

pub fn main() void {
    const result = parseFloat("3.142") catch |err| {
        std.debug.print("Error occurs: {s}", .{@errorName(err)});
        return;
    };
    std.debug.print("Result is = {}\n", .{result});
}

fn parseFloat(value: []const u8) parseError!f64 {
    const result = std.fmt.parseFloat(f64, value) catch {
        return error.InvalidFormat;
    };
    if (std.math.isInf(result)) {
        return error.Overflow;
    }
    return result;
}
