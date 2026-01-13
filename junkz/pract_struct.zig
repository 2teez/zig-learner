const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    std.debug.print("Start from here!\n", .{});
}

test "basic struct in zig" {
    const Person = struct { name: []const u8, age: u16, height: f32 };

    const perl = Person{ .name = "perl", .age = 21, .height = 12.34 };
    try expect(std.mem.eql(u8, perl.name, "perl"));
    try expect(perl.age == 21);
    try expect(perl.height == 12.34);
}
