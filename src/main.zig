const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const alloc = gpa.allocator();

    var client = try std.net.tcpConnectToHost(alloc, "127.0.0.1", 8080);
    defer client.close();
}
