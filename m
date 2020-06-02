Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCB51EB35B
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  2 Jun 2020 04:33:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jfwjs-0003uI-CX; Tue, 02 Jun 2020 02:33:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1jfwjq-0003u2-SA
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 02 Jun 2020 02:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ej1rs0Vo3o9daUrL+Buq8KcGTBtVJA9P9oCZU4eUUWE=; b=VY1cFF3ZBFmasPaLiArubm+zTE
 4djDvUtOvch/pKYDJfqYyqbTUpW3jdYOd8OChJanGTRQFLHaeRFOTJQeaotHY4zKCWCppGDbaQcbW
 TQ8+1odairyS+NlQVt6VqFvZBMQoc90kLzL0MEc3QxPuRZxmCpNw/FLH35X4IJuux/8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ej1rs0Vo3o9daUrL+Buq8KcGTBtVJA9P9oCZU4eUUWE=; b=OPiW36z4yRYdJ54kW4DnXGctD0
 oby7jRvRUvY3WfGZhC/wxKR6lRERqgaPMZ/u0zRKirdBqXviQ//sTbv7vHnftSmfE8qdP8evbK5Kc
 43k85wxBX4LGT3OfueIhuo5YPw8uu1DxP5p5rXZhodk+YkQVLdonwOKecWtkdtisKcgA=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.1])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfwjo-001mWt-I3
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 02 Jun 2020 02:33:14 +0000
Received: from [100.112.1.169] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-b.us-east-1.aws.symcld.net id 4D/26-43121-D5AB5DE5;
 Tue, 02 Jun 2020 02:33:01 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRWlGSWpSXmKPExsWS8eIhj27srqt
 xBqf2yVqs/72SxWL2YRsHJo/fBxg9di/4zBTAFMWamZeUX5HAmvHx9G+mgpmSFXu/9LI1MB4V
 6WLk4hAS+M8o0ff7EROE84hR4ta5NUAOB4ewQK7E+eNARZwcIgIGEvP+bWEGsZkFiiSOT5/OC
 FHfyihxv2E6O0iCTUBbYsuWX2wgNq+ArUR/60lGEJtFQEWi/95LMFtUIEZif/cRVogaQYmTM5
 +wgOziFLCSuLBeDWK+hcTM+ecZIWxxiVtP5jNB2PIS29/OAbtBQkBRYsvUuawQdoLEspd3mCc
 wCs5CMnUWklGzkIyahWTUAkaWVYymSUWZ6RkluYmZObqGBga6hoZGusa6piZ6iVW6SXqlxbqp
 icUluoZ6ieXFesWVuck5KXp5qSWbGIGBn1LAbLaD8efrD3qHGCU5mJREeWU2XY0T4kvKT6nMS
 CzOiC8qzUktPsQow8GhJMG7fSdQTrAoNT21Ii0zBxiFMGkJDh4lEV4lkDRvcUFibnFmOkTqFK
 OilDjvlB1ACQGQREZpHlwbLPIvMcpKCfMyMjAwCPEUpBblZpagyr9iFOdgVBLmjQYZz5OZVwI
 3/RXQYiagxXdmXgJZXJKIkJJqYFLY+tfpIHNWYVe4GucreUvh+Ge3VRZNmm41a/v0x3PSjz16
 5BbIqrQ1f+OSj2u4SqamdryuStwcKV78btPmjvtS0xkOSt5z2q3/2Ctj+z4Tn6ImhdbZfB5ZW
 Tu/TLFKEqnoqOGYs2j2rPdJj4IOPN5a6jrR98jflYsK9BKe+nA8u/af8cZyyd+nVeczvZFqsi
 tY5/HSvE/XZ9LvmldBbx6/2eGrla/UpT8hPbDo7MfO/Xtj3phLJ62MKXb7oPpH07T+yJf6QGM
 BO5NV07jSTU21Jx9h1Zs5r8Bcy/pD/MStX2oqlD7Z/Xzle/LBDJ7u3Ic+t9ieXjkSPXtrg7bD
 FVZjJ/85zUsmZIbfEVotV6jEUpyRaKjFXFScCAC4KOeRdwMAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-10.tower-396.messagelabs.com!1591065181!845710!1
X-Originating-IP: [104.232.225.12]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 28518 invoked from network); 2 Jun 2020 02:33:01 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.12)
 by server-10.tower-396.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 2 Jun 2020 02:33:01 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 4B05E900D9CC0378C639;
 Mon,  1 Jun 2020 22:33:01 -0400 (EDT)
