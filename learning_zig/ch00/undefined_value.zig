const print = @import("std").debug.print;

pub fn main() void {
    // using undefined value it would initialize to a random value
    var x: i32 = undefined;
    print("x = {}\n", .{x});
    x = 32;
    print("x: {}\n", .{x});
}
