Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1FF8A6BBE
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Apr 2024 15:04:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwiTb-0000XS-NJ;
	Tue, 16 Apr 2024 13:03:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rwiTZ-0000XK-E4
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 16 Apr 2024 13:03:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EyZsCqTRWaYYj9xBevyUAJcY+8ZqAtLMg3glbQpBclQ=; b=JycddwJ9hdpCP4XJIQBulnxjUD
 +tSedSMACG+R99ZlvmsWZNCp1zxnAnSDqJmk5AwLZfU5zbZgBv/qjaXsHmiMHc5afyFdKZ1c4jk8H
 Yd++NcCmWb15MHc0N3bHbzbTv8Lck07uQC7e//WcJML5qzkXmmYJgU7pWUWSCUgQCLnI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EyZsCqTRWaYYj9xBevyUAJcY+8ZqAtLMg3glbQpBclQ=; b=VgFgdp7IF7E62l64Dk7Bi7lYaz
 Qa3WUpsEXnFsaeWhZKBAuddFUY3x1pu5IAKL5HVbKC4Q3vKE46r670BUQUIz0RqK+qCbqO6AReotU
 d+Oy4nUlcejYrl4fx6j/puZ+AjaZ+hcwIwgpQcpTN+OEWJf7SySyD3ydbKZUbVjkijy4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwiTU-0005Bw-Tf for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 16 Apr 2024 13:03:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713272617;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EyZsCqTRWaYYj9xBevyUAJcY+8ZqAtLMg3glbQpBclQ=;
 b=VVTKCef8DeMC2XPjGJNRfaJjQskgQKQZaRoWf3QBe4jTXe6MMaOYT7yTYcDSRC16+8Rcpp
 cqJfzDh6gPY2npC2P8euEZlT7NTc5MZJo6O4fgv1soAX3i+6g+Bk7ak1nT0WUFfJJv2s9h
 yU+/sxBeJBqfkGIAaa5KxRwzZ8CG5uM=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-262-iVRw17-_M7Ku-2EKqNEAkA-1; Tue, 16 Apr 2024 09:03:36 -0400
X-MC-Unique: iVRw17-_M7Ku-2EKqNEAkA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a51b00fc137so346882866b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 16 Apr 2024 06:03:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713272615; x=1713877415;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EyZsCqTRWaYYj9xBevyUAJcY+8ZqAtLMg3glbQpBclQ=;
 b=CGt69wTTDunzoUJow1WmtPtL/JGt8UiL8dqx4uaC+kPruB9sA7CJmZlcwTSiHKHqo8
 ScTothX4/+vMqJTUd9OdpHs1mk7kiqzaBPtfpR9VmKaaDWwW7RiIxpuzKYO2TH4lvusX
 GO/n+HOw101pTaS40XXvu5uvAYVGcb2ZJujhSEKa5ldWUye7hYYX38JHzSbrTpXSDaC7
 htu4PPpLesZMyEWEf4SrGnHG8p4qdZ4PjuT0ff5e9YnUIoEn1wJyIrqIBV2ffFQUlX+X
 JR5XerhntQspJrOhojXIhFsInP8AI0gLOxFMe7bk6JDQgtX+oP01sbv0nNeM0eT5arC3
 xfIw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUoxh6w5XzvfWtRDg/d4vf3k5oaUO3S4TB4d0t0gj2MLP7FmhXxWg5jotHNfNey48L8P3q9eGnyoC7jTU6oA4uo1SzMNHApzjtLHYkR08p9g/KX/3A=
X-Gm-Message-State: AOJu0YwqU2aHdZx7JaVCMsFQpo1h4WYLFKZnb8FdoYstix2B8KLhe0bt
 W5C+zDMHeYC9GLlC6bcQvFqMTp6sTR+2UhsQvrcSGtLVMrQf+fghu9593ubPi1sFXYIhh/JBcEf
 bNOwXDqW1cBMuHNAItE29UpNSCiY0IekS/HLuY+rjztFPoS56umkdsOuHEPKnQU+o5+3i0sGW
