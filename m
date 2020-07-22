Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E02D22A028
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 Jul 2020 21:30:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jyKR3-0003fx-1Z; Wed, 22 Jul 2020 19:29:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1jyKR1-0003fq-FQ
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jul 2020 19:29:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RBN9mwtZYsAmsEAPRcHkXlcp52L2iQkkpjU9/GfJn9I=; b=BJXqO6WC2i6aBVvrMau4puk8wD
 POBS+m6KWbmy4u36wZEyKk10CclriAh3w+65VWqgCT7prMg0EPquwPwtHJVD+iTnJtqiWARQFtqDR
 f4+5PbEnGH+e/xniiB2B7BxUaGw4dfUh39hqrEbv2wHlZmjXFotE+YTgCJjT7kad1rac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RBN9mwtZYsAmsEAPRcHkXlcp52L2iQkkpjU9/GfJn9I=; b=FzMUI2+PD/7ye5jSP0wcnnbW4f
 sXA0ft3ujlMCq8hD0ZtaArby8QzniNRIG0BrTnXAUNzWcpu82KAUqlagOlYKZnN/Mt1Yh7LlXwd2T
 mqNXbsr1SGoec1N4wALwofJmgP4BeibihaBNyQXrPc6NZ2SAdTASFP0tM8pylmuCBhYg=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.5])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jyKQx-00Gzog-Pt
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jul 2020 19:29:47 +0000
Received: from [100.112.3.165] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-b.us-east-1.aws.symcld.net id 10/06-31766-793981F5;
 Wed, 22 Jul 2020 19:29:27 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgleJIrShJLcpLzFFi42LJePGQR3f6ZIl
 4g7e3VS32X5eweDA33WL2YRuLOc/WMlo0dTaxWaze84LZgc1j0swZzB6/DzB67F7wmcnj/b6r
 bB6fN8kFsEaxZuYl5VcksGbMmfCFseCtZsWfZ9MZGxivKnYxcnEICfxnlFg37SMjhPOQUWLuj
 ANADieHsECMxP1F89lAbBEBU4lf86awgxQxCxxhkrh47A4LRMdyRoktJ6Yyg1SxCWhLbNnyC6
 yDV8BWYmfvL3YQm0VAVeLTqkYWEFtUIFbiV/tBZogaQYmTM5+AxTmB4me+z2cFsZkFLCRmzj/
 PCGGLS9x6Mp8JwpaX2P52DlivhICCRPvFXSwQdoLEspd3mCcwCs5CMnYWklGzkIyahWTUAkaW
 VYxmSUWZ6RkluYmZObqGBga6hoZGuga6RkZGeolVukl6pcW6qYnFJbqGeonlxXrFlbnJOSl6e
 aklmxiBEZRSwHBvB+Of1x/0DjFKcjApifLea5eIF+JLyk+pzEgszogvKs1JLT7EKMPBoSTB2z
 ERKCdYlJqeWpGWmQOMZpi0BAePkghvBEiat7ggMbc4Mx0idYpRUUqctxckIQCSyCjNg2uDJZB
 LjLJSwryMDAwMQjwFqUW5mSWo8q8YxTkYlYR5RUGm8GTmlcBNfwW0mAlosfJdUZDFJYkIKakG
 pupFyVWrg75M/MmxvsHh5jf+2bIX+CRO2r6cMVPatu55RJLd5Qc/dGSdGALedx3a9Knt3eZpW
 31v7N5p1rNxB+/6Kav2PLj9+SXnq5p5G3p5RXi7nJJkyuYma5RLTfT6Wd56pyBmS9v2gkMlHr
 faln6ZIP6r8KZB5H6pnVPelkdvqLmeflcgZ/cfV5lVcYLsSer3K//PdPki+KDfqFgyJTBk+oP
 Tp595yrZEC3icT5lZcexKg9nBC/MqGKprn2cVztmkWJ/XnHjmy5+qf90Zaw0lG676dlczfJb+
 f+fQF6szIVOzl3IF3XYLvcq11Xaxxe0tbTOPfXn3/WzjldoNakyHLTvUppY+3BlZV11sckWJp
 Tgj0VCLuag4EQBcyTeXmwMAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-35.tower-395.messagelabs.com!1595446167!2707425!1
X-Originating-IP: [104.232.225.12]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.2; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 9533 invoked from network); 22 Jul 2020 19:29:27 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.12)
 by server-35.tower-395.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 22 Jul 2020 19:29:27 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 6737FB5C7A6F2D6B47C8;
 Wed, 22 Jul 2020 15:29:27 -0400 (EDT)
Received: from [10.38.96.128] (10.38.96.128) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Wed, 22 Jul
 2020 12:29:26 -0700
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>
References: <markpearson@lenovo.com>
 <20200722171108.65185-1-markpearson@lenovo.com>
 <DM6PR19MB263650F7DC4B6680A5EFC5DAFA790@DM6PR19MB2636.namprd19.prod.outlook.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <b79e0359-536d-f496-a01e-fe4c4b7796cc@lenovo.com>
