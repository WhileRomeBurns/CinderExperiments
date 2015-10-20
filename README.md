# CinderExperiments
Public repository of personal cinder projects, largely for my own edification.

## MatCapShaders
![matcap screenshots](_captures/MatCapShaders_01.png)
Adopted from [here](http://www.clicktorelease.com/blog/creating-spherical-environment-mapping-shader) for cinder 0.9.0, the four line [fragment shader](MatCapShaders/assets/shaders/matcap_frag.glsl) looks up a texture based on the reflected incidence ray. The texture represents combined diffuse and reflective lighting. It is by no means physically accurate and it is hard to combine with true lighting passes, but it's cheap to compute and popular as a display shader in modeling software like zbrush and 3dcoat.

To swap textures forward and back use the Z and X keys. 150 samples from blender are included in [assets/matcaps](MatCapShaders/assets/matcaps).

### License (MIT)

**Copyright © 2015 Shawn Lipowski**

```
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
