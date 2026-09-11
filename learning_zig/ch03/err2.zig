const print = @import("std").debug.print;

const Data = union(enum) {
    data: i32,
    message: []const u8,
    pub fn isData(self: Data) bool {
        return switch (self) {
            .data => true,
            else => false,
        };
    }
};

pub fn main() void {
    const my_data = Data{ .data = 34 };
    //if (info.isData()) {
     //   print("Data is {d}\n", .{info.data});
    //} else {
     //   print("Has no data with a message {s}\n", .{info.message});
    //}
    showMessage(my_data);
    const my_data2 = Data {.message = "zig is zong"};
    showMessage(my_data2);
}

fn showMessage(info: Data) void {
        switch(info) {
            .data => |value| print("{d}", .{value}),
            .message => |msg| print("{s}", .{msg}),
        }
}
