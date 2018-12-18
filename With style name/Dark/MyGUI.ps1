[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')  				| out-null
[System.Reflection.Assembly]::LoadWithPartialName('presentationframework') 				| out-null
# [System.Reflection.Assembly]::LoadFrom('System.Windows.Interactivity.dll') | out-null
# [System.Reflection.Assembly]::LoadFrom('assembly\RadialMenu.dll')      | out-null  
[System.Reflection.Assembly]::LoadFrom('assembly\MahApps.Metro.dll')       				| out-null
[System.Reflection.Assembly]::LoadFrom('assembly\LoadingIndicators.WPF.dll')       				| out-null


function LoadXml ($global:filename)
{
    $XamlLoader=(New-Object System.Xml.XmlDocument)
    $XamlLoader.Load($filename)
    return $XamlLoader
}

$XamlMainWindow=LoadXml("MyGUI.xaml")
# $XamlMainWindow=LoadXml("MainWindow.xaml")


$Reader=(New-Object System.Xml.XmlNodeReader $XamlMainWindow)
$Form=[Windows.Markup.XamlReader]::Load($Reader)


$ArcsStyle = $form.findname("ArcsStyle") 
$ArcsRing = $form.findname("ArcsRing") 
$DoubleBounce = $form.findname("DoubleBounce") 
$FlipPlane = $form.findname("FlipPlane") 
$Pulse = $form.findname("Pulse") 
$Ring = $form.findname("Ring") 
$ThreeDots = $form.findname("ThreeDots") 
$Wave = $form.findname("Wave") 



$ArcsStyle_Check = $form.findname("ArcsStyle_Check") 
$ArcsRing_Check = $form.findname("ArcsRing_Check") 
$DoubleBounce_Check = $form.findname("DoubleBounce_Check") 
$FlipPlane_Check = $form.findname("FlipPlane_Check") 
$Pulse_Check = $form.findname("Pulse_Check") 
$Ring_Check = $form.findname("Ring_Check") 
$ThreeDots_Check = $form.findname("ThreeDots_Check") 
$Wave_Check = $form.findname("Wave_Check") 



$Form.ShowDialog() | Out-Null

