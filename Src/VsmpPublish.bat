echo off

CD C:\Program Files\Microsoft Visual Studio\2022\Preview\VSSDK\VisualStudioIntegration\Tools\Bin

VsixPublisher.exe publish -payload "D:\_git\VsixItemTemplateSqlScriptView\Src\ItemTemplate.VsixPackage\bin\Debug\ItemTemplate.VsixPackage.vsix" -publishManifest "D:\_git\VsixItemTemplateSqlScriptView\Src\VsmpPublish.json" -personalAccessToken "pat"

REM https://docs.microsoft.com/en-us/visualstudio/extensibility/walkthrough-publishing-a-visual-studio-extension-via-command-line?view=vs-2019
