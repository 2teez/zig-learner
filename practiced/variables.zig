const print = @import("std").debug.print;

const VALUE = 89 * 10 ^ -23;
pub fn main() void {
    const age = 32;
    print("age {} - Avagardo Value: {}\n", .{ age, VALUE });
}
