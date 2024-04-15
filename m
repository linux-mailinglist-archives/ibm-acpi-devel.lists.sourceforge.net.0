Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A108A5B4B
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Apr 2024 21:47:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwSIZ-0006Z0-VV;
	Mon, 15 Apr 2024 19:47:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rwSIZ-0006Yt-AI
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l+auaIR8KnfST7jWNI6APpY7sl3sBclpIuI6WlLR8ts=; b=aeURHjg9zpJx23QMLhFbWyVn8q
 q95HiPPKJMs5h8I6Be7mxQvRcdjsUNjIAS2I+91dFyvhW9HfooA7Li+x3vetgMTLnyuEi/2y4Sm6r
 zDcSOAtBxgOPLOVZAHFVATlgkKeqAxT94f3G4OjCjA++z0DuPnJTNuVRscnXWuD0wRyM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l+auaIR8KnfST7jWNI6APpY7sl3sBclpIuI6WlLR8ts=; b=Zn906xbtHiBfHeBLArAKGcSB1j
 v30NlVZOOBFmsyw4h0gYLeLhKDBAZDTivUbIcPCSCxYTT468tLYfEptoD22f5aTap7TcOSF95g23A
 DJL9XSb8nIx50VRK9osQTO+srgf3wYT7g47jC4Jfy+nhB1nXL2sC/13wTqMrkFgHLT34=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwSIY-0003Lv-JM for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713210435;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l+auaIR8KnfST7jWNI6APpY7sl3sBclpIuI6WlLR8ts=;
 b=Dyo3mJLbYvRzfndsaWa1cqRrZaP3S4f+s+KxAvJNOO1+Zct7u1qPjW2XbCZqcOWgJ9sb8v
 1GAXx0ppWKl71P4VAiz3i99HzHX6Hc0PZ1+BCJizw/1Tke/44IUwqq2K5hTkW3PwZ4nDEW
 1ssfTqW3RmhdhKcydTEBX5jQTX6nkWg=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-342-CcBUs341PXeBaxb7WpbK2w-1; Mon, 15 Apr 2024 15:47:14 -0400
X-MC-Unique: CcBUs341PXeBaxb7WpbK2w-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-343f08542f8so2438803f8f.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Apr 2024 12:47:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713210432; x=1713815232;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l+auaIR8KnfST7jWNI6APpY7sl3sBclpIuI6WlLR8ts=;
 b=lK5vbCThguwuR4v67XpKcZv87AH6tSriSoiiJrSD822X7Sg1ZsijL59ZVndTNzdWc9
 FE/LvSReKRCU/fzEHkrd/In4Wn9suR09VImWHw4lZVte5iW1GJE5yI+ZAf7EOQxm5fib
 lfuQShvhcwxXeJnQhaehDwZGwszvm2ft/5gnIde7REYbC4/1H8SbOJ8NmQAPiFvB9dUa
 nz08c5oc3ICtqF8g5mwq5oXtsFU3k7ESSBB/xhFKvzF7xz6jW3e/3CqqtuBhGnq3QfSB
 DaYMAPNGlGXoRTcHouOpjAZBSEqqI5pI/PwUMyOTM2S7PrRNqmWII4u/IN+vE+jN76LT
 fBwQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWaOExuL+rpAnYUd7L4KJ9qd1xVHr9ImDCLWdMguCtP4RAYY/Hsq6l61EWCWHlkg/KQvENrt0hxiSRUWYOyYwGkSZBk3REQmMyDvyKY1QHuIOjXzQY=
X-Gm-Message-State: AOJu0YyAR5X2VDYR3rCE2fzeKdigpJ9sgwso7NVAhjZchUno5qiB5PKl
 xj15V48kX134x6+IW5D9PV10Zjt61wxb5TIn08v3w9JNxuQo3AId+Ne4ObJL8z/mxnDnUJl4LwJ
 TtBZ0AHtJ2UmrmJU7UOMQZL5PVSk4GjyEeR0mKMCbr2jyBZDoceWEJnmgdtRlZCfe3dmsZeT0
X-Received: by 2002:adf:ec47:0:b0:346:addc:18aa with SMTP id
 w7-20020adfec47000000b00346addc18aamr6227037wrn.25.1713210431955; 
 Mon, 15 Apr 2024 12:47:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSiegi5oWZeNbSL8UnLpfTuvyZ4kklxtAsgUvoQ3OWmjNBGLVquT2kX+rNRJrVhftTZ5265Q==
X-Received: by 2002:adf:ec47:0:b0:346:addc:18aa with SMTP id
 w7-20020adfec47000000b00346addc18aamr6227026wrn.25.1713210431562; 
 Mon, 15 Apr 2024 12:47:11 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 o17-20020a1709061b1100b00a525492801dsm3168309ejg.119.2024.04.15.12.47.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Apr 2024 12:47:11 -0700 (PDT)
