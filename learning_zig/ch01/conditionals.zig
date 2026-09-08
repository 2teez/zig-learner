const print = @import("std").debug.print;

pub fn main() void {
    const a = 4;
    const b = 5;
    // using if expression instead of ternary operator
    const result = if (a != b) 47 else 3089;
    print("result: {}\n", .{result});
    // if / else if / else statement
    if (b > 5) {
        print("b is greater than 5\n", .{});
    } else if (b < 5) {
        print("b is less than 5\n", .{});
    } else {
        print("b is equal to 5\n", .{});
    }
    // if expression in print statement
    print("b is {s}\n", .{if (b >= 5) "greater than or equal to 5" else "less than 5"});
    // using switch statement
    switch (a) {
        1 => print("a is 1\n", .{}),
        2 => print("a is 2\n", .{}),
        3 => print("a is 3\n", .{}),
        4 => print("a is 4\n", .{}),
        5 => print("a is 5\n", .{}),
        else => print("a is greater than 5\n", .{}),
    }
    // using switch expression in print statement
    print("b is {s}\n", .{switch (b) {
        1 => "1",
        2 => "2",
        3 => "3",
        4 => "4",
        5 => "5",
        else => "6",
    }});
}
