const std = @import("std");
const expect = std.testing.expect;
pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

test "checking pointer in zig" {
    const my_age: i32 = 45;
    const my_age_pt = &my_age;
    try expect(@TypeOf(my_age_pt) == *const i32);
}
