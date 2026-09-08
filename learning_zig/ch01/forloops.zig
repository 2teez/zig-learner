const print = @import("std").debug.print;

pub fn main() void {
    const items = [_]i32{ 3, 8, 0, 5, 9 };
    var result: i32 = 0;
    for (items) |item| {
        if (item == 0) continue;
        result += item;
    }
    print("The sum of {any} numbers is {}\n", .{ items, result });
}
