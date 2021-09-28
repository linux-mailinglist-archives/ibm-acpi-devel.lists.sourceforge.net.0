Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6107441B26E
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 28 Sep 2021 16:56:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mVEWE-0001ou-Hx; Tue, 28 Sep 2021 14:55:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hdegoede@redhat.com>) id 1mVEWD-0001om-DN
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Sep 2021 14:55:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h1tsDh6YLJRJVvMNgciG5IrKowgU5pvDWEHe56at1gM=; b=I7+EQskMluNExJ4HmbTi9FWf04
 prCk1BqfdB9hjpBqJa4TQ4NzMAc5NMEkw/kg4IeHazyQ73SC+2KrhNTsm/lfu8gCVDFhNgg/NFjpf
 iQD5VhaS8EApjhk+wXQYQ7MreGbuGlkUCvlA61XbQ9GviDCReviLuQZ3Mi2yma6wDsYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h1tsDh6YLJRJVvMNgciG5IrKowgU5pvDWEHe56at1gM=; b=fXS1h0i+Sd+aN9g1IO89CkcbEV
 wX2ksJrUa0l6ftQNWc8uZUiBUlWH0nnZvTIoPNpDFYBCc4SQRnEyUWqzyJItbQJOBqcZwNQde5b+j
 x7SGgquMptYewZ9agFOpwYSJ4/4mD6rGEk5YcOHgD0a3HLT+hlUAHPxPJEyT3sds0x9Y=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mVEW9-0002pu-6C
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Sep 2021 14:55:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632840931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h1tsDh6YLJRJVvMNgciG5IrKowgU5pvDWEHe56at1gM=;
 b=ISaH+kSArQRiFJFvLwzpB0B+3EoowlP4nNbYh/fMbuVVB1fARn1E5vvlENJJKw/vkhAlB9
 lPmFenGlwI8Y7yIytJkN2GiTnWr1WxXAifQSP+tQWBYNG6OxqbC7hhd31uXrvXU8l9UzBY
 NPp4D8d3mPWQf6OcHCcgZTrKdrW+hNk=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-_3agkjzpOyKAo-lx0fV4nw-1; Tue, 28 Sep 2021 10:55:28 -0400
X-MC-Unique: _3agkjzpOyKAo-lx0fV4nw-1
Received: by mail-ed1-f70.google.com with SMTP id
 m20-20020aa7c2d4000000b003d1add00b8aso22172098edp.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 28 Sep 2021 07:55:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h1tsDh6YLJRJVvMNgciG5IrKowgU5pvDWEHe56at1gM=;
 b=Dl2oJmk6r0MLQlewtObuIKdDCHdjMBkxkeiymHFu8BuWypIyBkHV+/HrKTh3/yvW+n
 s4Dj2llVGeWWIwHfLn+FQyPKaDrhRcinjtwJ72qahcdIn/eMyXvJPhEH/aesdBE6L40g
 8XvHKOQ93axJaIZ+mpSKOW1D2PvKf6ae5Nab1MKMh094T6jvOl40L+if3809+fEmiABJ
 l0hFrlDu2PjVrk6/xEx4XnZCTiXA6PyG+q30ulIYXDHBVFnOOrp2A7GuO5ytYCgK/9Yw
 UUITzwScMn77Jkwb3snhjls2C1N+jCl4OIkvPB+rQy3XvMp2QrXyBvDIGXLDtocycG4s
 DmYQ==
X-Gm-Message-State: AOAM531pDVkfPwBfaQGT0GFMpQX2X54S7DlEmVE5Xz2Xt95m0nw3EP+P
 eNjdPlYi5AwgnPSfFzlktrlhiplJNOQD089fRb6kfr4K4HKIH4ahZNliyn9rXoFcJEffPO9eCZn
 i/EdoT7Qo4mZVaA9JqZBWhivwddRPsgw01ss=
X-Received: by 2002:a17:906:7f01:: with SMTP id
 d1mr7233535ejr.318.1632840926571; 
 Tue, 28 Sep 2021 07:55:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzS5yBFuwSLcJg5mxtyACkXxKi0wMBSw+WcYEEdtvHABfNgyidxO8bV0CX3nV8KT0UKTzPI0Q==
X-Received: by 2002:a17:906:7f01:: with SMTP id
 d1mr7233511ejr.318.1632840926322; 
 Tue, 28 Sep 2021 07:55:26 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id d16sm10517546ejk.39.2021.09.28.07.55.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Sep 2021 07:55:25 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Len Baker <len.baker@gmx.com>
