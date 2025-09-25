import pathlib
from typing import Any

def find_nearest_include_dir(path: pathlib.Path) -> pathlib.Path | None:
    """Find the nearest include directory in the path hierarchy."""
    while path != path.parent:
        if (path / "include").is_dir():
            return path / "include"
        path = path.parent
    return None


def rel_to_include_parent(path: pathlib.Path) -> pathlib.Path | None:
    """Return the relative path to the include parent directory."""
    include_dir = find_nearest_include_dir(path)
    if include_dir is None:
        return None

    return path.relative_to(include_dir)


def llvm_header_guard(buffer_name: str) -> str | None:
    """Generate a header guard according to the LLVM style based on the buffer path."""
    rel_path = rel_to_include_parent(pathlib.Path(buffer_name))
    if rel_path is None:
        return None

    return rel_path.as_posix().replace('/', '_').upper().replace('.', '_')
