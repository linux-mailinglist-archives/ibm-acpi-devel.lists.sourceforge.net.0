Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0664452EA0
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Nov 2021 11:03:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mmvIh-0008LF-Oy; Tue, 16 Nov 2021 10:02:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mmvIf-0008L8-DY
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 10:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aiZm/l8h1t+i6C/1lnIe2TWJtuPljKczLdv4k7NCKi8=; b=AVTuO/xkN9omUqFWjOxl0EvqeT
 8Y43Y9h6CL1XPO3Ip6xnV2aOR3VbxeSkSrbOuzABbrJhVLSYwVGSbwtOd6JLOKeGuK9nishXZ1ThW
 /TBJaD+wicO7PMQCxRjOYK4YjxcuLUjLzHz2/rA1DVlQzWFZgxrqpG98lhZDwwK4NbFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aiZm/l8h1t+i6C/1lnIe2TWJtuPljKczLdv4k7NCKi8=; b=G9Zy0ZrTiqc0SgBUUH4XSZNISE
 FwaOzUXGDoSQGe8HZg4cPYlfTjtElrhuBstWNW7LZLB/Y/ZEhuMPfnKPoJuykNK9+uzK1om1Nekff
 Aw2hzkeSFtT9W8gxxIIz56Vhql3SgzupFg4wZjxtWEET9eTPLq3CwYPqykIanW/qBXZY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmvIa-0004YE-Ng
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 10:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637056958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aiZm/l8h1t+i6C/1lnIe2TWJtuPljKczLdv4k7NCKi8=;
 b=MEi/ClAf/dI8nTeq24sHS3CEPw5A7OeBq0U/gwzl1eIP/BN0HeC1C5t3uXA5KX5sxuLsGX
 0KfWbwiwxlo/q5JFp+MzFWjGWYogHrOgkGgsy3h/omPtBc6elSDRqmhcdUk3EgENrnQRi2
 MSZmIR22TqDZEoyqY7DW4+lZb6Yo9mg=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-Obwp6QioMGeFjlVbsseS-Q-1; Tue, 16 Nov 2021 05:02:32 -0500
X-MC-Unique: Obwp6QioMGeFjlVbsseS-Q-1
Received: by mail-ed1-f71.google.com with SMTP id
 l15-20020a056402124f00b003e57269ab87so10068085edw.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 16 Nov 2021 02:02:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=aiZm/l8h1t+i6C/1lnIe2TWJtuPljKczLdv4k7NCKi8=;
 b=ZD/Y0LJyHsEnBTxOw/OAORgH6BD0rTDbbWfALtMPthzwPGCHok+69IwMD2o+r9SUhL
 jgBbHiu4ABxLTM7YZARBYt7Qlik6VJ9PTV5KjvijmDAAYuGir8PJY6J869qvG5ggz7GG
 WG0OrDU1FBxzAjab2zu+r6j8tSYvgw/zohuSKV+CiaSNPdXgVFO1v+XZWZIC1zsCCJkT
 KKGhuuLxygVerTKHfn0/jbvxv79IRoRPDtjUouCwOOSq3Y2W+AbwxLYHQRpOLP/cHm71
 PWkC/rZi5mEWgHdmN4Njr9WhFxbhhSjhYg8QKANBgsLUUoPdJfRAAmB12j99vmY3NUsF
 9w3Q==
X-Gm-Message-State: AOAM531MdIojHesgoBSnjP2h/t1AI9HS61ZAa/PyJVAFvxpPw5HQ1SIP
 hSXzc+a7oZ91EsTkOQlcXhVCk9AjXVqWOdyiE2z0EtKUO6Il+b1++L83T8GOYUoy6xPsREFn0x1
 4mvwVe1Ap3FXjoTc1ur7FbXoyM0xiz4Rp+60=
X-Received: by 2002:a17:907:97d4:: with SMTP id
 js20mr8391804ejc.416.1637056951165; 
 Tue, 16 Nov 2021 02:02:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJykAzOBUSb2LJ/7bdebJJCjkz2v8g3ph4oaTOtIeGHv5vCbF1lDBEi5ZOVkbHgvK5dyfr40JQ==
X-Received: by 2002:a17:907:97d4:: with SMTP id
 js20mr8391771ejc.416.1637056951022; 
 Tue, 16 Nov 2021 02:02:31 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id g21sm7954974ejt.87.2021.11.16.02.02.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Nov 2021 02:02:29 -0800 (PST)
