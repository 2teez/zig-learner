const print = @import("std").debug.print;

const Day = enum {
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday,
};

pub fn main() void {
    const today = Day.Monday;
    print("Today is {} and it's number {d}\n", .{ today, @intFromEnum(today) });
    //
    const info = @typeInfo(Day);
    const enumInfo = info.@"enum";
    print("Enum tag type: {s}\n", .{@tagName(info)});
    inline for (enumInfo.fields) |field| {
        print("{s}\n", .{field.name});
    }
}
