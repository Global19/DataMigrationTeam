	#	/***This Artifact belongs to the Data SQL Ninja Engineering Team***/
<#**************************************************************************************
The information contained in this document represents the current view of Microsoft Corporation on the issues discussed as of the date of
publication. Because Microsoft must respond to changing market conditions, this document should not be interpreted to be a commitment on the
part of Microsoft, and Microsoft cannot guarantee the accuracy of any information presented after the date of publication.

This document is for informational purposes only. MICROSOFT MAKES NO WARRANTIES, EXPRESS, IMPLIED, OR STATUTORY, AS TO THE INFORMATION IN THIS DOCUMENT.

Complying with all applicable copyright laws is the responsibility of the user. Without limiting the rights under copyright, no part of this
document may be reproduced, stored in or introduced into a retrieval system, or transmitted in any form or by any means (electronic, mechanical,
photocopying, recording, or otherwise), or for any purpose, without the express written permission of Microsoft Corporation.

Microsoft may have patents, patent applications, trademarks, copyrights, or other intellectual property rights covering subject matter in this
document. Except as expressly provided in any written license agreement from Microsoft, the furnishing of this document does not give you any
license to these patents, trademarks, copyrights, or other intellectual property.
*************************************************************************************#>


$RootLocation='<LocalFilePath>'
$storageAccountName = '<accountname>'
$ResourceGroup = '<ResourceGroup'
$ContainerName = '<ContainerName>'
$SubscriptionID='<SubscriptionID>'




#Connect-AzureRmAccount

Select-AzureRmSubscription -Subscription $SubscriptionID

$storageAccount = Get-AzureRmStorageAccount -StorageAccountName $storageAccountName -ResourceGroupName $ResourceGroup
$ctx = $storageAccount.Context


get-childitem -Path $RootLocation -file -Recurse | Set-AzureStorageBlobContent -Container $containerName -Context $ctx
