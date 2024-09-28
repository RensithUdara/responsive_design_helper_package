# Changelog

All notable changes to this project will be documented in this file.

## [0.0.2] - 2024-09-29
### Added
- Introduced `responsiveHeight` and `responsiveWidth` helper functions to make scaling dimensions easier.
- Added more detailed documentation for all public API elements.

### Changed
- Improved logic for `responsiveWidget()` to better handle screen transitions between mobile, tablet, and desktop.
- Updated example app in the `example` folder to demonstrate usage of new helper methods.

### Fixed
- Fixed bug where `isTablet()` was incorrectly detected on screens larger than 1200 pixels.

---

## [0.0.1] - 2024-09-29
### Added
- Initial release of `responsive_design_helper`.
- Provided core responsive functions: `isMobile()`, `isTablet()`, `isDesktop()`.
- Implemented `responsiveWidget()` for switching widgets based on screen size.
- Added a complete example app to demonstrate the package's functionality.
