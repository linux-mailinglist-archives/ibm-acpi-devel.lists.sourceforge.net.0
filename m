Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC7B26C1FD
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 16 Sep 2020 13:16:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kIVPl-0002O8-NK; Wed, 16 Sep 2020 11:15:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1kIVPj-0002Nw-Rf
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 16 Sep 2020 11:15:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kNxseeETg8lodO1ppfgxVq5lX6XjFkk0O6HXE+qlh2I=; b=Mx2+BbPxnxdzF70kwQBEHv/uJW
 vRYkwu+aOUArWK/qmIZQbU80cyr5D27tNww62gGtzExtkH8Z6+8z4Rd8QbaP+RHFTtwuezH97l638
 8sDx+B1bCXO/MXMnZ17vicpoNQ6yABhIhRgeXJoVIsCZdlDv8R5VXWT7oen36hZnH1ks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kNxseeETg8lodO1ppfgxVq5lX6XjFkk0O6HXE+qlh2I=; b=F7kbL4yMe8NUkeBHWBVp/gwzDa
 6l74GCO/HXzI8TlRsIeEl271GdJUScoxbm4baCywROTYwbY8UL8OnVY7DBv+DnsmqXY4/fY9xF5bT
 UZ49Siz59ktH8pDZ/qvb86EW3r5O8ts6UkrDAidcxna75ZW9Q4qugQ6hmeIlFRfYOeO8=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.1])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIVPc-00BHjv-TW
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 16 Sep 2020 11:15:51 +0000
Received: from [100.112.129.88] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-a.us-west-2.aws.symcld.net id 45/F4-36160-7D3F16F5;
 Wed, 16 Sep 2020 11:15:35 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJKsWRWlGSWpSXmKPExsWSLveKXff658R
 4g4mfBS32X5eweDA33WL2YRuLOc/WMlo0dTaxWaze84LZgc1j0swZzB6/DzB67F7wmcnj/b6r
 bB6fN8kFsEaxZuYl5VcksGYcaCoseFRVMWvmE9YGxobkLkYuDiGB/4wSZ64eYoJw7jNKnGv8x
 9rFyMkhLBAv8fntEjBbREBF4sCOLewgRcwCBxklJq68CNUxmVHi6tf5LCBVbALaElu2/GIDsX
 kFbCWubr8JZrMIqEqsm74MqIaDQ1QgVuLbTD+IEkGJkzOfgLVyCnhIfD25HmwZs4CFxMz55xk
 hbHGJW0/mM0HY8hLb385hBrElgOzOr68ZIewEiWUv7zBPYBSchWTsLCSjZiEZNQvJqAWMLKsY
 zZOKMtMzSnITM3N0DQ0MdA0NjXQNjQ11LQ31Eqt0E/VKi3XLU4tLdI30EsuL9Yorc5NzUvTyU
 ks2MQLjJ6WgOXoH45HXH/QOMUpyMCmJ8oa/TowX4kvKT6nMSCzOiC8qzUktPsQow8GhJMG79C
 NQTrAoNT21Ii0zBxjLMGkJDh4lEV57YDwL8RYXJOYWZ6ZDpE4xGnOcXLVkETPH5rlLFzELseT
 l56VKifMygZQKgJRmlObBDYKlmEuMslLCvIwMDAxCPAWpRbmZJajyrxjFORiVhHm3fQKawpOZ
 VwK37xXQKUxAp7Bxgp1SkoiQkmpgMt7I0aIr/mxD0bVpuckHaxYcl3ufsnZ5wqX47P1TP4h+f
 Lzy3s2L/pNWaKuHPVE8dmryPNGylOT/s/dxmPy38t371Lvi+lbeZlvLVXHG6TUGr0NkXx9uUy
 3aOUXn2C8lrfdLdH5/eH9Y4XHt5do5EaG7vtx5VrNAWLRDe9KG50rGOj2+qhVxR9uX6T5KvBA
 VdLwzZuKlpz/Z5q/VfzHfQd6lNOP59dC/bzuvianvn5yed279TAWP4+r8IUvsD8fe21uy3EHr
 gMbEmpuaeqF5K3/s9OIv5n95xm6n2qEDWVHrPue6Gwt+dAw7pGV560rSKQVfjgM9dpan2lIPX
 OuZ9/jR3+cP7INX8d76s/Dvj0glluKMREMt5qLiRAAF4i1YrAMAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-25.tower-336.messagelabs.com!1600254932!51905!1
