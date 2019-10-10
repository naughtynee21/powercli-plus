FROM mcr.microsoft.com/powershell

RUN pwsh -C Install-Module VMware.PowerCLI,PowerNSX,PowervRA,PowervRO -Force \
    && mv /root/.local/share/powershell/Modules /usr/local/share/powershell

# Use PowerShell as the default shell
ENTRYPOINT [ "pwsh" ]
