local data = {93,93,87.5,91,94.5,72,96,95,93.5,93.5,73,82,45,88,80,86,85.5,87.5,81,78,86,89,92,91,98,85,82.5,88,94.5,43};
print("Data length: "..#data);
local a = 0;
for i = 1, #data do
    a = a + data[i];
    for i2 = 1, #data do
        if (data[i] < data[i2]) then
            local v, v2 = data[i], data[i2];
            data[i] = v2;
            data[i2] = v;
        end;
    end;
end;
local full = "Sorted Data: ";
for j = 1, #data do
    full = full ..(data[j]).. "  ";
end;
print(full);
function getMedian()
    if (#data % 2 == 0) then
        print("Median: "..(data[((#data + 1)/2) - .5] + data[((#data + 1)/2) + .5])/2);
        else
        print("Median: "..data[(#data/2) + .5]);
    end;
end;
function getMean()
    print("Mean: "..a/#data)
end
getMean()
getMedian();
