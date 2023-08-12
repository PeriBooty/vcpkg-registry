vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO peribooty/libdnxpp
    REF v1.1.0
    SHA512 d88f2a7e925c44e31291b796b2afac89be094a53ea33d670e88ccb5fb5a9c5e86bd3c2bbc52d60ccbd87431933add00a8216465009a753ab892651c59ce91ebb
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