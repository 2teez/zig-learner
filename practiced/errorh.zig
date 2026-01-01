const std = @import("std");

const Days = enum {
    Sunday,
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
};

pub fn main() void {
    const day = Days.Wednesday;
    if (day == Days.Wednesday) {
        std.debug.print("Guess it is hums day!\n", .{});
    }

    // the number of day it is
    const days_num = @intFromEnum(day) + 1;
    std.debug.print("It's day number {d} of the week!\n", .{days_num});
}
