const std = @import("std");

pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

test "modify array" {
    var arr: [100]i32 = undefined;
    for (&arr, 0..) |*elem, i| {
        elem.* = @intCast(i);
    }
    try std.testing.expectEqual(arr[10], 10);
    try std.testing.expectEqual(arr[99], 99);
}

test "compiletime array concatenation" {
    const arr1 = [_]i32{ 1, 2, 3 };
    const arr2 = [_]i32{ 4, 5, 6 };
    const arr = arr1 ++ arr2;
    comptime {
        std.debug.assert(std.mem.eql(i32, &arr, &[_]i32{ 1, 2, 3, 4, 5, 6 }));
    }
}
