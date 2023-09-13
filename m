Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9A579EF6A
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 13 Sep 2023 18:54:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qgT7r-00086a-1i;
	Wed, 13 Sep 2023 16:54:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1qgT7p-00086T-R6
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 13 Sep 2023 16:54:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EUAQM9nUVDpynXNTWZkPqYipd38tYN+dKS0WVUg2qcc=; b=hQb1MjO0EmQulEn/O+w5fcdPjA
 YOqP7QFq2FBBaSB8ceKf87oJSTHf6iO84YW5J99be11SlmBwxQei3/yXZ9ahD3kTZ24uDyhyQcCA2
 rU5ON52ScL5hk4wgKbeiCf4eMZoVF7gZkr3RBeYQaEaobpktEyWD0UvvDbF/EcqbLczk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EUAQM9nUVDpynXNTWZkPqYipd38tYN+dKS0WVUg2qcc=; b=Ryo+kZMaHGCtCc73FqLpe/fqld
 L5Er/3LpD9KttM9Aq0L+wbZwB3Fe12uFzupLiBRnw+YPZCtimj4Fw0JFjBnMIx7M0KRTT7cFoMGuY
 3v2tGI/dJX7dLQmUUc3WDkr4/HqVBS6wwBsot5BLsR+Gmygu1+DL4/VbtaPSGNzt+qew=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qgT7l-0005c5-DM for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 13 Sep 2023 16:54:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694624031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EUAQM9nUVDpynXNTWZkPqYipd38tYN+dKS0WVUg2qcc=;
 b=VeTPCGHIsqZjnHz3UFDpzjbRcws5NXTSViA4/I4m8kj97VyeBZVmtnIhQ4n0pYGJPlerlD
 lsngGchpti5dYDlomb1y/Yzx+pHLqYd2trsF89m7BuAsEd5rqqngJ0hOnniQhipiW8UycQ
 Q9P70EydHuY6c8dJJOD1rjGMhI/SX9Q=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-c0x2F8R-N92lBg_K1_KF-g-1; Wed, 13 Sep 2023 12:53:50 -0400
X-MC-Unique: c0x2F8R-N92lBg_K1_KF-g-1
Received: by mail-lf1-f71.google.com with SMTP id
 2adb3069b0e04-500b575b32aso1454e87.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 13 Sep 2023 09:53:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694624028; x=1695228828;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EUAQM9nUVDpynXNTWZkPqYipd38tYN+dKS0WVUg2qcc=;
 b=YDqCcOsu2AfMACBS0HuqWn1k80nbKJQ7wIhjV7GJPOuRTm9N+neyFmQBKAS8EyAPTh
 IpAJUNB3oJfRrxQOzZvm7O9UZy4GcOb44Ic1p4cPq7+bfLw6hlmPd3dKPfH6lD1j2SMZ
 vdgeX/UL5oxg0RzbhwEZYVzT8D3J4wUipNR2q+A+Uwvr83nBLSUORAEmh25Di8gNtxUe
 nGtAspCervS5TD2Ay2TiGaxpFl/0pFcW593NgA2Mp/w2mvidDvrOtuFwbheFJuntvpuu
 fC+KPNxiEQd3fOJuccTLZk2/sjD+7B4vIez/MoYRWPUG1IokwujvE//ebBwMZyTZuT54
 GYtg==
X-Gm-Message-State: AOJu0YxYiukJWOSB6ltLmSDosSRI8TBfBbn0JrABsud2KbRJxzwuahy2
 Rn6sdHVNS8V/9PVRvEZxXvjfaw0HU85kCUB7m5dlhUoEGrzhisat2rmycnnDlLW5jzbB1LOH2tB
 fY20hO03+0CPdBdtgR7+WUkwsqvurbupFB0U=
X-Received: by 2002:a05:6512:3050:b0:4fe:49d:6ae2 with SMTP id
 b16-20020a056512305000b004fe049d6ae2mr3681519lfb.0.1694624028523; 
 Wed, 13 Sep 2023 09:53:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGp8B1gEI/3ZQ9C3N8IdbLVsl6t5HP7MRJGoKh3mgc6mi3ZCeY0JqdjSTaCUnx7fBbgv42XOQ==
