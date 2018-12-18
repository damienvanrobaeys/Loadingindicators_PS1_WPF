[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')  				| out-null
[System.Reflection.Assembly]::LoadWithPartialName('presentationframework') 				| out-null
[System.Reflection.Assembly]::LoadFrom('assembly\MahApps.Metro.dll')       				| out-null
[System.Reflection.Assembly]::LoadFrom('assembly\LoadingIndicators.WPF.dll')       				| out-null

function LoadXml ($global:filename)
{
    $XamlLoader=(New-Object System.Xml.XmlDocument)
    $XamlLoader.Load($filename)
    return $XamlLoader
}

$XamlMainWindow=LoadXml("MyGUI.xaml")
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

$Slider_Ratio = $form.findname("Slider_Ratio") 
$Slider_Value = $form.findname("Slider_Value") 

$Slider_Ratio.Value = 1
$Slider_Value.Content = 1
$Default_Value = 1

$ArcsStyle.SpeedRatio = $Default_Value
$ArcsRing.SpeedRatio = $Default_Value
$DoubleBounce.SpeedRatio = $Default_Value
$FlipPlane.SpeedRatio = $Default_Value
$Pulse.SpeedRatio = $Default_Value
$Ring.SpeedRatio = $Default_Value
$ThreeDots.SpeedRatio = $Default_Value
$Wave.SpeedRatio = $Default_Value

$ArcsStyle_Check.IsChecked = $true
$ArcsRing_Check.IsChecked = $true
$DoubleBounce_Check.IsChecked = $true
$FlipPlane_Check.IsChecked = $true
$Pulse_Check.IsChecked = $true
$Ring_Check.IsChecked = $true
$ThreeDots_Check.IsChecked = $true
$Wave_Check.IsChecked = $true


$Slider_Ratio.Add_ValueChanged({
	$Get_Slider_Value = [Math]::Round(($Slider_Ratio.Value), 1)	
	$Slider_Value.Content = [Math]::Round(($Slider_Ratio.Value), 1)	
	
	$ArcsStyle.SpeedRatio = $Get_Slider_Value
	$ArcsRing.SpeedRatio = $Get_Slider_Value
	$DoubleBounce.SpeedRatio = $Get_Slider_Value
	$FlipPlane.SpeedRatio = $Get_Slider_Value
	$Pulse.SpeedRatio = $Get_Slider_Value
	$Ring.SpeedRatio = $Get_Slider_Value
	$ThreeDots.SpeedRatio = $Get_Slider_Value
	$Wave.SpeedRatio = $Get_Slider_Value
})

$ArcsStyle_Check.Add_Click({
	If ($ArcsStyle_Check.IsChecked -eq $true)
		{
			$ArcsStyle.IsActive = $true
		}
	Else
		{
			$ArcsStyle.IsActive = $false
		}	
})

$ArcsRing_Check.Add_Click({
	If ($ArcsRing_Check.IsChecked -eq $true)
		{
			$ArcsRing.IsActive = $true
		}
	Else
		{
			$ArcsRing.IsActive = $false
		}	
})

$DoubleBounce_Check.Add_Click({
	If ($DoubleBounce_Check.IsChecked -eq $true)
		{
			$DoubleBounce.IsActive = $true
		}
	Else
		{
			$DoubleBounce.IsActive = $false
		}	
})

$FlipPlane_Check.Add_Click({
	If ($FlipPlane_Check.IsChecked -eq $true)
		{
			$FlipPlane.IsActive = $true
		}
	Else
		{
			$FlipPlane.IsActive = $false
		}	
})

$Pulse_Check.Add_Click({
	If ($Pulse_Check.IsChecked -eq $true)
		{
			$Pulse.IsActive = $true
		}
	Else
		{
			$Pulse.IsActive = $false
		}	
})

$Ring_Check.Add_Click({
	If ($Ring_Check.IsChecked -eq $true)
		{
			$Ring.IsActive = $true
		}
	Else
		{
			$Ring.IsActive = $false
		}	
})

$ThreeDots_Check.Add_Click({
	If ($ThreeDots_Check.IsChecked -eq $true)
		{
			$ThreeDots.IsActive = $true
		}
	Else
		{
			$ThreeDots.IsActive = $false
		}	
})

$Wave_Check.Add_Click({
	If ($Wave_Check.IsChecked -eq $true)
		{
			$Wave.IsActive = $true
		}
	Else
		{
			$Wave.IsActive = $false
		}	
})


$Form.ShowDialog() | Out-Null