Received: from [10.38.105.244] (10.38.105.244) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 1 Jun 2020
 19:33:00 -0700
To: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <markpearson@lenovo.com>
 <20200601153749.265953-1-markpearson@lenovo.com>
 <20200601224225.GA9259@khazad-dum.debian.net>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <cb5a2069-13eb-18e6-ddd5-2798c2a9e5a5@lenovo.com>
Date: Mon, 1 Jun 2020 22:32:59 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200601224225.GA9259@khazad-dum.debian.net>
Content-Language: en-US
X-Originating-IP: [10.38.105.244]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.1 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.1 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jfwjo-001mWt-I3
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH] platform/x86:
 thinkpad_acpi: lap or desk mode interface
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
Cc: ibm-acpi-devel@lists.sourceforge.net, Nitin Joshi <njoshi1@lenovo.com>,
 Sugumaran <slacshiminar@lenovo.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Henrique

On 6/1/2020 6:42 PM, Henrique de Moraes Holschuh wrote:
> On Mon, 01 Jun 2020, Mark Pearson wrote:
>>    Newer Lenovo Thinkpad platforms have support to identify whether the
>>    system is on-lap or not using an ACPI DYTC event from the firmware.
>>
>>    This patch provides the ability to retrieve the current mode via sysfs
>>    entrypoints and will be used by userspace for thermal mode and WWAN
>>    functionality
>>
>> Co-developed-by: Nitin Joshi <njoshi1@lenovo.com>
>> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
>> Reviewed-by: Sugumaran <slacshiminar@lenovo.com>
>> Signed-off-by: Mark Pearson <markpearson@lenovo.com>
> 
> We need to take this through the kernel platform-driver-x86 ML.
> 
> It would be nice to have standard events for "latop on a surface you
> don't want to burn ("lap"), and the input people might want to suggest
> something, too, so I'd also ask the input maintainer.
> > Please resend, cc to:
> platform-driver-x86@vger.kernel.org
> 

No problem. Always happy to have more input and I'll do that with the 
updated version after fixing the below.

> While at it there is something I noticed right away:
> 
>> +static int dytc_command(int command)
>> +{
>> +	acpi_handle dytc_handle;
>> +	int output;
>> +
>> +	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DYTC", &dytc_handle))) {
>> +		pr_warn("Thinkpad ACPI has no DYTC interface.\n");
>> +		return -ENODEV;
>> +	}
>> +	if (!acpi_evalf(dytc_handle, &output, NULL, "dd", command))
>> +		return -EIO;
>> +	return output;
>> +}
> 
> dytc_command() is called by dytc_lapmode_get():
> 
>> +static int dytc_lapmode_get(void)
>> +{
>> +	int output;
>> +
>> +	output = dytc_command(DYTC_CMD_GET);
>> +	if ((output == -ENODEV) || (output == -EIO))
>> +		return output;
>> +
>> +	return ((output >> DYTC_GET_LAPMODE_SHIFT) &
>> +				DYTC_GET_ENABLE_MASK);
>> +}
> 
> Which is used by dytc_lapmode_init():
> 
> 
>> +static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
>> +{
>> +	int res;
>> +
>> +	dytc_available = false;
>> +	dytc_lapmode = dytc_lapmode_get();
>> +
>> +	if (dytc_lapmode < 0 && dytc_lapmode != -ENODEV)
>> +		return dytc_lapmode;
>> +
>> +	dytc_available = true;
>> +
>> +	res = sysfs_create_group(&tpacpi_pdev->dev.kobj,
>> +				&dytc_attr_group);
>> +
>> +	return res;
>> +}
> 
> Looks like this code flow is going to spam people with pr_warn() on an
> older thinkpad laptop that doesn't have DYTC.  Please fix this, it is
> not strange for an older thinkpad to not have DYTC (even if it is a
> decade's old thinkpad).
> 
> There is a thinkpad-acpi driver-level debug facility you can use to send
> developer-level debug info (such as the init function of a subdriver did
> not find what it wanted), if you want.
> 
> Also, if the code flow goes through dytc_init fine and registers the
> sub-driver, you likely don't have to optimize the rest of the code flow
> for DYTC disappearing from APCI tables ;-)  ENODEV silently would be
> fine for something so unlikely to happen.
> 
Agreed - will fix and I'll test on an older platform.

As an aside only a few of last years platforms have this implementation 
(and then all of this years) so it would impact a lot of devices. Good 
catch.

Thanks
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
