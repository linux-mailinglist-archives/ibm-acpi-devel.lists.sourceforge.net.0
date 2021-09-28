Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 608CD41B549
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 28 Sep 2021 19:38:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mVH38-0004nu-5D; Tue, 28 Sep 2021 17:37:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1mVH35-0004no-Td
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Sep 2021 17:37:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dge3VVGgzmJFOKMEGjGlEoUpp6t8t6xym7qtRDntnkM=; b=fUx0J4hPUGijWsgIeM6QRtSAEm
 oLFUG+ng4jHVjCfyqNN1dP7G1WQmtDmFgLiyzqkMzF7mAuCADhqMgC+pph1tDpE5pfpu61wUrsjte
 syCRiCXzX7BFesEW6+QEuNTPce428Lg904CM2NTmCjq4acsbfDcDrUhkjBSWVzbYuefI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Dge3VVGgzmJFOKMEGjGlEoUpp6t8t6xym7qtRDntnkM=; b=LXN9U8ob9RMFanBmf2cntQkz0g
 WMfmaeoTP3096r0jLzsxRKobGN6bauRTH8wrWFHe6uSHpIyFDnu9bv7zfNiYUG4asysVB0UcUykZI
 TybF0dYAr7lUDFGkFb8nz0CQWsIU9OMBz3/o6bQp5GXlKTjYxJ1+xJE+U4l24CNrde8c=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mVH32-009stn-Au
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Sep 2021 17:37:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632850658;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Dge3VVGgzmJFOKMEGjGlEoUpp6t8t6xym7qtRDntnkM=;
 b=Kysu7rZMGyy/SsS/woEI2J1/jAkcidguWuaHgBWCQvm6Sy6B+g9KOgVs6q8js+vXMJKKQS
 BVZLy0Y/GPxHpS2kOxqPQYVl25DrpAdQxLeJHyrNaCPm9QDcH1125W1wR+TxiBr+SIIPBs
 gnhTqK+fgD9l19hZsOxXQbcY83jTVLA=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-448-9IS3oXSXO7WrcZOpe6fDag-1; Tue, 28 Sep 2021 13:37:34 -0400
X-MC-Unique: 9IS3oXSXO7WrcZOpe6fDag-1
Received: by mail-ed1-f71.google.com with SMTP id
 d11-20020a50cd4b000000b003da63711a8aso10756787edj.20
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 28 Sep 2021 10:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dge3VVGgzmJFOKMEGjGlEoUpp6t8t6xym7qtRDntnkM=;
 b=XTDJDPPy4D8iAXXNMlLLlUhYtfZWDIO1BctSfFqueJdripmhYgBZDbEX3oS8zq69W8
 E5OHh5rRe2t7ao/HUq1nJ1p/fdGH4BEMHtot5RcaOQ6k+xfAdUUDgsrIBZXuPVLcuVJw
 vp/wCFPpk1twir35UlEn1wqjIies3av+lKYhBLg7w0N89q6vHR6J8dAvUpYPFNlOBZF+
 pwAmGX4gZIfRwdgohFZi9rViosFyjramlOWIejSU+w4RUm/Zh30BUKic6qj+PDBzsNOF
 wG6+KwSs/+0V8qKcy1Cm5XxM+qOrBeEx93gmuJoy/jEYYsrV7OjVAedPXH88nodSrj3g
 t1FA==
X-Gm-Message-State: AOAM533OeyqRAPdmTDlvSRiwfM9OOb8ZDLG4YNLzZ1aPZHX0HsVOgY8U
 pvh6lm/vPCMauRuNMyb8P1Z3csj+pYPTXeFIi6D6TrittxQXxsw8r2YjVFrzBCKx+fA+wvY2dcF
 /c6GJtNjOR+N47FemjwcE60u/n0fi7GLRrP0=
X-Received: by 2002:a50:eac4:: with SMTP id u4mr8852471edp.259.1632850653644; 
 Tue, 28 Sep 2021 10:37:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJybEQpF8E6cr85iiKnEUDARYctZPPgmTbaT8p8ixzPpQAIyjAm+0Gu0biSEaZvQip5/a6JcOg==
X-Received: by 2002:a50:eac4:: with SMTP id u4mr8852425edp.259.1632850653270; 
 Tue, 28 Sep 2021 10:37:33 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id lb12sm10993043ejc.28.2021.09.28.10.37.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Sep 2021 10:37:32 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20210926111908.6950-1-len.baker@gmx.com>
 <YVBaQAFVX1CeQUPE@kroah.com>
 <50135c0e-e291-509f-2286-a1e443fdf4f3@redhat.com>
 <YVM9BhHcMRVnEder@kroah.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <de92227c-5f39-ecdc-af6d-87970eba07b9@redhat.com>
