const print = @import("std").debug.print;

pub fn main() void {
    const items = [_]i32{ 3, 8, 0, 5, 9 };
    var result: i32 = 0;
    for (items) |item| {
        if (item == 0) continue;
        result += item;
    }
    print("The sum of {any} numbers is {}\n", .{ items, result });
    // using two iterators
    const items2 = [_]i32{ 2, 4, 6, 8, 10 };
    const items3 = [_]i32{ 1, 3, 5, 7, 9 };
    var total: i32 = 0;
    for (items2, items3) |item2, item3| {
        total += item2 + item3;
    }
    print("The total is {}\n", .{total});

    // using for loop and else
    const numbers = [_]i32{ 3, 1, 2, 4 };
    var count_index: usize = 0;
    var sum: i32 = 0;
    const checks = for (0.., numbers) |index, number| {
        if (@mod(number, 2) == 0) {
            count_index = index;
            break true;
        }
        sum += number;
    } else false;
    if (checks) {
        print("Found even number at index {}\n", .{count_index});
    }
    print("Sum of odd numbers: {}\n", .{sum});
}
