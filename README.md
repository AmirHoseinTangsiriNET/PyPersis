# PyPersis
this PowerShell script is designed to manipulate the Windows registry keys related to Python installations for the purpose of creating persistence and potentially executing arbitrary commands when Python commands or binaries are run. Specifically, it iterates through the Python version keys in the Windows registry under the current user hive, retrieves the install path for each version, and then changes the "ExecutablePath" property to point to "calc.exe". This effectively sets it up so that when the user runs a Python command or binary, "calc.exe" or another specified binary would be executed instead.
<p align="center">
  <img src="Img/PyPersis.png" alt="Master">
</p>