X-Originating-IP: [103.30.234.7]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.60.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26214 invoked from network); 16 Sep 2020 11:15:34 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.7)
 by server-25.tower-336.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 16 Sep 2020 11:15:34 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 3B7642E76F45AB632C59;
 Wed, 16 Sep 2020 19:15:31 +0800 (CST)
Received: from [10.46.52.90] (10.46.52.90) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Wed, 16 Sep
 2020 04:15:27 -0700
To: Benjamin Berg <bberg@redhat.com>
References: <markpearson@lenovo.com>
 <20200821175310.335873-1-markpearson@lenovo.com>
 <11594528cfb96e2eed8fe0f27a4ecc1d60803432.camel@redhat.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <53bde3db-795b-b391-76ca-b7fb1084067c@lenovo.com>
Date: Wed, 16 Sep 2020 07:15:25 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <11594528cfb96e2eed8fe0f27a4ecc1d60803432.camel@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.46.52.90]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.1 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kIVPc-00BHjv-TW
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH v2] platform/x86:
 thinkpad_acpi: performance mode interface
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
Cc: mario.limonciello@dell.com, ibm-acpi@hmh.eng.br,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Nitin Joshi <njoshi1@lenovo.com>, bnocera@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Benjamin!

On 9/16/2020 5:31 AM, Benjamin Berg wrote:
> Hi Mark,
> 
> On Fri, 2020-08-21 at 13:53 -0400, Mark Pearson wrote:
>> +		H  - High performance mode. Maximum power and temperature available.
>> +		M* - High performance mode but performance is limited to medium as system is
>> +		     in lapmode. Power and temperature maximums reduced to a safe threshold.
>> +		M  - Medium performance mode (aka 'balance'). Lower maximum power and temperatures
>> +		     but better battery life.
>> +		L  - Low performance mode (aka 'quiet'). Reduced power setting gives lower
>> +		     temperatures and extended battery life. Fans run quieter.
> 
> I tested the patch yesterday and I see some minor issues right now.
> 
> First, right now change notifications do not happen for a lapmode
> change. The sysfs file will switch between "H" and "M*" without any
> notification. This will be an easy fix.
OK - I'll look into this and get that implemented. Good catch.
> 
> Second, I personally see the current "M*" more as a degraded
> performance mode rather than an effective balanced mode. For example, H
> and M* match in the sense that the machine will be more noisy as fans
> are turned on more aggressively.
> 
> Third, we still have a mismatch when writing the file. i.e. you write
> "H" but you will read "M*".
> 
> So, I am thinking of using H* instead. That means we directly represent
> the firmwares performance mode rather than making an interpretation
> about an "effective" state. And with the * we continue to convey that
> there is a major impact on performance due to other factors.
I agree - that makes sense to me. I'll make that change.

Thanks for the review
Mark

