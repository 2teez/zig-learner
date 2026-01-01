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

const TrafficLight = enum {
    Red,
    Yellow,
    Green,
    pub fn is_safe_to_go(self: TrafficLight) bool {
        return self == TrafficLight.Green;
    }
};

pub fn main() void {
    const day = Days.Wednesday;
    if (day == Days.Wednesday) {
        std.debug.print("Guess it is hums day!\n", .{});
    }

    // the number of day it is
    const days_num = @intFromEnum(day) + 1;
    std.debug.print("It's day number {d} of the week!\n", .{days_num});

    //
    // using function decleared in enum type
    var traffic_light = TrafficLight.Yellow;
    if (traffic_light.is_safe_to_go()) {
        std.debug.print("It is safe to go!\n", .{});
    } else std.debug.print("Stop right there. It is better to be late, than late!\n", .{});
    //
    // using switch with enum type
    traffic_light = TrafficLight.Red;
    std.debug.print("{s}\n", .{switch (traffic_light) {
        TrafficLight.Red => "Stop right there!",
        TrafficLight.Yellow => "Get ready to move",
        TrafficLight.Green => "You are free to go",
    }});

    const day_name = @tagName(day);
    std.debug.print("Day name is {s}\n", .{day_name});

    const info = @typeInfo(Days).@"enum";
    inline for (info.fields) |field| {
        std.debug.print("{d} - {s}\n", .{ field.value, field.name });
    }
}
