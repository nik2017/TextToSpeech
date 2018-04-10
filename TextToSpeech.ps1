Add-Type -AssemblyName System.Speech 
$s = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer 
$s.SelectVoice('Microsoft Zira Desktop')
$input = Read-Host
While (!([string]::IsNullOrEmpty($input))){
$s.speak($input)
$input = Read-Host
}
