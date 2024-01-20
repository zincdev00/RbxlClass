# Class
A simple library to assist with lua OOP.

## Installation
To install:
1. [Build the project](#building)
2. Import `build/Class.rbxm` into `DataModel/ReplicatedStorage/common/packages`

## Building
Run the `Build` task or `./build.ps1`

## Usage
To create a class, instead of defining a class in this way:
```lua
local Module = {...}
Module.__index = Module

function Module.new()
	local self = setmetatable({...}, Module)
	return self
end

return Module
```
Instead define a class by calling `Class:create(object?, superclass?)`
```lua
local Module = Class:create({...})

function Module:new()
	return self:create({...})
end

return Module
```