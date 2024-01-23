local Class = {}


function Class:create(object, parent)
	object = object or {}
	if not getmetatable(object) then
		setmetatable(object, {})
	end
	getmetatable(object).__index = parent or self
	return object
end

function Class:new(object)
	return self:create(object)
end

function Class:meta()
	return getmetatable(self)
end

function Class:base()
	return self:meta().__index
end


return Class