Date: Tue, 28 Sep 2021 19:37:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YVM9BhHcMRVnEder@kroah.com>
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
 Content preview:  Hi, On 9/28/21 6:04 PM, Greg Kroah-Hartman wrote: > On Tue, 
 Sep 28, 2021 at 04:55:25PM +0200, Hans de Goede wrote: >> Hi All, >> >> On
 9/26/21 1:32 PM, Greg Kroah-Hartman wrote: >>> On Sun, Sep 26, 2021 a [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mVH32-009stn-Au
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: thinkpad_acpi: Switch
 to common use of attributes
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
Cc: Mark Gross <mgross@linux.intel.com>, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Len Baker <len.baker@gmx.com>, linux-hardening@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 9/28/21 6:04 PM, Greg Kroah-Hartman wrote:
> On Tue, Sep 28, 2021 at 04:55:25PM +0200, Hans de Goede wrote:
>> Hi All,
>>
>> On 9/26/21 1:32 PM, Greg Kroah-Hartman wrote:
>>> On Sun, Sep 26, 2021 at 01:19:08PM +0200, Len Baker wrote:
>>>> As noted in the "Deprecated Interfaces, Language Features, Attributes,
>>>> and Conventions" documentation [1], size calculations (especially
>>>> multiplication) should not be performed in memory allocator (or similar)
>>>> function arguments due to the risk of them overflowing. This could lead
>>>> to values wrapping around and a smaller allocation being made than the
>>>> caller was expecting. Using those allocations could lead to linear
>>>> overflows of heap memory and other misbehaviors.
>>>>
>>>> So, to avoid open-coded arithmetic in the kzalloc() call inside the
>>>> create_attr_set() function the code must be refactored. Using the
>>>> struct_size() helper is the fast solution but it is better to switch
>>>> this code to common use of attributes.
>>>>
>>>> Then, remove all the custom code to manage hotkey attributes and use the
>>>> attribute_group structure instead, refactoring the code accordingly.
>>>> Also, to manage the optional hotkey attributes (hotkey_tablet_mode and
>>>> hotkey_radio_sw) use the is_visible callback from the same structure.
>>>>
>>>> Moreover, now the hotkey_init_tablet_mode() function never returns a
>>>> negative number. So, the check after the call can be safely removed.
>>>>
>>>> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments
>>>>
>>>> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>> Signed-off-by: Len Baker <len.baker@gmx.com>
>>>> ---
>>>> Hi,
>>>>
>>>> Following the suggestions made by Greg I have switch the code to common
>>>> use of attributes. However this code is untested. If someone could test
>>>> it would be great.
>>>
>>> Much better, thanks.
>>
>> This indeed is much better and a great cleanup, thanks.
>>
>>>
>>> But, I have a few questions here:
>>>
>>>> @@ -3161,9 +3106,7 @@ static void hotkey_exit(void)
>>>>  	hotkey_poll_stop_sync();
>>>>  	mutex_unlock(&hotkey_mutex);
>>>>  #endif
>>>> -
>>>> -	if (hotkey_dev_attributes)
>>>> -		delete_attr_set(hotkey_dev_attributes, &tpacpi_pdev->dev.kobj);
>>>> +	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &hotkey_attr_group);
>>>
>>> Why do you have to manually add/remove these groups still?
>>>
>>> A huge hint that something is going wrong is when you have to call a
>>> sysfs_*() call from within a driver.  There should be proper driver_*()
>>> calls for you instead to get the job done.
>>>
>>> As this is a platform device, why not set the dev_groups variable in the
>>> platform_driver field so that these attribute groups get added and
>>> removed automatically?
>>
>> The thinkpad_acpi code talks to the ACPI object representing the
>> ThinkPad embedded-controller and that has a lot of different sub-functionalities
>> which may or may not be present depending on the model laptop as well
>> as on the hw-configuration of the model.
>>
>> The code is organized around all the different sub-functions with there
>> being a separate init + exit function for each sub-function, including
>> with first detecting in the init function if the functionality is present
>> (e.g. don't register SW_TABLETMODE_SW evdev reporting when the device
>> is not convertible / don register a WWAN rfkill if there is no WWAN modem).
>>
>> Many (but not all) of the sub-functions come with a few sysfs-attributes
>> under /sys/bus/platform/devices/thinkpad_acpi/ many of the separate
>> function_init functions therefor call sysfs_create_group() for their own
>> set of sysfs-attributes, if the function is present on the machine.
>>
>>> An example commit to look at that shows how this was converted for one
>>> driver is 5bd08a4ae3d0 ("platform: x86: hp-wmi: convert platform driver
>>> to use dev_groups").  See if that helps here as well.
>>
>> Right, that results in a very nice cleanup. But there all the attributes
>> were always registered before the patch so throwing them together in a
>> ATTRIBUTE_GROUPS(hp_wmi) makes a ton of sense.
>>
>> Here however we have all the separate function_init() blocks each
>> conditionally adding their own attributes if the function is present,
>> so that is different.
>>
>> Currently there already are 8 separate sysfs_create_group() calls in
>> the thinkpad_acpi code, so even if we want to refactor this (I'm not
>> sure that we do) then doing so would fall outside of the scope of this
>> patch.
>>
>> Greg, since this resolves / defers your remark and since this otherwise
>> is a nice cleanup I'm going to merge this version of this patch now.
> 
> Ok, but having this all in one big list of attributes does work.  You
> can have multiple attribute groups listed together (that's why it's a
> list of attribute groups, not just one attribute group that the driver
> core is expecting.)
> 
> You just put the logic of "is this group needed or not?" in the
> is_visible() callback for that group.  You then don't need the
> function_init() blocks to do anything with sysfs except maybe set a
> device variable of "I have type foo" for the is_visible() callback to
> check.
> 
> Yes, it's not obvious, but should clean up a lot of code in the end.

That is an interesting suggestion, if someone feels up to giving this
a try I wonder what the end-result will look like.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
