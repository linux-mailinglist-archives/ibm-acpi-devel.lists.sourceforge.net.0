Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B01340EE6
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 18 Mar 2021 21:14:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lMz1T-0006ui-TF; Thu, 18 Mar 2021 20:13:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1lMz1S-0006uN-Iv
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 18 Mar 2021 20:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D4LLwlvig5nX6m53Q42Krj5BGEbZpwstl2rwbEHoLcE=; b=YfI/8//rW8EAWUXGJ51zswUruk
 bMK8coy1JyjNLClbYuuFoKH6FKyeoevOQvwgqPQZ6IA9LpGxKLQdUqcobdepoDuS1Q0VAWwdcJUiv
 06HeBAE01t+PootD900qvgcOARHFmEQiyZD+HyX4777EyVa1PU/7SmYy4EvrEUuuS0yk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D4LLwlvig5nX6m53Q42Krj5BGEbZpwstl2rwbEHoLcE=; b=BPKrw0uZ3OEVlw7qoZlP/Q7u+s
 oPR56EBWf1tC+eS0hn8ihafd2RQVNkTYT0I9UeKc5XEusW8SUy0/zVcdSa/RmBNdspw7tnwTO8vU3
 QVGmps/lzytWtX6oh8MsnY2M85kezxxFzZTrhYu98hR2N6u7MFQ1V8x8ocmwf4/16SYU=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.113])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lMz1F-0001oV-HV
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 18 Mar 2021 20:13:34 +0000
Received: from [100.112.6.224] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-2.bemta.az-c.us-east-1.aws.symcld.net id 90/D1-49826-654B3506;
 Thu, 18 Mar 2021 20:13:10 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplleJIrShJLcpLzFFi42LJePGQRzdsS3C
 Cwca3vBanr6ZZvDk+ncli9mEbiznP1jJarN7zgtmB1WPnrLvsHr8PMHrsXvCZyeP9vqtsHp83
 yQWwRrFm5iXlVySwZtz9+oq5YI9Exeb3i9gbGOeLdDFycQgJ/GeUeHXhLROE84JRYumb38xdj
 JwcwgIREr8eNTCCJEQENjFKtL18xg6SYBYIkujf284KYgsJ5Eu8aFkG1sAmoC2xZcsvNhCbV8
 BWYuWmI2A2i4CqxIwdy8B6RQXCJXqv3GaFqBGUODnzCQuIzSlgJ7Ho5CmgOAfQfE2J9bv0IVa
 JS9x6Mp8JwpaX2P52DtgqCQEFiXOPf7FD2AkSPf8esU1gFJyFZOoshEmzkEyahWTSAkaWVYxm
 SUWZ6RkluYmZObqGBga6hoZGuma6hhbGeolVusl6pcW6qYnFJbqGeonlxXrFlbnJOSl6eaklm
 xiBMZNSwLZ9B+Pe1x/0DjFKcjApifI+mRycIMSXlJ9SmZFYnBFfVJqTWnyIUYaDQ0mCd/FKoJ
 xgUWp6akVaZg4wfmHSEhw8SiK8QhuB0rzFBYm5xZnpEKlTjLocL64uXsQsxJKXn5cqJc67cxN
 QkQBIUUZpHtwIWCq5xCgrJczLyMDAIMRTkFqUm1mCKv+KUZyDUUmY98JmoCk8mXklcJteAR3B
 BHREBH8QyBEliQgpqQameUeF86fGbXvv9FbsmsiyJ24/dbQuh5jL1XBuTs1J2hX68eLVeVIXa
 8XOpXLVf77uXChraFJ0IvPdh4fFXRp+PAW75q5U8Eh2EHqZkL7AYuP8i7t7JjqaJen/zg14eT
 VArfnvd9UZF0r+R+/6N2GR5W7TOzfXrCr9lszQNGHuhsv909dftl8un3Son38u26/VTXnOV6o
 7V9z5zj+xKWdXSfU7x7UGTKEXdJZM3cby0nFlPTfv6ucnvybnujw6nfthsua7xRKi01z/vPc4
 GvKhLsBCZNNam7UfXSdKG6yWNnpncUGXo93Q5gXLUXm2j5oTTzAsiDdlbuGZ6hfYseZxccQX9
 64iht1T3llU7ZarUmIpzkg01GIuKk4EAPAdRVSgAwAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-20.tower-415.messagelabs.com!1616098390!35507!1
