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
}
