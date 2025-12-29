const std = @import("std");

pub fn main() void {
    const nums = [_]i32{ 4, 9, 0, 2, 6 };
    var sum: i32 = 0;

    for (nums) |num| {
        if (num == 0) continue;
        sum += num;
    }
    std.debug.print("Sum of numbers: {}\n", .{sum});

    // range for loop
    sum = 0;
    for (nums[0..3]) |num| {
        sum += num;
    }
    std.debug.print("Sum of numbers: {}\n", .{sum});

    // using a forloop with a range and index
    sum = 0;
    for (nums, 0..) |_, idx| {
        sum += @intCast(idx);
    }
    std.debug.print("Sum of numbers: {}\n", .{sum});

    // using index / range alone
    var asum: usize = 0;
    for (0..5) |idx| {
        asum += idx;
    }
    std.debug.print("Sum of numbers: {}\n", .{asum});
    //
    // stopped early
    const intNums = [_]i32{ 1, 7, 9, 2, 5 };
    sum = 0;
    var stoppedindex: usize = 0;
    const stoppedAt = for (0.., intNums) |i, num| {
        if (@mod(num, 2) == 0) {
            stoppedindex = i;
            break true;
        }
        sum += num;
    } else false;
    std.debug.print("The Sum is {}\n", .{sum});
    if (stoppedAt) {
        std.debug.print("Stopped at index {}\n", .{stoppedindex});
    }
}