References: <20210926111908.6950-1-len.baker@gmx.com>
 <YVBaQAFVX1CeQUPE@kroah.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <50135c0e-e291-509f-2286-a1e443fdf4f3@redhat.com>
Date: Tue, 28 Sep 2021 16:55:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YVBaQAFVX1CeQUPE@kroah.com>
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
 Content preview:  Hi All, On 9/26/21 1:32 PM, Greg Kroah-Hartman wrote: > On
 Sun, Sep 26, 2021 at 01:19:08PM +0200, Len Baker wrote: >> As noted in the
 "Deprecated Interfaces, Language Features, Attributes, >> and Conventions"
 [...] Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
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
X-Headers-End: 1mVEW9-0002pu-6C
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
 linux-hardening@vger.kernel.org, Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi All,

On 9/26/21 1:32 PM, Greg Kroah-Hartman wrote:
> On Sun, Sep 26, 2021 at 01:19:08PM +0200, Len Baker wrote:
>> As noted in the "Deprecated Interfaces, Language Features, Attributes,
>> and Conventions" documentation [1], size calculations (especially
>> multiplication) should not be performed in memory allocator (or similar)
>> function arguments due to the risk of them overflowing. This could lead
>> to values wrapping around and a smaller allocation being made than the
>> caller was expecting. Using those allocations could lead to linear
>> overflows of heap memory and other misbehaviors.
>>
>> So, to avoid open-coded arithmetic in the kzalloc() call inside the
>> create_attr_set() function the code must be refactored. Using the
>> struct_size() helper is the fast solution but it is better to switch
>> this code to common use of attributes.
>>
>> Then, remove all the custom code to manage hotkey attributes and use the
>> attribute_group structure instead, refactoring the code accordingly.
>> Also, to manage the optional hotkey attributes (hotkey_tablet_mode and
>> hotkey_radio_sw) use the is_visible callback from the same structure.
>>
>> Moreover, now the hotkey_init_tablet_mode() function never returns a
>> negative number. So, the check after the call can be safely removed.
>>
>> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments
>>
>> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Signed-off-by: Len Baker <len.baker@gmx.com>
>> ---
>> Hi,
>>
>> Following the suggestions made by Greg I have switch the code to common
>> use of attributes. However this code is untested. If someone could test
>> it would be great.
> 
> Much better, thanks.

This indeed is much better and a great cleanup, thanks.

> 
> But, I have a few questions here:
> 
>> @@ -3161,9 +3106,7 @@ static void hotkey_exit(void)
>>  	hotkey_poll_stop_sync();
>>  	mutex_unlock(&hotkey_mutex);
>>  #endif
>> -
>> -	if (hotkey_dev_attributes)
>> -		delete_attr_set(hotkey_dev_attributes, &tpacpi_pdev->dev.kobj);
>> +	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &hotkey_attr_group);
> 
> Why do you have to manually add/remove these groups still?
> 
> A huge hint that something is going wrong is when you have to call a
> sysfs_*() call from within a driver.  There should be proper driver_*()
> calls for you instead to get the job done.
> 
> As this is a platform device, why not set the dev_groups variable in the
> platform_driver field so that these attribute groups get added and
> removed automatically?

The thinkpad_acpi code talks to the ACPI object representing the
ThinkPad embedded-controller and that has a lot of different sub-functionalities
which may or may not be present depending on the model laptop as well
as on the hw-configuration of the model.

The code is organized around all the different sub-functions with there
being a separate init + exit function for each sub-function, including
with first detecting in the init function if the functionality is present
(e.g. don't register SW_TABLETMODE_SW evdev reporting when the device
is not convertible / don register a WWAN rfkill if there is no WWAN modem).

Many (but not all) of the sub-functions come with a few sysfs-attributes
under /sys/bus/platform/devices/thinkpad_acpi/ many of the separate
function_init functions therefor call sysfs_create_group() for their own
set of sysfs-attributes, if the function is present on the machine.

> An example commit to look at that shows how this was converted for one
> driver is 5bd08a4ae3d0 ("platform: x86: hp-wmi: convert platform driver
> to use dev_groups").  See if that helps here as well.

Right, that results in a very nice cleanup. But there all the attributes
were always registered before the patch so throwing them together in a
ATTRIBUTE_GROUPS(hp_wmi) makes a ton of sense.

Here however we have all the separate function_init() blocks each
conditionally adding their own attributes if the function is present,
so that is different.

Currently there already are 8 separate sysfs_create_group() calls in
the thinkpad_acpi code, so even if we want to refactor this (I'm not
sure that we do) then doing so would fall outside of the scope of this
patch.

Greg, since this resolves / defers your remark and since this otherwise
is a nice cleanup I'm going to merge this version of this patch now.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
