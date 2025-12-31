const std = @import("std");

pub fn main() void {
    // using while loop
    var i: i32 = 0;
    while (true) {
        if (i == 10) {
            break;
        }
        i += 1;
    }
    std.debug.print("i is {}\n", .{i});
}
