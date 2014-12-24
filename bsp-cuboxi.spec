#
# spec file for package bsp-cuboxi
#
# Copyright (c) 2014 Josua Mayer <privacy@not.given>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

Name: bsp-cuboxi
Version: 1
Release: 1
License: MIT
Group: System/Base
Summary: Board-Support package for Cubox-i
Source: bsp-cuboxi-%{version}.tar.gz

Requires: udev
Requires: firmware-imx6

%description
Provides special configuration bits required for Cubox-i and Hummingboard.

%prep
%setup -q

%build

%install
install -v -m644 -D debian/bsp-cuboxi.udev %{buildroot}/usr/lib/udev/rules.d/60-bsp-cuboxi.rules

%files
%defattr(-,root,root)
%dir /usr/lib/udev
%dir /usr/lib/udev/rules.d
/usr/lib/udev/rules.d/60-bsp-cuboxi.rules

%changelog
