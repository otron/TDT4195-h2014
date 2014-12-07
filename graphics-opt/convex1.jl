function convex1(polygon, color)
    L = makelines(polygon.vertices)
    B = BoundingBox(polygon)
    E = [lines[i].a * B.xmin + lines[i].b * B.ymin + lines[i].c
        for i=1:length(lines)]

    for y = B.ymin:B.ymax
        Et = copy(E)
        for x = B.xmin:B.xmax
            signcheck(E) ? setpixel((x,y), color) : 0

            E = [E[i] + L[i].a for i = 1:length(E)]
        end
        E = [Et[i] + L[i].b for i = 1:length(E)]
    end
end

function signcheck{T <: Real}(arr::Array{T, 1})
    s = sign(arr)
    for i = 2:length(s)
        if s[i-1] != s[i]
            return false
        end
    end
    true
end

function makelines(vertices)
    l = length(vertices)
    res = Array(Line, l)
    for i = 1:l-1
        res[i] = Line(vertices[i], vertices[i+1])
    end
    res[l] = Line(vertices[l], vertices[1])
end

type Line{T}
    a::T
    b::T
    c::T
end
Line(u, v) = Line(v.x - u.x, v.y - v.x, v.x*u.y - u.x*v.y)

type BoundingBox{T}
    xmax::T
    xmin::T
    ymax::T
    ymin::T
end

function BoundingBox(polygon)
    v = polygon.vertices[1]
    xmax = v.x
    xmin = v.x
    ymin = v.y
    ymax = v.y
    for i = 2:length(polygon.vertices)
        v = polygon.vertices[i]
        xmax = max(v.x, xmax)
        xmin = min(v.x, xmin)
        ymax = max(v.y, ymax)
        ymin = min(v.y, ymin)
    end
    BoundingBox(xmax, xmin, ymin, ymax)
end