Message-ID: <15507b66-723d-443c-aaae-c0097d16ef0a@redhat.com>
Date: Mon, 15 Apr 2024 21:47:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <411e6353-16ef-455b-98fa-2d38bb7bf9bd@redhat.com>
 <Zh2BiqQdM7_n-Ih4@google.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <Zh2BiqQdM7_n-Ih4@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/15/24 9:35 PM, Dmitry Torokhov wrote: > On Thu, Apr
 11, 2024 at 02:30:35PM +0200, Hans de Goede wrote: >> Hi Dmitry, >> >> On
 4/11/24 2:02 AM, Dmitry Torokhov wrote: >>> On Tue, Apr 09, 2024 at 1 [...]
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwSIY-0003Lv-JM
Subject: Re: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap
 and system debug info keycodes
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/15/24 9:35 PM, Dmitry Torokhov wrote:
> On Thu, Apr 11, 2024 at 02:30:35PM +0200, Hans de Goede wrote:
>> Hi Dmitry,
>>
>> On 4/11/24 2:02 AM, Dmitry Torokhov wrote:
>>> On Tue, Apr 09, 2024 at 10:17:05PM -0400, Mark Pearson wrote:
>>>> Hi Dmitry
>>>>
>>>> On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov wrote:
>>>>> On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
>>>>>> On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
>>>>>>> On 09/04/2024 09:31, Dmitry Torokhov wrote:
>>>>>>>> Hi Mark,
>>>>>>>>
>>>>>>>> On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
>>>>>>>>> Add support for new input events on Lenovo laptops that need exporting to
>>>>>>>>> user space.
>>>>>>>>>
>>>>>>>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>>>>>>>>> Add a new keycode to allow this to be used by userspace.
>>>>>>>>
>>>>>>>> What is the intended meaning of this keycode? How does it differ from
>>>>>>>> the driver sending BTN_LEFT press/release twice?
>>>>>>>>>
>>>>>>>>> Lenovo support is using FN+N with Windows to collect needed details for
>>>>>>>>> support cases. Add a keycode so that we'll be able to provide similar
>>>>>>>>> support on Linux.
>>>>>>>>
>>>>>>>> Is there a userspace consumer for this?
>>>>>>>
>>>>>>> Funnily enough XKB has had a keysym for this for decades but it's not
>>>>>>> hooked up anywhere due to the way it's pointer keys accessibility
>>>>>>> feature was implemented. Theory is that most of userspace just needs
>>>>>>> to patch the various pieces together for the new evdev code + keysym,
>>>>>>> it's not really any different to handling a volume key (except this
>>>>>>> one needs to be assignable).
>>>>>>
>>>>>> What is the keysym? If we can make them relatable to each other that
>>>>>> would be good. Or maybe we could find a matching usage from HID usage
>>>>>> tables...
>>>>>
>>>>> I was looking through the existing codes and I see:
>>>>>
>>>>> #define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */
>>>>>
>>>>> We also have KEY_VENDOR used in a few drivers/plafrom/x86, including
>>>>> thinkkpad_acpi.c and I wonder if it would be suitable for this vendor
>>>>> specific debug info collection application (which I honestly doubt will
>>>>> materialize).
>>>>>
>>>>
>>>> That's a somewhat disappointing note on your doubts, is that based on
>>>> anything? Just wondering what we've done to deserve that criticism.
>>>
>>> Sorry, this was not meant as a criticism really, but you mentioned
>>> yourself that there isn't anything in the works yet, you just have some
>>> plans.
>>>
>>> For such a project to succeed Lenovo needs to invest into selling
>>> devices with Linux as a primary operating system, and it has to be
>>> consumer segment (or small business, because for corporate they
>>> typically roll their own support channels). The case of retrofitting
>>> Linux onto a that device originally came with Windows OS rarely gets
>>> much if any response from the normal support channels.
>>>
>>> Is this something that is actually happening?
>>
>> Yes, Lenovo is actually offering Fedora as an OS choice when
>> ordering ThinkPads directly from their website in many countries
>> including when ordering as a consumer.
> 
> Ah, very nice, I was not aware of this.
> 
>>
>> And unlike other vendor's Linux preloads which often use a kernel
>> with downstream laptop specific changes these laptops are running
>> unmodified Fedora kernels, which themselves are almost pristine
>> upstream kernels.
>>
>> Lenovo (Mark) has been really good the last couple of years in
>> making sure that their hw just works with mainline kernels without
>> any downstream vendor specific patches.
>>
>>>> That aside, I guess KEY_INFO or KEY_VENDOR could be a good fit (I
>>>> personally don't think KEY_CONFIG matches well), but I would be
>>>> worried about clashing with existing functionality.
>>
>> Using KEY_INFO / KEY_VENDOR works for me too. So maybe we should
>> just go with one of those 2 ?
> 
> It looks like Mark's preference is KEY_VENDOR, so let's go with it?

Ack KEY_VENDOR sounds good to me for the doubletap on the trackpoint event.

What about the new Fn + N keycombo which also generates a WMI
event which we want to translate to a key code to launch a
(to be written) debug-info collecting app for when the customer
calls Lenovo support.

Mark suggested a new KEY_SYS_DEBUG_INFO for that. So do we use:

#define KEY_INFO                0x166   /* AL OEM Features/Tips/Tutorial */

for this, or do we define a new keycode ?

Mark would using KEY_INFO for this work for you.

Dmitry any opinion on this ?

Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
