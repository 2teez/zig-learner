const std = @import("std");

const funcOperation = fn (i32, i32) i32;

pub fn main() void {
    // using block in zig
    const result = blk: {
        const a = 10;
        const b = 20;
        break :blk a + b;
    };

    std.debug.print("{}\n", .{result});
    //
    const a = 12;
    const b = 5;
    const addition = add(a, b);
    const times = multiply(a, b);
    const c: ?i32 = 0;
    if (c) |i| {
        const divide_result = divide(b, i);
        if (divide_result) |j| {
            std.debug.print("{}\n", .{j});
        } else {
            std.debug.print("can't divide by zero\n", .{});
        }
    }

    // print result of addition and times
    std.debug.print("{}, {}\n", .{ addition, times });
    std.debug.print("function Operation: {}\n", .{functionOperation(subtract, a, b)});
}

fn add(a: i32, b: i32) i32 {
    return a + b;
}

fn subtract(a: i32, b: i32) i32 {
    return a - b;
}

fn multiply(a: i32, b: i32) i32 {
    return a * b;
}

fn divide(a: i32, b: i32) ?i32 {
    if (b == 0) {
        return null;
    }
    return @divExact(a, b);
}

fn functionOperation(func: funcOperation, a: i32, b: i32) i32 {
    return func(a, b);
}