Message-ID: <cdcea26c-b780-92fc-0e42-be52d9a5a5c5@redhat.com>
Date: Tue, 16 Nov 2021 11:02:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Slark Xiao <slark_xiao@163.com>
References: <20211108060648.8212-1-slark_xiao@163.com>
 <b3523a57-a21e-80ca-561d-23f6ee89913d@redhat.com>
 <7821731c.1990.17d02723fb6.Coremail.slark_xiao@163.com>
 <350a209b.242b.17d2779c109.Coremail.slark_xiao@163.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <350a209b.242b.17d2779c109.Coremail.slark_xiao@163.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 11/16/21 07:40,
 Slark Xiao wrote: > > > > At 2021-11-09
 10:06:21, "Slark Xiao" <slark_xiao@163.com> wrote: >> >> >> At 2021-11-08
 22:32:56, "Hans de Goede" <hdegoede@redhat.com> wrote: >>> Hi, >>> [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mmvIa-0004YE-Ng
Subject: Re: [ibm-acpi-devel] [PATCH v3] Fix WWAN device disabled issue
 after S3 deep
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
Cc: mgross@linux.intel.com, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 hmh@hmh.eng.br, markpearson@lenovo.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 11/16/21 07:40, Slark Xiao wrote:
> 
> 
> 
> At 2021-11-09 10:06:21, "Slark Xiao" <slark_xiao@163.com> wrote:
>>
>>
>> At 2021-11-08 22:32:56, "Hans de Goede" <hdegoede@redhat.com> wrote:
>>> Hi,
>>>
>>> On 11/8/21 07:06, Slark Xiao wrote:
>>>> When WWAN device wake from S3 deep, under thinkpad platform,
>>>> WWAN would be disabled. This disable status could be checked
>>>> by command 'nmcli r wwan' or 'rfkill list'.
>>>>
>>>> Issue analysis as below:
>>>>   When host resume from S3 deep, thinkpad_acpi driver would
>>>> call hotkey_resume() function. Finnaly, it will use
>>>> wan_get_status to check the current status of WWAN device.
>>>> During this resume progress, wan_get_status would always
>>>> return off even WWAN boot up completely.
>>>>   In patch V2, Hans said 'sw_state should be unchanged
>>>> after a suspend/resume. It's better to drop the
>>>> tpacpi_rfk_update_swstate call all together from the
>>>> resume path'.
>>>>   And it's confimed by Lenovo that GWAN is no longer
>>>>  available from WHL generation because the design does not
>>>>  match with current pin control.
>>>>
>>>> Signed-off-by: Slark Xiao <slark_xiao@163.com>
>>>
>>> Thanks, patch looks good to me:
>>>
>>> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
>>>
>>> I will merge this once 5.16-rc1 is out.
>>>
>>> Regards,
>>>
> Hi Hans,
>   5.16-rc1 is already out. Could you help merge this patch into baseline now?

5.16-rc1 has only been out for 1 day, some patience please!

But yes I plan to send a fixes pull-req to Linus later today
including this fix.

Regards,

Hans




>>>> ---
>>>>  drivers/platform/x86/thinkpad_acpi.c | 12 ------------
>>>>  1 file changed, 12 deletions(-)
>>>>
>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>>>> index 50ff04c84650..f1cbd27282e1 100644
>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>> @@ -1178,15 +1178,6 @@ static int tpacpi_rfk_update_swstate(const struct tpacpi_rfk *tp_rfk)
>>>>  	return status;
>>>>  }
>>>>  
>>>> -/* Query FW and update rfkill sw state for all rfkill switches */
>>>> -static void tpacpi_rfk_update_swstate_all(void)
>>>> -{
>>>> -	unsigned int i;
>>>> -
>>>> -	for (i = 0; i < TPACPI_RFK_SW_MAX; i++)
>>>> -		tpacpi_rfk_update_swstate(tpacpi_rfkill_switches[i]);
>>>> -}
>>>> -
>>>>  /*
>>>>   * Sync the HW-blocking state of all rfkill switches,
>>>>   * do notice it causes the rfkill core to schedule uevents
>>>> @@ -3129,9 +3120,6 @@ static void tpacpi_send_radiosw_update(void)
>>>>  	if (wlsw == TPACPI_RFK_RADIO_OFF)
>>>>  		tpacpi_rfk_update_hwblock_state(true);
>>>>  
>>>> -	/* Sync sw blocking state */
>>>> -	tpacpi_rfk_update_swstate_all();
>>>> -
>>>>  	/* Sync hw blocking state last if it is hw-unblocked */
>>>>  	if (wlsw == TPACPI_RFK_RADIO_ON)
>>>>  		tpacpi_rfk_update_hwblock_state(false);
>>>>



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
