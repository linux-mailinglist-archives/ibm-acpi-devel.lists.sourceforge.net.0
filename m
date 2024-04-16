Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BB78A663C
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Apr 2024 10:36:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rweHy-00010R-TD;
	Tue, 16 Apr 2024 08:35:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rweHx-00010J-56
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 16 Apr 2024 08:35:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqB42b0Dt4aCzlHrsBwMSNL2dlraPP0p7qf/q2hbpaA=; b=Y92f2EqhPrZOrcXWskbv/SLa+v
 83U++rPzjwLPpOvAVgAAAIVG+Cc0H/Gg6YbVI8VvhUrE1ZNPjaZUpFW6mW/QbSnbAzOte/hWPOXuJ
 PgDmju+1gKR9tSi7AYjf2tRg1mDAJ4EBRiBKk9Qs5G4CLnssLleNYAFuoW3ZG/QDOti4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mqB42b0Dt4aCzlHrsBwMSNL2dlraPP0p7qf/q2hbpaA=; b=bbvKGryg1C+9wwUsh7CH0SL+Jc
 EVpwIrkhqNhnvBCkx9B/O+Er+6mC1zVOiVrn00pkTUELHfZ5fTk+nN16LtILgPTn5hA6yLXOj6DOu
 Dcnkzc15m1vt+PtPuW9rrtIpLH9NnNA/cvdnU0fyZVAL4h4rsjJgGxvDivmOvCsyzcAA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rweHx-0000xK-Bb for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 16 Apr 2024 08:35:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713256526;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mqB42b0Dt4aCzlHrsBwMSNL2dlraPP0p7qf/q2hbpaA=;
 b=GeZbOWaa0OuiTv3Jw4PYOGGnKZ/TNW3kSosIDhVz1ujFU9i3wjQf0c079+HopAxgZkYZDa
 0vaqgUEhP+W4uDyd9QctRi2p6Hj9oHezSAv2Ftxu8sgY5BM6hYW3M/5fZJ76AP/G8ITxKB
 x+c2NdVetUpf++Z7eOiNaj7r130cFlo=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-28-Z2c5xNsiOBqv-In7e2JHaA-1; Tue, 16 Apr 2024 04:35:24 -0400
X-MC-Unique: Z2c5xNsiOBqv-In7e2JHaA-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-5704900f94fso137451a12.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 16 Apr 2024 01:35:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713256524; x=1713861324;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mqB42b0Dt4aCzlHrsBwMSNL2dlraPP0p7qf/q2hbpaA=;
 b=QZSA0gbTHQiR5EdNtqHd0ezVwlp5H9bHgNdrxyioZzhuFdJJJCUu4Y8M5mPdGhD4J8
 AG0N9d3EpIF+vpfZoZYB7Kyb0E8YukoSKk9GpV3HxkR60t76ZWWv41bpIZt2y3JSp/Gx
 GESMacqeYMkzewt8C3uDxKaLO0XfrwAIxcKDTTacnm7BxwwZfuAIXJ1Jggg9d52CCv5x
 drS6suoX98AqYAHxDLkpf6ruW7R9MdWLQcU0jLfwtYTmuqMTH7+BmE1PPxD+T38JaaeV
 c2bGZMfOjaaSlve9PTjiWV9ktfa/8tuVOMlJXiPr5GTHB9qsaQPFESuNOvRUHR4PD7eY
 wj8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWk4kI/a1YeaSKq8k7hSfrcsC9E1VwZsSNef2BDCWYFRFGfmBIIKD+HV9thug7nhbHofEtlpawgtvrgDlYBfEagDmLx4j7WqGisieDcTIsywwQ4Fyk=
X-Gm-Message-State: AOJu0Yws4Y8bpcYQXiHISs/Mx99uJbHFy7+FXY/5Vf62x5DXvGNv6rpD
 LfVDeMiyatVHkOiBKR3G6ZKew1t858SMtGHIOPM2GPxYr93JJ3acBvtCZBGKQ4cDUzAd5xhHd/q
 OROD09r//0HePOjFftMdFOYaPWrIHIuUtq35CMpACi4/WwTOU8lfcVfzByk0KejEpa8eufvjn
X-Received: by 2002:a50:cd04:0:b0:56d:f637:451c with SMTP id
 z4-20020a50cd04000000b0056df637451cmr7419239edi.32.1713256523858; 
 Tue, 16 Apr 2024 01:35:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH09YFiUxZaU1utW3PoJytxXwlh9BUF5b0iDmnwb9dAZxMMtiyt2VQVzkI0t44Hn5rRN+kOdQ==
X-Received: by 2002:a50:cd04:0:b0:56d:f637:451c with SMTP id
 z4-20020a50cd04000000b0056df637451cmr7419225edi.32.1713256523511; 
 Tue, 16 Apr 2024 01:35:23 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 n7-20020a056402434700b0056e66f1fe9bsm5766826edc.23.2024.04.16.01.35.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Apr 2024 01:35:23 -0700 (PDT)
Message-ID: <ab98ff25-2ab3-4ab6-ae46-84aef6369c3c@redhat.com>
Date: Tue, 16 Apr 2024 10:35:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
 <Zh2CtKy1NfKfojzS@google.com>
 <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
 <Zh2G85df29tPP6OK@google.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <Zh2G85df29tPP6OK@google.com>
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
 Content preview:  Hi, On 4/15/24 9:58 PM, Dmitry Torokhov wrote: > On Mon, Apr
 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote: >> Hi, >> >> On 4/15/24
 9:40 PM, Dmitry Torokhov wrote: >>> On Wed, Apr 10, 2024 at 10:48:10 [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rweHx-0000xK-Bb
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

On 4/15/24 9:58 PM, Dmitry Torokhov wrote:
> On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote:
>> Hi,
>>
>> On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
>>> On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
>>>>
>>>> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
>>>
>>> Please see my response to Peter's letter. I think it very much depends
>>> on how it will be used (associated with the pointer or standalone as it
>>> is now).
>>>
>>> For standalone application, recalling your statement that on Win you
>>> have this gesture invoke configuration utility I would argue for
>>> KEY_CONFIG for it.
>>
>> KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
>> the GNOME/KDE control center/panel and I believe that at least GNOME
>> comes with a default binding to map KEY_CONFIG to the control-center.
> 
> Not KEY_CONTROLPANEL?

No when this was added most distros were still using X11 not Wayland so
it was preferable to use KEY_foo symbols with codes below 240.

> Are there devices that use both Fn+# and the doubleclick? Would it be an
> acceptable behavior for the users to have them behave the same?

That is a good question, at least my current ThinkPad does not have
the Fn + F## combo for the control center anymore. So I guess we could
indeed re-use KEY_CONFIG for the double-tap.

Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
