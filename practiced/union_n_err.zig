const print = @import("std").debug.print;

const Data = union { // union like in C
    int_value: i32,
    float_value: f64,
    string: []const u8,
};

const Result = union(enum) {
    Success: i32,
    Error: []const u8,
};

pub fn main() void {
    var input_data: Data = Data{ .int_value = 34 };
    print("{d}\n", .{input_data.int_value});
    input_data = Data{ .float_value = 3.142 };
    print("{}\n", .{input_data.float_value});
    input_data = Data{ .string = "Zig Rock..." };
    print("{s}\n", .{input_data.string});

    const typeinfo = @typeInfo(Data).@"union";
    inline for (typeinfo.fields) |field| {
        const named = field.name;
        print("{s} - {s}\n", .{ @typeName(field.type), named });
    }

    // calculate using negative number
    const result = calculate(-5);
    switch (result) {
        .Success => |value| print("{d}\n", .{value}),
        .Error => |err_msg| print("{s}\n", .{err_msg}),
    }
}

pub fn calculate(value: i32) Result {
    if (value >= 0) {
        return Result{ .Success = value * 34 };
    }
    return Result{ .Error = "input must be non-negative" };
}