X-Received: by 2002:a05:6512:3050:b0:4fe:49d:6ae2 with SMTP id
 b16-20020a056512305000b004fe049d6ae2mr3681506lfb.0.1694624028147; 
 Wed, 13 Sep 2023 09:53:48 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 sb5-20020a170906edc500b0099bc0daf3d7sm8758990ejb.182.2023.09.13.09.53.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Sep 2023 09:53:47 -0700 (PDT)
Message-ID: <50da04e3-5e12-89d3-e3ad-f2ff4533a615@redhat.com>
Date: Wed, 13 Sep 2023 18:53:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 Fernando Eckhardt Valle <fevalle@ipt.br>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "markgross@kernel.org" <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 linux-kernel@vger.kernel.org
References: <20230906195204.4478-1-fevalle@ipt.br>
 <d26d4b15-765b-a444-b740-97f95f2db58d@redhat.com>
 <c05afb18-bca5-4500-877d-d44ef3abc310@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <c05afb18-bca5-4500-877d-d44ef3abc310@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, Fernando, On 9/13/23 18:41, Mark Pearson wrote: >
 > > On Wed, Sep 13, 2023, at 11:58 AM, Hans de Goede wrote: >> Hi Fernando,
 >> >> On 9/6/23 21:52, Fernando Eckhardt Valle wrote: >>> Newer Thinkpads
 have a fea [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qgT7l-0005c5-DM
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: sysfs
 interface to auxmac
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark, Fernando,

On 9/13/23 18:41, Mark Pearson wrote:
> 
> 
> On Wed, Sep 13, 2023, at 11:58 AM, Hans de Goede wrote:
>> Hi Fernando,
>>
>> On 9/6/23 21:52, Fernando Eckhardt Valle wrote:
>>> Newer Thinkpads have a feature called Mac Address Passthrough.
>>> This patch provides a sysfs interface that userspace can use
>>> to get this auxiliary mac address.
>>>
>>> Signed-off-by: Fernando Eckhardt Valle <fevalle@ipt.br>
>>
>> Thank you for your patch. 
>>
>> At a minimum for this patch to be accepted you will need
>> to document the new sysfs interface in:
>>
>> Documentation/admin-guide/laptops/thinkpad-acpi.rst
>>
>> But I wonder if we should export this information to
>> userspace in this way ?
>>
>> The reason why I'm wondering is because mac-address passthrough
>> in case of using e.g. Lenovo Thunderbolt docks is already
>> supported by the kernel by code for this in drivers/net/usb/r8152.c :
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/usb/r8152.c#n1613
>>
>> So I'm wondering if we really need this, is there a planned
>> userspace API consumer of the new sysfs interface ?
>>
>> Or is this only intended as a way for a user to query this, iow
>> is this purely intended for informational purposes ?
>>
> Hi Hans,
> 
> We've previously had strong pushback from the maintainers in the net tree that the MAC passthru should not be done there and should be done in user-space. I'd have to dig up the threads, but there was a preference for it to not be done in the kernel (and some frustrations at having vendor specific changes in the net driver).
> 
> We've also seen various timing issues (some related to ME FW doing it's thing) that makes it tricky to handle in the kernel - with added delays being needed leading to patches that can't be accepted.
> 
> This approach is one of the steps towards fixing this. Fernando did discuss and review this with me beforehand (apologies - I meant to add a note saying I'd been involved). If you think there is a better approach please let us know, but we figured as this is a Lenovo specific thing it made sense to have it here in thinkpad_acpi.
> 
> There will be a consumer (I think it's a script and udev rule) to update the MAC if a passthru-MAC address is provided via the BIOS. This will be open-source, but we haven't really figured out how to release it yet.
> 
> Fernando - please correct anything I've gotten wrong!

Ah that is all good to know. That pretty much takes care of
my objections / answers my questions.

Fernando can you please submit a v2 which:

1. Adds documentation as mentioned already
2. Moves the special handling of "XXXXXXXXXXXX" from show()
   to init() (writing to auxmac[] in show() is a bit weird,
   also we only need to do this once, so it is init code)

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
