vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO peribooty/libdnxpp
    REF v1.0.1
    SHA512 45390f3b755d54b693557e1a0196c5ba385b48200ecf471fa34bf77c984ea96694eb3e1fef518eb9dbae7aaeda8c0b67b8ac8c96f2b827ac94acbf6b26745d11
    HEAD_REF main
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
    INSTALL "${SOURCE_PATH}/LICENSE"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
    RENAME copyright)