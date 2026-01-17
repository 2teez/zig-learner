const std = @import("std");
const expect = std.testing.expect;
pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

test "checking pointer in zig" {
    const my_age: i32 = 45;
    const my_age_pt = &my_age;
    try expect(@TypeOf(my_age_pt) == *const i32);
    var other_number: i32 = 150;
    const other_number_pt = &other_number;
    try expect(@TypeOf(other_number_pt) == *i32);
    other_number_pt.* -= 50;

    try expect(other_number == 100);
}

test "pointer and array" {
    var numbers = [_]u8{ 1, 2, 3, 4, 5 };
    const slot_pt = &numbers[2];
    try expect(@TypeOf(slot_pt) == *u8);

    slot_pt.* += 1;
    try expect(slot_pt.* == 4);
}

test "single to many pointer" {
    var number: i32 = 5687;
    const number_ptr = &number;
    const number_many_ptr: [*]i32 = number_ptr[0..1];
    try expect(@TypeOf(number_many_ptr) == [*]i32);
    try expect(number_many_ptr[0] == 5687);
}

test "pointer arithematic" {
    const array = [_]i32{ 1, 2, 3, 4 };
    var array_ptr: [*]const i32 = &array;
    try expect(array_ptr[0] == 1);
    array_ptr += 1;
    try expect(array_ptr[0] == 2);
}
