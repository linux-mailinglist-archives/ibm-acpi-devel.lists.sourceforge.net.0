Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC603EA759
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 12 Aug 2021 17:18:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mECSD-0007Ir-1O; Thu, 12 Aug 2021 15:17:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1mECSB-0007Ik-80
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 12 Aug 2021 15:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PnBCs8XTOgukMMgR2rWJHuBoEv9+2kvo7irygF4vrVU=; b=hF614HILmntCeiQ+fEEUzATp/7
 GfMsdE5AbNFGd0njCZnVu2gnIo/743TAcqiG0AUeT+We3RCQ3OkJkr12Fu6fp0x9OlfWDmzqSbDlH
 1fM0ncl2s932ngtmpbqeD8OMne3kEooy5klP6aCrFtSCV9LxlZL2OwzdvcZXw4+c59PA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PnBCs8XTOgukMMgR2rWJHuBoEv9+2kvo7irygF4vrVU=; b=kvMpfDI8efNKollYAjJY/4tK72
 5LQVECuwUMXobrX42DaK3OYRQHNQlBkMRfzKFKGfmeGiDlyQzUrR5DcwJKmqb+Rcut2TLD9YtfPVV
 OEWxbJeNM1ry8Oke+nrrAGNbWmr2A4oqJDZEyKmiN+Y56knBoskmhr7vggMn9dc/Hz4M=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.115])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mECS7-0005US-A6
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 12 Aug 2021 15:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1628780567; i=@lenovo.com;
 bh=PnBCs8XTOgukMMgR2rWJHuBoEv9+2kvo7irygF4vrVU=;
 h=Subject:To:CC:References:From:Message-ID:Date:MIME-Version:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=L9Fr4JmzPnn3IfSSuDWB4r6k/WUWoRjqOmY+WRi/iOEfN3kfyC1060Jef2Js4vKeZ
 MGgMo/AuhM+jjnHwObaABIgsgabCwjS+mqGYus17K5o9zST3/XMG9vuSesV85u4Ay3
 mts+x4xO9+S6i1mYpCDXCLDc2ofan3QPex4jskeISf2wRE6SoB8Nfa2IxZ1GHicb5m
 sjWAiGPnJbCgUPbnlR/UjqjwaNHgjBUltD2GsObGe3oqFJKgvD/sROG47A49wJqNg7
 Kji+2D+acetlfn1z7jPIfQt3k1rrrvMLlyzwtc/1z+UrrTrMYlVsqhMJE4xKUfwWe1
 i8JhJZHLEe1MQ==
