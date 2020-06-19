Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B378200DD8
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 19 Jun 2020 17:03:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jmIYG-0004em-De; Fri, 19 Jun 2020 15:03:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1jmIYE-0004eZ-Ic
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 19 Jun 2020 15:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i3EMbq5C2hFIPfxTmHqgKwQ/a0mtCVtwIBxRwf6oOrE=; b=G9utM3hWIGVEMVpDwn282FuFyW
 p9tnTCbX9NnSdgoyGNaPxBP2QWDroqGFaxh8KtIn+jf4qBB7ctfCiAypH/YKvJl2T6L0WfJXkX9g+
 oPwU0epz2679owDJmgbM17fWLA2js+Cyx8bAq0D/CbbRqgnc5bp0PKecj2xNUHoxqrDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i3EMbq5C2hFIPfxTmHqgKwQ/a0mtCVtwIBxRwf6oOrE=; b=K9D+FtwXiLTaUYIyPEpWrX5lPP
 JV11rEj2qxy8NFtm5DqEY3GfYH+DWLy0lqLnKV385p1xArnJONv9IFGcrBeK93BmwkjkZPGFeAitX
 cVJH9zXw/3W9d/SFp3HzN4WUsIorGg3x5d2z29kmfabo/XEhd/69btLlqaZD/zaTaVeY=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.116])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jmIYC-0094RT-OY
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 19 Jun 2020 15:03:30 +0000
Received: from [100.112.6.42] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-c.us-east-1.aws.symcld.net id B1/BB-14069-7B3DCEE5;
 Fri, 19 Jun 2020 15:03:19 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRWlGSWpSXmKPExsWS8eIhr+72y2/
 iDBb85bN4MDfdYvZhG4s5z9YyWqze84LZgcXj9wFGj90LPjN5vN93lc3j8ya5AJYo1sy8pPyK
 BNaME98usBRMkql49e8uWwPjH7EuRi4OIYH/jBLr+l6zQDiPGSU+TJrH3sXIySEskCZx7sAnM
 FtEQF3iS+c0RpAiZoGNjBJ7/35iheiYyiix9OZENpAqNgFtiS1bfoHZvAK2Ekvn9YJ1swioSl
 za38YMYosKxEis+/ieFaJGUOLkzCdAqzk4OAW8JdpXSYOEmQUsJGbOP88IYYtL3HoynwnClpf
 Y/nYO2BgJAUWJy63roewEiWUv7zBPYBSchWTqLCSjZiEZNQvJqAWMLKsYTZOKMtMzSnITM3N0
 DQ0MdA0NjXRNdI1N9BKrdJP1Sot1UxOLS3QN9RLLi/WKK3OTc1L08lJLNjECIySlgEVpB2Pzm
 w96hxglOZiURHmNT72JE+JLyk+pzEgszogvKs1JLT7EKMPBoSTB230RKCdYlJqeWpGWmQOMVp
 i0BAePkgjvDJA0b3FBYm5xZjpE6hSjopQ4b+kloIQASCKjNA+uDZYgLjHKSgnzMjIwMAjxFKQ
 W5WaWoMq/YhTnYFQS5m0BmcKTmVcCN/0V0GImoMVa4a9AFpckIqSkGpikDm+RfPNTkeE0e2bp
 ERXL4rgXAgbTsu23dT9/wWeWnqPqfinzUs7M9Pcpb15HazM5Tn/BLdwlu13mYcaZODvjhuT1h
 0+3VbDHNJu0ZS09JxgRIHZZ0qKtZ8qbjryopNrnjRWrJX71BK25rrfS8eKiuR0rfFslVyqtd0
 /NrtkgExrd2LrsuJxt/U2HYLv97ol3n+k+Vjp+YfGGbhar+oDrzIUOve4VWy01z7+11ZHOfqL
 4NC2Lb42MUGjEgjOZszki416slWK8NPm9abjFmWULI7LtUwSKgi/kvloza9aa3x32T668aQjg
 3VJZ3qeRP/nH42qOzhVqcxwOrXiSuvHC2++v+BR02vUb52z5pMRSnJFoqMVcVJwIAOK57oaLA
 wAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-9.tower-415.messagelabs.com!1592578999!945082!1
X-Originating-IP: [104.232.225.13]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.2; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22095 invoked from network); 19 Jun 2020 15:03:19 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.13)
 by server-9.tower-415.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 19 Jun 2020 15:03:19 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 0BBD3127CCE16DD236FD;
 Fri, 19 Jun 2020 11:03:19 -0400 (EDT)
