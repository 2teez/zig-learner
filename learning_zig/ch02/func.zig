const std = @import("std");

pub fn main() void {
    const result = blk: {
        const a = 20;
        const b = 30;
        break :blk add(a, b);
    };
    std.debug.print("Result: {}\n", .{result});
    const result2 = divide(5, 9);
    if (result2) |r| {
        std.debug.print("Result2: {}\n", .{r});
    } else {
        std.debug.print("Result2: null\n", .{});
    }

    const result3 = mathOperations(divide, 10, 0);
    if (result3) |r| {
        std.debug.print("Result3: {}\n", .{r});
    } else {
        std.debug.print("Result3: null\n", .{});
    }
}

const func = fn (i32, i32) ?i32;
fn mathOperations(op: func, a: i32, b: i32) ?i32 {
    return op(a, b);
}
fn divide(a: i32, b: i32) ?i32 {
    if (b == 0) {
        return null;
    }
    return @divTrunc(a, b);
}
pub fn add(a: i32, b: i32) i32 {
    return a + b;
}
