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