Date: Wed, 22 Jul 2020 15:29:25 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <DM6PR19MB263650F7DC4B6680A5EFC5DAFA790@DM6PR19MB2636.namprd19.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.38.96.128]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.5 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1jyKQx-00Gzog-Pt
Subject: Re: [ibm-acpi-devel] [External] RE: [PATCH] platform/x86:
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
Cc: "bberg@redhat.com" <bberg@redhat.com>,
 "ibm-acpi@hmh.eng.br" <ibm-acpi@hmh.eng.br>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "ibm-acpi-devel@lists.sourceforge.net" <ibm-acpi-devel@lists.sourceforge.net>,
 Nitin Joshi <njoshi1@lenovo.com>, "bnocera@redhat.com" <bnocera@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mario

On 7/22/2020 2:46 PM, Limonciello, Mario wrote:
<snip>
>>
>> +DYTC Thermal mode status and control
>> +------------------------------------
>> +
>> +sysfs: dytc_perfmode
>> +
>> +Lenovo Thinkpad platforms with DYTC version 5 and newer have enhanced
>> firmware to
>> +provide improved performance control.
>> +
>> +The firmware can be controlled by hotkeys (FN+H, FN+M, FN+L) to switch the
>> +operating mode between three different modes. This sysfs node provide a
>> better
>> +interface for user space to use
> 
> So is userspace also notified in some way when you use the hotkey to change, or
> is the event usurped by the EC?  Is this by the event TP_HKEY_EV_THM_CSM_COMPLETED?
> 
I haven't added that yet - my aim with this patch was to get the sysfs 
API available. I'll look at adding the notification.

> You might consider to mention what other interfaces will conflict with this
> and document them and/or artificially block them when this is loaded to prevent
> such a conflict.
I'm afraid I don't know what other interface will be conflicted with. Is 
there anything in particular I should be looking for? What did you have 
in mind?

The firmware is operating by default and this patch is just providing 
user space with a way of determining the current mode and changing it by 
an alternate mechanism than hotkeys (I know some people dislike the 
hotkeys...)

> 
<snip>
>> +
>> +The sysfs entry provides the ability to return the current status and to set
>> the
>> +desired mode. For example::
>> +
>> +        echo H > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
>> +        echo M > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
>> +        echo L > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
> 
> Doesn't this need ABI documentation submitted as part of the patch?
OK - I'll need some help here as I'm not sure what I missed. Isn't that 
what this part of the patch is covering? If you can give me some 
pointers for what I should be putting where I'll do that.
> 
<snip>

>> +
>> +	if (perfmode == DYTC_MODE_BALANCE) {
>> +		/* To get back to balance mode we just issue a reset command */
>> +		err = dytc_command(DYTC_CMD_RESET, &output);
>> +		if (err)
>> +			return err;
>> +	} else {
>> +		/* Determine if we are in CQL mode. This alters the commands we do
>> */
>> +		err = dytc_perfmode_get(&cur_perfmode, &cur_funcmode);
>> +		if (err)
>> +			return err;
>> +
>> +		if (cur_funcmode == DYTC_FUNCTION_CQL) {
>> +			/* To set the mode we need to disable CQL first*/
>> +			err = dytc_command(0x000F1001 /*Disable CQL*/, &output);
> 
> Why not put 0x000F1001 and 0x001F1001 as defines at the top?
Fair point - I will fix that.

> 
<snip>

>> +
>> +	switch (perfmode) {
>> +	case DYTC_MODE_PERFORM:
>> +		/* High performance is only available in deskmode */
>> +		if (funcmode == DYTC_FUNCTION_CQL)
>> +			return snprintf(buf, PAGE_SIZE, "Medium (Reduced as lapmode
>> active)\n");
>> +		else
>> +			return snprintf(buf, PAGE_SIZE, "High\n");
>> +	case DYTC_MODE_QUIET:
>> +		return snprintf(buf, PAGE_SIZE, "Low\n");
>> +	case DYTC_MODE_BALANCE:
>> +		return snprintf(buf, PAGE_SIZE, "Medium\n");
>> +	default:
>> +		return snprintf(buf, PAGE_SIZE, "Unknown (%d)\n", perfmode);
>> +	}
>> +}
> 
> I think it's pretty confusing that you write "H/M/L" into this file, but you
> get back a full string.
The main reason here for the string is the need to let the user know 
they are operating in medium mode even though high has been configured - 
because the device is on their lap.
My thinking was you can parse the first letter to get H/M/L but more 
information is available for the subtleties.
I considered another letter but couldn't determine something that was 
obvious to a user (Lower case 'h' is my best candidate?) and decided a 
string was nicer.

I'd appreciate input from others as to the best thing to provide here.

> 
>> +
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
> 
> Shouldn't this be dev_err?
Ack - I will correct

<snip>
>>
>> +	/* Check DYTC is enabled and supports mode setting */
>> +	dytc_mode_available = false;
>> +	if (output & BIT(DYTC_QUERY_ENABLE_BIT)) {
>> +		/* Only DYTC v5.0 and later has this feature. */
>> +		int dytc_version;
>> +
>> +		dytc_version = (output >> DYTC_QUERY_REV_BIT) & 0xF;
>> +		if (dytc_version >= 5) {
>> +			pr_info("DYTC thermal mode configuration available\n");
> 
> I would argue this isn't useful to most people.
> 1) You should decrease this to debug for use with dynamic debugging
> 2) Output in the log what integer value you returned back in case of a need
> to identify future firmware bugs.
Agreed on both fronts. I will fix.

> 
>> +			dytc_mode_available = true;
> 
> I think you shouldn't set this flag until after the group is actually created.
> 
Agreed. I will fix

Thanks for the feedback - very much appreciated.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
