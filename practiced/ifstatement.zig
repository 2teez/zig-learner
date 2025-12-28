const print = @import("std").debug.print;

pub fn main() void {
    const number = 10;
    if (number < 5) {
        print("{} is less than 5\n", .{number});
    } else {
        print("{} is greater than 5\n", .{number});
    }
    const a = 5;
    const b = 7;
    print("{}\n", .{if (a != b) 47 else 3096});

    const day = 3;
    switch (day) {
        1 => print("Monday\n", .{}),
        2 => print("Tuesday\n", .{}),
        3 => print("Wednesday\n", .{}),
        else => print("Other days\n", .{}),
    }
}
