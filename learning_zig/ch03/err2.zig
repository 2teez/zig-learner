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
    const info = Data{ .data = 34 };
    //if (info.isData()) {
     //   print("Data is {d}\n", .{info.data});
    //} else {
     //   print("Has no data with a message {s}\n", .{info.message});
    //}
}
