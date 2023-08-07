vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO peribooty/libdnxpp
    REF v1.0.1
    SHA512 c54a8632b65f14926cd9f6699e84d33d1a487ffe39923036e2184f8f99d8369ae1453f5b3fada561cc75051fd7aa1dbb9c145c70100b990cc971bc3399f93bba
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