> 
> Benjamin
> 
>> +What:		/sys/devices/platform/thinkpad_acpi/dytc_lapmod
>> e
>> +Date:		August 2020
>> +Contact:	Mark Pearson <markpearson@lenovo.com>
>> +Description:
>> +		Reads returns the current value of the lapmode sensor.
>> +
>> +		0 - desk mode is detected
>> +		1 - lap mode is detected
>> +
>> +What:		/sys/devices/platform/thinkpad_acpi/psensor_sta
>> te
>> +Date:		August 2020
>> +Contact:	Nitin Joshi <njoshi1@lenovo.com>
>> +Description:
>> +		Reads returns the current value of the palm sensor.
>> +
>> +		0 - palm not detected
>> +		1 - palm detected
>> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> index 6b57c52d8f13..b98f0de9e063 100644
>> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
>> @@ -52,6 +52,7 @@ detailed description):
>>   	- LCD Shadow (PrivacyGuard) enable and disable
>>   	- Lap mode sensor
>>           - Palm sensor (aka psensor)
>> +	- Thermal mode status and control
>>   
>>   A compatibility table by model and feature is maintained on the web
>>   site, http://ibm-acpi.sf.net/. I appreciate any success or failure
>> @@ -1465,6 +1466,40 @@ Note - some platforms have a limitation
>> whereby the EC firmware cannot
>>   determine if the sensor is installed or not. On these platforms the
>> psensor
>>   state will always be reported as true to avoid high power being used
>> incorrectly.
>>   
>> +DYTC Thermal mode status and control
>> +------------------------------------
>> +
>> +sysfs: dytc_perfmode
>> +
>> +Lenovo Thinkpad platforms with DYTC version 5 and newer have
>> enhanced firmware to
>> +provide improved performance control.
>> +
>> +The firmware can be controlled by hotkeys (FN+H, FN+M, FN+L) to
>> switch the
>> +operating mode between three different modes. This sysfs node
>> provides a better
>> +interface for user space to use.
>> +
>> +The modes available are:
>> +
>> +H - High performance. Maximum power is available and the temperature
>> is
>> +allowed to increase to the maximum for the platform.
>> +
>> +M - Medium performance (aka balance). In this mode power will be
>> limited and
>> +the laptop will remain cooler.
>> +
>> +L - Low performance (aka quiet). In this mode power consumption is
>> reduced and
>> +the device will be cooler and quieter.
>> +
>> +Note: High performance mode is only available when the device is in
>> 'deskmode'. If
>> +the device detects that it is on a lap then it will automatically
>> drop into medium
>> +mode to maintain a safer operating temperature.
>> +
>> +The sysfs entry provides the ability to return the current status
>> and to set the
>> +desired mode. For example::
>> +
>> +        echo H > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
>> +        echo M > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
>> +        echo L > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
>> +
>>   EXPERIMENTAL: UWB
>>   -----------------
>>   
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c
>> b/drivers/platform/x86/thinkpad_acpi.c
>> index 41b75dd4755c..8fcb660aa5a2 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -9817,18 +9817,43 @@ static struct ibm_struct
>> lcdshadow_driver_data = {
>>   };
>>   
>>   /*******************************************************************
>> ******
>> - * DYTC subdriver, for the Lenovo lapmode feature
>> + * DYTC subdriver, for the Lenovo lap and performance mode feature
>>    */
>>   
>> +#define DYTC_CMD_QUERY        0 /* To get DYTC status -
>> enable/revision */
>> +#define DYTC_CMD_SET          1 /* To enable/disable IC function
>> mode */
>>   #define DYTC_CMD_GET          2 /* To get current IC function and
>> mode */
>> -#define DYTC_GET_LAPMODE_BIT 17 /* Set when in lapmode */
>> +#define DYTC_CMD_RESET    0x1ff /* To reset back to default */
>>   
>> -static bool dytc_lapmode;
>> +#define DYTC_QUERY_ENABLE_BIT 8  /* Bit 8 - 0 = disabled, 1 =
>> enabled */
>> +#define DYTC_QUERY_SUBREV_BIT 16 /* Bits 16 - 27 - sub revisision */
>> +#define DYTC_QUERY_REV_BIT    28 /* Bits 28 - 31 - revision */
>>   
>> -static void dytc_lapmode_notify_change(void)
>> -{
>> -	sysfs_notify(&tpacpi_pdev->dev.kobj, NULL, "dytc_lapmode");
>> -}
>> +#define DYTC_GET_FUNCTION_BIT 8  /* Bits 8-11 - function setting */
>> +#define DYTC_GET_MODE_BIT     12 /* Bits 12-15 - mode setting */
>> +#define DYTC_GET_LAPMODE_BIT  17 /* Bit 17 - lapmode. Set when on
>> lap */
>> +
>> +#define DYTC_SET_FUNCTION_BIT 12 /* Bits 12-15 - funct setting */
>> +#define DYTC_SET_MODE_BIT     16 /* Bits 16-19 - mode setting */
>> +#define DYTC_SET_VALID_BIT    20 /* Bit 20 - 1 = on, 0 = off */
>> +
>> +#define DYTC_FUNCTION_STD     0  /* Function = 0, standard mode */
>> +#define DYTC_FUNCTION_CQL     1  /* Function = 1, lap mode */
>> +#define DYTC_FUNCTION_MMC     11 /* Function = 11, desk mode */
>> +
>> +#define DYTC_MODE_PERFORM     2  /* High power mode aka performance
>> */
>> +#define DYTC_MODE_QUIET       3  /* low power mode aka quiet */
>> +#define DYTC_MODE_BALANCE   0xF  /* default mode aka balance */
>> +
>> +#define DYTC_DISABLE_CQL ((DYTC_MODE_BALANCE << DYTC_SET_MODE_BIT) |
>> \
>> +		(DYTC_FUNCTION_CQL << DYTC_SET_FUNCTION_BIT) | \
>> +		DYTC_CMD_SET)
>> +#define DYTC_ENABLE_CQL (DYTC_DISABLE_CQL | (1 <<
>> DYTC_SET_VALID_BIT))
>> +
>> +static bool dytc_lapmode;
>> +static int  dytc_perfmode;
>> +static bool dytc_available;
>> +static bool dytc_ignore_next_event;
>>   
>>   static int dytc_command(int command, int *output)
>>   {
>> @@ -9843,6 +9868,87 @@ static int dytc_command(int command, int
>> *output)
>>   	return 0;
>>   }
>>   
>> +static int dytc_perfmode_get(int *perfmode, int *funcmode)
>> +{
>> +	int output, err;
>> +
>> +	if (!dytc_available)
>> +		return -ENODEV;
>> +
>> +	err = dytc_command(DYTC_CMD_GET, &output);
>> +	if (err)
>> +		return err;
>> +	*funcmode = (output >> DYTC_GET_FUNCTION_BIT) & 0xF;
>> +
>> +	if (*funcmode == DYTC_FUNCTION_CQL) {
>> +		int dummy;
>> +		/*
>> +		 * We can't get the mode when in CQL mode - so we
>> disable CQL
>> +		 * mode retrieve the mode and then enable it again.
>> +		 * As disabling/enabling CQL triggers an event we set a
>> flag to
>> +		 * ignore these events. This will be cleared by the
>> event handler
>> +		 */
>> +		dytc_ignore_next_event = true;
>> +		err = dytc_command(DYTC_DISABLE_CQL, &dummy);
>> +		if (err)
>> +			return err;
>> +		err = dytc_command(DYTC_CMD_GET, &output);
>> +		if (err)
>> +			return err;
>> +		/* Again ignore this event */
>> +		dytc_ignore_next_event = true;
>> +		err = dytc_command(DYTC_ENABLE_CQL, &dummy);
>> +		if (err)
>> +			return err;
>> +	}
>> +	*perfmode = (output >> DYTC_GET_MODE_BIT) & 0xF;
>> +	return 0;
>> +}
>> +
>> +static int dytc_perfmode_set(int perfmode)
>> +{
>> +	int err, dytc_set;
>> +	int output;
>> +	int cur_perfmode, cur_funcmode;
>> +
>> +	if (!dytc_available)
>> +		return -ENODEV;
>> +
>> +	if (perfmode == DYTC_MODE_BALANCE) {
>> +		/* To get back to balance mode we just issue a reset
>> command */
>> +		err = dytc_command(DYTC_CMD_RESET, &output);
>> +		if (err)
>> +			return err;
>> +	} else {
>> +		/* Determine if we are in CQL mode. This alters the
>> commands we do */
>> +		err = dytc_perfmode_get(&cur_perfmode, &cur_funcmode);
>> +		if (err)
>> +			return err;
>> +
>> +		if (cur_funcmode == DYTC_FUNCTION_CQL) {
>> +			/* To set the mode we need to disable CQL
>> first*/
>> +			dytc_ignore_next_event = true; /*ignore event*/
>> +			err = dytc_command(DYTC_DISABLE_CQL, &output);
>> +			if (err)
>> +				return err;
>> +		}
>> +		dytc_set = (1 << DYTC_SET_VALID_BIT) |
>> +			(DYTC_FUNCTION_MMC << DYTC_SET_FUNCTION_BIT) |
>> +			(perfmode << DYTC_SET_MODE_BIT) |
>> +			DYTC_CMD_SET;
>> +		err = dytc_command(dytc_set, &output);
>> +		if (err)
>> +			return err;
>> +		if (cur_funcmode == DYTC_FUNCTION_CQL) {
>> +			dytc_ignore_next_event = true; /*ignore event*/
>> +			err = dytc_command(DYTC_ENABLE_CQL, &output);
>> +			if (err)
>> +				return err;
>> +		}
>> +	}
>> +	return 0;
>> +}
>> +
>>   static int dytc_lapmode_get(bool *state)
>>   {
>>   	int output, err;
>> @@ -9854,45 +9960,130 @@ static int dytc_lapmode_get(bool *state)
>>   	return 0;
>>   }
>>   
>> -static void dytc_lapmode_refresh(void)
>> +static void dytc_refresh(void)
>>   {
>> -	bool new_state;
>> +	bool lapmode;
>> +	int perfmode, funcmode;
>>   	int err;
>>   
>> -	err = dytc_lapmode_get(&new_state);
>> -	if (err || (new_state == dytc_lapmode))
>> +	err = dytc_lapmode_get(&lapmode);
>> +	if (err)
>> +		return;
>> +	if (dytc_ignore_next_event) {
>> +		dytc_ignore_next_event = false; /*clear setting*/
>>   		return;
>> +	}
>> +	if (lapmode != dytc_lapmode) {
>> +		dytc_lapmode = lapmode;
>> +		sysfs_notify(&tpacpi_pdev->dev.kobj, NULL,
>> "dytc_lapmode");
>> +	}
>> +	err = dytc_perfmode_get(&perfmode, &funcmode);
>> +	if (err)
>> +		return;
>> +	if (perfmode != dytc_perfmode) {
>> +		dytc_perfmode = perfmode;
>> +		sysfs_notify(&tpacpi_pdev->dev.kobj, NULL,
>> "dytc_perfmode");
>> +	}
>> +}
>> +
>> +/* sysfs perfmode entry */
>> +static ssize_t dytc_perfmode_show(struct device *dev,
>> +				  struct device_attribute *attr,
>> +				  char *buf)
>> +{
>> +	int err;
>> +	int perfmode, funcmode;
>> +
>> +	err = dytc_perfmode_get(&perfmode, &funcmode);
>> +	if (err)
>> +		return err;
>>   
>> -	dytc_lapmode = new_state;
>> -	dytc_lapmode_notify_change();
>> +	switch (perfmode) {
>> +	case DYTC_MODE_PERFORM:
>> +		/* High performance is only available in deskmode */
>> +		if (funcmode == DYTC_FUNCTION_CQL)
>> +			return sprintf(buf, "M*\n");
>> +		else
>> +			return sprintf(buf, "H\n");
>> +	case DYTC_MODE_QUIET:
>> +		return sprintf(buf, "L\n");
>> +	case DYTC_MODE_BALANCE:
>> +		return sprintf(buf, "M\n");
>> +	default:
>> +		return sprintf(buf, "Unknown (%d)\n", perfmode);
>> +	}
>>   }
>>   
>> +static ssize_t dytc_perfmode_store(struct device *dev,
>> +				   struct device_attribute *attr,
>> +				   const char *buf, size_t count)
>> +{
>> +	int err;
>> +
>> +	switch (buf[0]) {
>> +	case 'l':
>> +	case 'L':
>> +		err = dytc_perfmode_set(DYTC_MODE_QUIET);
>> +		break;
>> +	case 'm':
>> +	case 'M':
>> +		err = dytc_perfmode_set(DYTC_MODE_BALANCE);
>> +		break;
>> +	case 'h':
>> +	case 'H':
>> +		err = dytc_perfmode_set(DYTC_MODE_PERFORM);
>> +		break;
>> +	default:
>> +		err = -EINVAL;
>> +		pr_err("Unknown operating mode. Ignoring\n");
>> +		break;
>> +	}
>> +	if (err)
>> +		return err;
>> +
>> +	tpacpi_disclose_usertask(attr->attr.name,
>> +				"Performance mode set to %c\n",
>> buf[0]);
>> +	return count;
>> +}
>> +
>> +static DEVICE_ATTR_RW(dytc_perfmode);
>> +
>> +static struct attribute *dytc_perfmode_attributes[] = {
>> +	&dev_attr_dytc_perfmode.attr,
>> +	NULL
>> +};
>> +
>> +static const struct attribute_group dytc_perf_attr_group = {
>> +	.attrs = dytc_perfmode_attributes
>> +};
>> +
>>   /* sysfs lapmode entry */
>>   static ssize_t dytc_lapmode_show(struct device *dev,
>>   					struct device_attribute *attr,
>>   					char *buf)
>>   {
>> -	return snprintf(buf, PAGE_SIZE, "%d\n", dytc_lapmode);
>> +	return sprintf(buf, "%d\n", dytc_lapmode);
>>   }
>>   
>>   static DEVICE_ATTR_RO(dytc_lapmode);
>>   
>> -static struct attribute *dytc_attributes[] = {
>> +static struct attribute *dytc_lap_attributes[] = {
>>   	&dev_attr_dytc_lapmode.attr,
>> -	NULL,
>> +	NULL
>>   };
>>   
>> -static const struct attribute_group dytc_attr_group = {
>> -	.attrs = dytc_attributes,
>> +static const struct attribute_group dytc_lap_attr_group = {
>> +	.attrs = dytc_lap_attributes
>>   };
>>   
>>   static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
>>   {
>> -	int err;
>> +	int err, output;
>>   
>> -	err = dytc_lapmode_get(&dytc_lapmode);
>> -	/* If support isn't available (ENODEV) then don't return an
>> error
>> -	 * but just don't create the sysfs group
>> +	err = dytc_command(DYTC_CMD_QUERY, &output);
>> +	/*
>> +	 * If support isn't available (ENODEV) then don't return an
>> error
>> +	 * just don't create the sysfs group
>>   	 */
>>   	if (err == -ENODEV)
>>   		return 0;
>> @@ -9900,14 +10091,38 @@ static int tpacpi_dytc_init(struct
>> ibm_init_struct *iibm)
>>   	if (err)
>>   		return err;
>>   
>> -	/* Platform supports this feature - create the group */
>> -	err = sysfs_create_group(&tpacpi_pdev->dev.kobj,
>> &dytc_attr_group);
>> +	/* Check DYTC is enabled and supports mode setting */
>> +	dytc_available = false;
>> +	dytc_ignore_next_event = false;
>> +	if (output & BIT(DYTC_QUERY_ENABLE_BIT)) {
>> +		/* Only DYTC v5.0 and later has this feature. */
>> +		int dytc_version;
>> +
>> +		dytc_version = (output >> DYTC_QUERY_REV_BIT) & 0xF;
>> +		if (dytc_version >= 5) {
>> +			dbg_printk(TPACPI_DBG_INIT,
>> +				   "DYTC version %d: thermal mode
>> available\n", dytc_version);
>> +			dytc_available = true;
>> +			/* Platform supports this feature - create the
>> group */
>> +			err = sysfs_create_group(&tpacpi_pdev-
>>> dev.kobj, &dytc_perf_attr_group);
>> +			if (err)
>> +				return err;
>> +
>> +			err = dytc_lapmode_get(&dytc_lapmode);
>> +			if (err)
>> +				return err;
>> +			err = sysfs_create_group(&tpacpi_pdev-
>>> dev.kobj, &dytc_lap_attr_group);
>> +		}
>> +	}
>>   	return err;
>>   }
>>   
>>   static void dytc_exit(void)
>>   {
>> -	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
>> +	if (dytc_available) {
>> +		sysfs_remove_group(&tpacpi_pdev->dev.kobj,
>> &dytc_lap_attr_group);
>> +		sysfs_remove_group(&tpacpi_pdev->dev.kobj,
>> &dytc_perf_attr_group);
>> +	}
>>   }
>>   
>>   static struct ibm_struct dytc_driver_data = {
>> @@ -10057,7 +10272,7 @@ static void tpacpi_driver_event(const
>> unsigned int hkey_event)
>>   	}
>>   
>>   	if (hkey_event == TP_HKEY_EV_THM_CSM_COMPLETED)
>> -		dytc_lapmode_refresh();
>> +		dytc_refresh();
>>   
>>   	if ((hkey_event == TP_HKEY_EV_PALM_DETECTED) ||
>>   		(hkey_event == TP_HKEY_EV_PALM_UNDETECTED))


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
