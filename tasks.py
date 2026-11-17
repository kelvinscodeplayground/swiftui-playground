# Required dependencies:
# - invoke
#
# Install dependencies with:
# pip install invoke
#
# Required CLI:
# - xcode-build-server
import os

from invoke.context import Context
from invoke.tasks import task


@task()
def gen_build_config(ctx: Context):
    """
    Generate build server configuration for external editors using sourcekit-lsp.
    """

    os.execvp(
        "xcode-build-server",
        [
            "xcode-build-server",
            "config",
            "-project",
            "./swiftui-test.xcodeproj",
        ],
    )