X-Originating-IP: [104.232.225.12]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.60.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 16649 invoked from network); 18 Mar 2021 20:13:10 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.12)
 by server-20.tower-415.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 18 Mar 2021 20:13:10 -0000
Received: from reswpmail01.lenovo.com (unknown [10.62.32.20])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 0A71D77508F818417F5F;
 Thu, 18 Mar 2021 16:13:10 -0400 (EDT)
Received: from localhost.localdomain (10.38.103.43) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Thu, 18 Mar
 2021 16:13:09 -0400
To: Hans de Goede <hdegoede@redhat.com>, Esteve Varela Colominas
 <esteve.varela@gmail.com>, Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>, 
 Nitin Joshi1 <njoshi1@lenovo.com>
References: <20210315195823.23212-1-esteve.varela@gmail.com>
 <7fcaeb12-35b1-242a-dfd0-02324643c34b@redhat.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <18ee74c0-85d9-6a1a-67f5-82682878001a@lenovo.com>
Date: Thu, 18 Mar 2021 16:13:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <7fcaeb12-35b1-242a-dfd0-02324643c34b@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.38.103.43]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: launchpad.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.113 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.113 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lMz1F-0001oV-HV
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH] thinkpad_acpi: Allow
 the FnLock LED to change state
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Hans

On 18/03/2021 12:49, Hans de Goede wrote:
> Hi,
> 
> On 3/15/21 8:58 PM, Esteve Varela Colominas wrote:
>> On many recent ThinkPad laptops, there's a new LED next to the ESC key,
>> that indicates the FnLock status.
>> When the Fn+ESC combo is pressed, FnLock is toggled, which causes the
>> Media Key functionality to change, making it so that the media keys
>> either perform their media key function, or function as an F-key by
>> default. The Fn key can be used the access the alternate function at any
>> time.
>>
>> With the current linux kernel, the LED doens't change state if you press
>> the Fn+ESC key combo. However, the media key functionality *does*
>> change. This is annoying, since the LED will stay on if it was on during
>> bootup, and it makes it hard to keep track what the current state of the
>> FnLock is.
>>
>> This patch calls an ACPI function, that gets the current media key
>> state, when the Fn+ESC key combo is pressed. Through testing it was
>> discovered that this function causes the LED to update correctly to
>> reflect the current state when this function is called.
>>
>> The relevant ACPI calls are the following:
>> \_SB_.PCI0.LPC0.EC0_.HKEY.GMKS: Get media key state, returns 0x603 if the FnLock mode is enabled, and 0x602 if it's disabled.
>> \_SB_.PCI0.LPC0.EC0_.HKEY.SMKS: Set media key state, sending a 1 will enable FnLock mode, and a 0 will disable it.
>>
>> Relevant discussion:
>> https://bugzilla.kernel.org/show_bug.cgi?id=207841
>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1881015
>>
>> Signed-off-by: Esteve Varela Colominas <esteve.varela@gmail.com>
>> ---
>>  drivers/platform/x86/thinkpad_acpi.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>> index c40470637..09362dd74 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -4079,13 +4079,19 @@ static bool hotkey_notify_6xxx(const u32 hkey,
>>  
>>  	case TP_HKEY_EV_KEY_NUMLOCK:
>>  	case TP_HKEY_EV_KEY_FN:
>> -	case TP_HKEY_EV_KEY_FN_ESC:
>>  		/* key press events, we just ignore them as long as the EC
>>  		 * is still reporting them in the normal keyboard stream */
>>  		*send_acpi_ev = false;
>>  		*ignore_acpi_ev = true;
>>  		return true;
>>  
>> +	case TP_HKEY_EV_KEY_FN_ESC:
>> +		/* Get the media key status to foce the status LED to update */
>> +		acpi_evalf(hkey_handle, NULL, "GMKS", "v");
> 
> Sicne this is a getter function I guess that calling it is mostly harmless
> and if it works around what seems to be a firmware bug on some of the E?95
> ThinkPad models then I guess that this is fine by me.
> 
> Mark, do you have any comments on this ?
I'd like to follow up with the firmware team to make sure we've got the
correct details and implementation (kudos on the reverse engineering
though).

Nitin - you've worked with the firmware team on hotkeys, would you mind
digging into this one please to confirm. In particular if there's been a
change how do we make sure we don't impact older platforms etc.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
