#version 430 core

uniform sampler2D Tex;
uniform sampler2D Tex11;
uniform sampler2D Tex22;

in vec2 fsin_TexCoords;
out vec4 OutColor;

void main()
{
    OutColor = texture(Tex, fsin_TexCoords) + texture(Tex11, fsin_TexCoords) * .01 + texture(Tex22, fsin_TexCoords) * .01;
}