X-Received: by 2002:a17:907:9443:b0:a52:3f00:616d with SMTP id
 dl3-20020a170907944300b00a523f00616dmr10806130ejc.30.1713272615237; 
 Tue, 16 Apr 2024 06:03:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFm9WuOkPYxc8NIQM6HlhhY8n33HCRKTIxsrjvllC0jCz/6K3ToAOq8L8k+RaJucTkWbwUdUg==
X-Received: by 2002:a17:907:9443:b0:a52:3f00:616d with SMTP id
 dl3-20020a170907944300b00a523f00616dmr10806103ejc.30.1713272614816; 
 Tue, 16 Apr 2024 06:03:34 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 ([2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 ao3-20020a170907358300b00a5256d8c956sm3946568ejc.61.2024.04.16.06.03.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Apr 2024 06:03:34 -0700 (PDT)
Message-ID: <75ed406b-cb96-4e73-a9d6-06cb0332f9bd@redhat.com>
Date: Tue, 16 Apr 2024 15:03:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
 <Zh2CtKy1NfKfojzS@google.com>
 <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
 <Zh2G85df29tPP6OK@google.com>
 <539776c5-6243-464b-99ae-5b1b1fb40e4b@app.fastmail.com>
 <Zh2wO0Bnyr8vFSpc@google.com>
 <7de52ec3-86f3-4a1d-ac87-a106ae1acb5d@app.fastmail.com>
 <27b1b6cf-759c-4778-a53c-5d01442120b7@redhat.com>
 <ce28b0e5-a867-458e-bcb4-cc327be5f19e@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ce28b0e5-a867-458e-bcb4-cc327be5f19e@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/16/24 2:48 PM, Mark Pearson wrote: > Hi Hans > >
 On Tue, Apr 16, 2024, at 4:33 AM, Hans de Goede wrote: >> Hi Mark, >> >> On
 4/16/24 1:57 AM, Mark Pearson wrote: >>> Hi Dmitry, >>> >>> On Mon, Ap [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwiTU-0005Bw-Tf
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
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 4/16/24 2:48 PM, Mark Pearson wrote:
> Hi Hans
> 
> On Tue, Apr 16, 2024, at 4:33 AM, Hans de Goede wrote:
>> Hi Mark,
>>
>> On 4/16/24 1:57 AM, Mark Pearson wrote:
>>> Hi Dmitry,
>>>
>>> On Mon, Apr 15, 2024, at 6:54 PM, Dmitry Torokhov wrote:
>>>> On Mon, Apr 15, 2024 at 04:28:19PM -0400, Mark Pearson wrote:
>>>>> Hi
>>>>>
>>>>> On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote:
>>>>>> On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote:
>>>>>>> Hi,
>>>>>>>
>>>>>>> On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
>>>>>>>> On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
>>>>>>>>>
>>>>>>>>> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
>>>>>>>>
>>>>>>>> Please see my response to Peter's letter. I think it very much depends
>>>>>>>> on how it will be used (associated with the pointer or standalone as it
>>>>>>>> is now).
>>>>>>>>
>>>>>>>> For standalone application, recalling your statement that on Win you
>>>>>>>> have this gesture invoke configuration utility I would argue for
>>>>>>>> KEY_CONFIG for it.
>>>>>>>
>>>>>>> KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
>>>>>>> the GNOME/KDE control center/panel and I believe that at least GNOME
>>>>>>> comes with a default binding to map KEY_CONFIG to the control-center.
>>>>>>
>>>>>> Not KEY_CONTROLPANEL?
>>>>>>
>>>>>> Are there devices that use both Fn+# and the doubleclick? Would it be an
>>>>>> acceptable behavior for the users to have them behave the same?
>>>>>>
>>>>> Catching up with the thread, thanks for all the comments.
>>>>>
>>>>> For FN+N (originally KEY_DEBUG_SYS_INFO) the proposal was to now use
>>>>> KEY_VENDOR there. My conclusion was that this is targeting vendor
>>>>> specific functionality, and that was the closest fit, if a new keycode
>>>>> was not preferred.
>>>>
>>>> Fn+N -> KEY_VENDOR mapping sounds good to me.
>>>>
>>>>>
>>>>> For the doubletap (which is a unique input event - not related to the
>>>>> pointer) I would like to keep it as a new unique event. 
>>>>>
>>>>> I think it's most likely use would be for control panel, but I don't
>>>>> think it should be limited to that. I can see it being useful if users
>>>>> are able to reconfigure it to launch something different (browser or
>>>>> music player maybe?), hence it would be best if it did not conflict
>>>>> with an existing keycode function. I also can't confirm it doesn't
>>>>> clash on existing or future systems - it's possible.
>>>>
>>>> So here is the problem. Keycodes in linux input are not mere
>>>> placeholders for something that will be decided later how it is to be
>>>> used, they are supposed to communicate intent and userspace ideally does
>>>> not need to have any additional knowledge about where the event is
>>>> coming from. A keyboard either internal or external sends KEY_SCREENLOCK
>>>> and the system should lock the screen. It should not be aware that one
>>>> device was a generic USB external keyboard while another had an internal
>>>> sensor that recognized hovering palm making swiping motion to the right
>>>> because a vendor decided to make it. Otherwise you have millions of
>>>> input devices all generating unique codes and you need userspace to
>>>> decide how to interpret data coming from each device individually.
>>>>
>>>> If you truly do not have a defined use case for it you have a couple
>>>> options:
>>>>
>>>> - assign it KEY_RESERVED, ensure your driver allows remapping to an
>>>>   arbitrary keycode, let user or distro assign desired keycode to it
>>>>
>>>> - assign KEY_PROG1 .. KEY_PROG4 - pretty much the same - leave it in the
>>>>   hand of the user to define a shortcut in their DE to make it useful
>>>>
>>>>>
>>>>> FWIW - I wouldn't be surprised with some of the new gaming systems
>>>>> we're seeing (Steamdeck, Legion-Go, etc), that a doubletap event on a
>>>>> joystick might be useful to have, if the HW supports it?
>>>>
>>>> What would it do exactly? Once we have this answer we can define key or
>>>> button code (although I do agree that game controller buttons are
>>>> different from "normal" keys because they map to the geometry of the
>>>> controller which in turn defines their commonly understood function).
>>>>
>>>> But in any case you would not reuse the same keycode for something that
>>>> is supposed to invoke a configuration utility and also to let's say
>>>> drop a flash grenade in a game.
>>>>
>>>
>>> Understood.
>>>
>>> I don't see a path forward within your stated parameters. I did not realise that there were such limitations, so my apologies for wasting everybody's time, and thank you for your patience and guidance.
>>>
>>> I will drop this patch from the series and proceed using existing defined codes only.
>>>
>>> Hans, I'll need to rejig things a bits but I have some ideas and I think I can make it work and stay within the pdx86 tree, which will make it simpler.
>>
>> Ok this sounds good to me. For Fn + N using KEY_VENDOR sounds good for
>> me and for the doubletap any one of 
>> KEY_CONFIG/KEY_CONTROLPANEL/KEY_INFO/KEY_PROG1
>> or some other suitable KEY_foo define works for me.
>>
> I think this should be a configurable input, by design. So my preference (if not allowed a new keycode, which I personally think is the better option) is for PROG1.
> 
> I discussed with Peter last night and it looks likely OK on their side. I do plan on doing some testing first, so it might take a few days to get the next set of patches out.

Ok, PROG1 works for me.

Regards,

Hans





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