Received: from [100.112.6.161] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-c.us-east-1.aws.symcld.net id D5/19-07005-71835116;
 Thu, 12 Aug 2021 15:02:47 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgleJIrShJLcpLzFFi42LJePGQV1fMQjT
 RoKvTxOLN8elMFut/r2SxmH3YxuLyrjlsFqv3vGC2eHbxFYsDm8fiFVNYPX4fYPTYveAzk8f7
 fVfZPD5vkgtgjWLNzEvKr0hgzTj/eDlzwVu5ioanx5kaGHdKdjFycQgJ/GeUmLRgLyOE85xR4
 tfW1+xdjJwcwgIxEo3/z7CC2CICHhINa96xgNjMAqsYJW4+cIVoWATU0DSRGSTBJqAtsWXLLz
 YQm1fAVuLJ6/dMIDaLgKpEy/dTYINEBSIkHu7cwghRIyhxcuYTsKGcAi4SF043MEEsMJN4MXs
 XK4QtLnHryXyouLzE9rdzwHZJANmrth9jhbATJHr+PWKbwCg4C8nYWUhGzUIyahaSUQsYWVYx
 miYVZaZnlOQmZuboGhoY6BoaGuma6ZqZ6SVW6SbrlRbrpiYWl+ga6iWWF+sVV+Ym56To5aWWb
 GIERlBKAZvTDsbbrz/oHWKU5GBSEuXdcFYkUYgvKT+lMiOxOCO+qDQntfgQowwHh5IE7/GdQD
 nBotT01Iq0zBxgNMOkJTh4lER4tU1FE4V4iwsSc4sz0yFSpxgVpcR5fxgCJQRAEhmleXBtsAR
 yiVFWSpiXkYGBQYinILUoN7MEVf4VozgHo5Iw716Q8TyZeSVw018BLWYCWrzDXRBkcUkiQkoK
 GBW3Z7W4Vq75fGN/gVXkmdKJaUUbXu772FwVvUd8rtyfk5FVqRMnv/3kybl/S9ZVk5S1Pr7H9
 yxY4/8zcl6FZIPxwT2p31Wdjk7drb/D+w2Hbq+ntqZRnO+UtXFNGm6PvPeeV7O6tiFZXLLeIj
 JnoWfRj9CtvtOm1To8VA3ZpNjjxzJ7wS/LdXNqUvbeNE+SNdPMP66yVsvJvobFSPL+mgbm04k
 vjLueLHzWyy+3vdyyfCmzoI/pasv0NBVHE/n8szv71C/bfG3p/Heqfp7KlLuvLZ+f3+bupFuh
 573GaPncRC0J3ZusimEX1kvdrioM+Wg76Wjp9KTXN/qSBf7fv/rg4M1rR4X2Sh5+t06vU4mlO
 CPRUIu5qDgRAF9VemabAwAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-2.tower-415.messagelabs.com!1628780566!257632!1
X-Originating-IP: [104.232.225.13]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 27604 invoked from network); 12 Aug 2021 15:02:46 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.13)
 by server-2.tower-415.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 12 Aug 2021 15:02:46 -0000
Received: from reswpmail01.lenovo.com (unknown [10.62.32.20])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 9E66F65880BD362F98EF;
 Thu, 12 Aug 2021 11:02:46 -0400 (EDT)
Received: from localhost.localdomain (10.38.51.60) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Thu, 12 Aug
 2021 11:02:45 -0400
To: Slark Xiao <slark_xiao@163.com>, Hans de Goede <hdegoede@redhat.com>
References: <20210811093407.5583-1-slark_xiao@163.com>
 <70e53b58-4785-5a3d-9525-a7f9e93cd0d2@redhat.com>
 <1e3450a4.7c75.17b3a259499.Coremail.slark_xiao@163.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <6f60ac5a-91fb-948f-a5a6-f01f4971783e@lenovo.com>
Date: Thu, 12 Aug 2021 11:02:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1e3450a4.7c75.17b3a259499.Coremail.slark_xiao@163.com>
Content-Language: en-US
X-Originating-IP: [10.38.51.60]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.115 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mECS7-0005US-A6
Subject: Re: [ibm-acpi-devel] [External]Re:Re: [PATCH] [v2,
 1/1] Fix WWAN device disabled issue after S3 deep
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: ibm-acpi-devel@lists.sourceforge.net, Nitin
 Joshi1 <njoshi1@lenovo.com>, linux-kernel@vger.kernel.org, hmh@hmh.eng.br,
 platform-driver-x86@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On 2021-08-12 7:35 a.m., Slark Xiao wrote:
> At 2021-08-12 16:03:50, "Hans de Goede" <hdegoede@redhat.com> wrote:
>> Hi,
>>
>> On 8/11/21 11:34 AM, Slark Xiao wrote:
>>> When WWAN device wake from S3 deep, under thinkpad platform,
>>> WWAN would be disabled. This disable status could be checked
>>>   by command 'nmcli r wwan' or 'rfkill list'.
>>> Issue analysis as below:
>>>    When host resume from S3 deep, thinkpad_acpi driver would
>>> call hotkey_resume() function. Finnaly, it will use
>>> wan_get_status to check the current status of WWAN device.
>>> During this resume progress, wan_get_status would always
>>> return off even WWAN boot up completely.
>>>    If wan_get_status() return off, rfkill_set_sw_state() would set WWAN's
>>> status as disabled.
>>>    This may be a fault of LENOVO BIOS.
>>>    Workaround is add a WWAN device check before rfkill_set_sw_state().
>>> If it's a Foxconn WWAN device, then we will ignore to do a status update.
>>>
>>> Signed-off-by: Slark Xiao <slark_xiao@163.com>
>>
>> Thank you for debugging this and thank you for the patch.
>>
>> I'm not in favor of using a pci-device-id list here. Maybe we should
>> simply just never update the sw-rfkill state after a suspend-resume ?
>>
>> I mean the sw_state should be unchanged after a suspend/resume.
>>
>> Only the hw_state on older devices which still have a physical
>> radio on/off slider on the side might have changed during suspend.
>>
>> So I think it might be better to just drop the tpacpi_rfk_update_swstate
>> call all together from the resume path?
>>
>> Mark do you have any input here?
>>
>> Regards,
>>
>> Hans
>>
> Hi Hans,
>    Thanks you for your recognition.
>    I think your solution would be better. My solution only fix the WWAN device behavior from Foxconn.
>    And Mark, you can contact with gicay@lenovo.com for the details.
> 
> Thanks
> Slark Xiao
Thanks Hans & Slark,

Slark - so I assume are you working with the Foxconn team and Lenovo on 
this issue? I know we've been tracking the fact that suspend doesn't 
work with S3 but haven't been paying attention to the details.

My main concern is 'This may be a fault of LENOVO BIOS' - if the BIOS is 
wrong then we should fix the BIOS rather than kludging the kernel for 
one modem on one platform. Let me know if this needs escalating to the 
BIOS team (or work with Grace).

I've added in Nitin as he's my goto for WWAN related issues and might be 
interested.

Mark

>>
>>
>>> ---
>>>   drivers/platform/x86/thinkpad_acpi.c | 16 ++++++++++++++--
>>>   1 file changed, 14 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>> index 603156a6e3ed..e3b7bc0e7a33 100644
>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>> @@ -1159,6 +1159,13 @@ struct tpacpi_rfk_ops {
>>>   
>>>   static struct tpacpi_rfk *tpacpi_rfkill_switches[TPACPI_RFK_SW_MAX];
>>>   
>>> +/*Foxconn SDX55 T77W175 products. All available device ID*/
>>> +static const struct pci_device_id foxconn_device_ids[] = {
>>> +	{ PCI_DEVICE(PCI_VENDOR_ID_FOXCONN, 0xE0AB) },
>>> +	{ PCI_DEVICE(PCI_VENDOR_ID_FOXCONN, 0xE0AF) },
>>> +	{ PCI_DEVICE(PCI_VENDOR_ID_FOXCONN, 0xE0B4) },
>>> +	{}
>>> +};
>>>   /* Query FW and update rfkill sw state for a given rfkill switch */
>>>   static int tpacpi_rfk_update_swstate(const struct tpacpi_rfk *tp_rfk)
>>>   {
>>> @@ -1182,8 +1189,13 @@ static void tpacpi_rfk_update_swstate_all(void)
>>>   {
>>>   	unsigned int i;
>>>   
>>> -	for (i = 0; i < TPACPI_RFK_SW_MAX; i++)
>>> -		tpacpi_rfk_update_swstate(tpacpi_rfkill_switches[i]);
>>> +	for (i = 0; i < TPACPI_RFK_SW_MAX; i++) {
>>> +		if (pci_dev_present(foxconn_device_ids) && i == 1)
>>> +			pr_info("Find Foxconn wwan device, ignore to update rfkill switch status\n");
>>> +		else
>>> +			tpacpi_rfk_update_swstate(tpacpi_rfkill_switches[i]);
>>> +
>>> +	}
>>>   }
>>>   
>>>   /*
>>>


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
