#!/usr/bin/env ruby

hash = {
    "Jackson" => 17,
    "Sarah" => 22,
    "Tim" => 543,
    "Tommy" => 23,
    "Sybil" => 12
}

puts hash

hash_two = {
    :Jackson => 17,
    :Sarah => 22,
    :Tim => 543,
    :Tommy => 23,
    :Sybil => 12
}

p hash_two.values[0..2]
p hash_two.keys[0..2]

puts hash_two.select {|k, v| v > 21}