Received: from [10.38.106.204] (10.38.106.204) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Fri, 19 Jun
 2020 08:02:58 -0700
To: Bastien Nocera <bnocera@redhat.com>
References: <markpearson@lenovo.com>
 <20200617180937.14949-1-markpearson@lenovo.com>
 <1905013469.24563660.1592574774373.JavaMail.zimbra@redhat.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <89c38303-9463-d671-1f86-e0c6a433748c@lenovo.com>
Date: Fri, 19 Jun 2020 11:02:48 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <1905013469.24563660.1592574774373.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.38.106.204]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.116 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.116 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jmIYC-0094RT-OY
Subject: Re: [ibm-acpi-devel] [External] Re: [RESEND PATCH v2] platform/x86:
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
Cc: Sugumaran <slacshiminar@lenovo.com>, ibm-acpi-devel@lists.sourceforge.net,
 ibm-acpi@hmh.eng.br, Nitin Joshi <njoshi1@lenovo.com>,
 platform-driver-x86@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Bastien

On 6/19/2020 9:52 AM, Bastien Nocera wrote:
> Hey Mark,
> 
> ----- Original Message -----
<snip>
>>   
>> +/*************************************************************************
>> + * DYTC subdriver, for the Lenovo performace mode feature
>> + */
> 
> I don't think this should mention the performance mode, as it's a lap/table
> detection mode. Do we need to call that "DYTC"? "lapmode"? "lap_detection"?
> Or does the DYTC interface offer more functionality that we'd export in the
> future?
> 
I've just noticed that I can't spell performance either which is
embarrassing :)

Originally I developed this code for a thermal modes feature - but
this portion of it is also needed for WWAN so we pulled out just this
piece as the first bit to get in. Having WWAN available for users is
more important than the thermal mode interface (there are a lot of users
who want WWAN working properly on our laptops).

So...yes, DYTC does offer more functionality and I'm planning on
proposing the thermal patch as soon as this one makes it through, but I
agree that in the context of this patch the comment is misleading. I
will clean that up for this version.

>> +
>> +#define DYTC_CMD_GET      2 /*To get current IC function and mode*/
> 
> For this comment and all the ones below, space after "/*" and before "*/"
> 
Ack

>> +#define DYTC_GET_ENABLE_MASK  0x1 /*0 = disabled, 1 = enabled*/
> 
> Is that necessary?
> 
Another hangover in that the other fields used for the thermal mode have
more interesting masks and this fitted in with that. I can remove for
now if it's really a problem.

>> +#define DYTC_GET_LAPMODE_SHIFT 17
> 
> You'd probably want to call this "bit" rather than shift. We shift it to read
> the value, but 17 is the bit's position. (See BIT() usage in the driver)
> 
Ack
> Do you want to add a comment here? Is there anything else that could be
> documented (the other bits, which versions of firmware would have that, if
> there's a publicly available version, or which hardware if publicly available)
> 
So what is the preference normally? More pieces will definitely be made
public when I release the thermal mode updates but I assumed we kept
things related only to the code used. I can add more detail here if that
helps. Not trying to hide anything :)

>> +static int  dytc_lapmode;
>> +static void dytc_lapmode_notify_change(void)
>> +{
>> +	sysfs_notify(&tpacpi_pdev->dev.kobj, NULL,
>> +			"dytc_lapmode");
>> +}
>> +
>> +static int dytc_command(int command)
>> +{
>> +	acpi_handle dytc_handle;
>> +	int output;
>> +
>> +	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "DYTC", &dytc_handle))) {
>> +		/*Platform doesn't support DYTC*/
>> +		return -ENODEV;
>> +	}
>> +	if (!acpi_evalf(dytc_handle, &output, NULL, "dd", command))
>> +		return -EIO;
>> +	return output;
>> +}
>> +
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
> 
> Use BIT() instead? eg.
> return (output & BIT(DYTC_GET_LAPMODE_SHIFT));
> 
Ack
>> +}
>> +
>> +static void dytc_lapmode_refresh(void)
>> +{
>> +	int new_state;
>> +
>> +	new_state = dytc_lapmode_get();
>> +	if ((new_state == -ENODEV) || (new_state == -EIO))
>> +		return;
> 
> You could also return early if "dytc_lapmode == new_state".
> 
Good point.

> Rest looks good to me.
> 
Great - thanks for the review. I'll prepare the updates and if there's
any feedback on the questions above please let me know

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
