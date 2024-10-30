Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3119B6468
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 30 Oct 2024 14:42:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t68xC-0004dI-Hi;
	Wed, 30 Oct 2024 13:41:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t68xA-0004dC-5t
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 30 Oct 2024 13:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lEqCXp1zzf8LQ1zW1l4BdUOYON0z7P059fI6PC8eKkY=; b=Ml3IWzS5rdgBISX9qxEWCo8ZNM
 oq4MrNnh59nHwLoOSR710Mq72VPOgctHhO/Fy4uq9n0g+Igt00XFrNlReOVoOq0Zbr/+wn9v/ZtHl
 fQmRzCUSBcrLyuKZiJzwXtsZqW2BPi9yychYg/qemqCkqMvPDkvYTI3esU5tRqXK5Dew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lEqCXp1zzf8LQ1zW1l4BdUOYON0z7P059fI6PC8eKkY=; b=AAFytdjDd3j9fDZ80WF/+WYSio
 BMswcq821t/iuRG+bQyeFnJqz6apFEXNbjE1Roxpi72DJCmw8RuZJY7xjQ+CppjUvojAepym4rFz1
 IZ0RgBU1Xl5gsNRP/dyEaAsxAZIDO4BdVx36F+L11I09VR/XLGAOrwo9GxoogWa6uraY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t68xA-000739-2i for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 30 Oct 2024 13:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1730295688;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lEqCXp1zzf8LQ1zW1l4BdUOYON0z7P059fI6PC8eKkY=;
 b=MnTaMswpOwJXoGEAXib31M/Eq7Bt829MMn41sXnyxOF6dSV9bOktDSvodTvRSTrcucOdPH
 F7c/FSSvFxjMDm8wwXfGtYzAao49TZyKO4KM8FhLtlZrBAxjaWAEFzvqW0zt+1EPjeUiOb
 HsBncyk9j4OFmxdnHpYVqOLrfjhRTDw=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-613-c7kqjdR2OqGSqmn7w60FjA-1; Wed, 30 Oct 2024 09:41:28 -0400
X-MC-Unique: c7kqjdR2OqGSqmn7w60FjA-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a9a01cba9f7so130880866b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 30 Oct 2024 06:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730295686; x=1730900486;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lEqCXp1zzf8LQ1zW1l4BdUOYON0z7P059fI6PC8eKkY=;
 b=IgYI/KV5Snle5vwrgXwFygvuzNeXPcZ0TZufs7vunj922rxiJBJXJWbAGcfC/XDYCs
 mp06NVmoNuxk2SjqbKn92e3I5vQvqeTYCyUSkjfd3MJ8emtyATddDIfQae22pv4IdFYM
 c90FdEbsRFKOdzly60ISfJhNXnezeM7XGpaytBDxzblBsTitJBtySC9s6v87ku1hddSx
 EPGR47rfkXFm82NESQu5jE5Llkt8NOP2SjC3aLEmauj8KD8BknHBhJuzQeOKZ8x0+0wo
 Sw19aSvUAOS1N2UN1DCH0Y9zzcNEWyHomrr9r+UTP3Hg/ajn3uDW+p9V1giFaMwxRXQf
 zo6w==
X-Forwarded-Encrypted: i=1;
 AJvYcCW2RHuTWkVlLN7a9slvPuA1P3Mkkc9p/dKo6rnbNKZOzlAYM6L90nCuLLujdu5O2EpqROtg/8pO6UzFYd3Mig==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzePRZVynqCFmBq1bh9G0TUxFYxW2H1JSqVHP7izeLm5rZhka8v
 3tiBLlRogVYq/U3EclUDuUJUY3jyfZflSRiVnUfG3RV+ns6mSfs/0t+xNKbPJyDBtTTQ6YyOHUb
 Rnt6oC9uGglmq+9vOY/rqAGDY8MgYZh1SHaSfVHeISKsRDTfF2Zg5f4Kr54Jaie2SWLMaWx30
X-Received: by 2002:a17:907:86a5:b0:a9a:6847:e82c with SMTP id
 a640c23a62f3a-a9de5d95e17mr1437914066b.15.1730295685745; 
 Wed, 30 Oct 2024 06:41:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/rdw+jYEnis344grPffbYAyM8RixmJ8zHSQVK9MbS3tzd1IDtYf02RcIzlI27fi3JRB64Lg==
X-Received: by 2002:a17:907:86a5:b0:a9a:6847:e82c with SMTP id
 a640c23a62f3a-a9de5d95e17mr1437910866b.15.1730295685313; 
 Wed, 30 Oct 2024 06:41:25 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9b1f029564sm574219766b.51.2024.10.30.06.41.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Oct 2024 06:41:24 -0700 (PDT)
Message-ID: <3e0064cb-b8cc-4126-aa4f-92cd4a676937@redhat.com>
Date: Wed, 30 Oct 2024 14:41:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mario Limonciello <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20241028020131.8031-1-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241028020131.8031-1-mario.limonciello@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mario, On 28-Oct-24 3:01 AM, Mario Limonciello wrote: >
 Currently there are a number of ASUS products on the market that happen to
 > have ACPI objects for amd-pmf to bind to as well as an ACPI platform profi
 [...] Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t68xA-000739-2i
Subject: Re: [ibm-acpi-devel] [PATCH v2 00/15] Add support for binding ACPI
 platform profile to multiple drivers
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mario,

On 28-Oct-24 3:01 AM, Mario Limonciello wrote:
> Currently there are a number of ASUS products on the market that happen to
> have ACPI objects for amd-pmf to bind to as well as an ACPI platform profile
> provided by asus-wmi.
> 
> The ACPI platform profile support created by amd-pmf on these ASUS products is "Function 9"
> which is specifically for "BIOS or EC notification" of power slider position.
> This feature is actively used by some designs such as Framework 13 and Framework 16.
> 
> On these ASUS designs we keep on quirking more and more of them to turn off this
> notification so that asus-wmi can bind.
> 
> This however isn't how Windows works.  "Multiple" things are notified for the power
> slider position. This series adjusts Linux to behave similarly.
> 
> Multiple drivers can now register an ACPI platform profile and will react to set requests.
> 
> To avoid chaos, only positions that are common to both drivers are accepted.
> 
> This also allows dropping all of the PMF quirks from amd-pmf.
> 
> v2:
>  * Split to many more patches
>  * Account for feedback from M/L

Thank you for the new version. I just did a quick check of
patches 8 - 13 and this looks much better.

I see from various discussions that a v3 is incoming so I've
not done a full review of patches 8 - 13.

Regards,

Hans





> 
> Mario Limonciello (15):
>   ACPI: platform-profile: Add a name member to handlers
>   platform/surface: aggregator: Add platform handler pointer to device
>   ACPI: platform_profile: Add platform handler argument to
>     platform_profile_remove()
>   ACPI: platform_profile: Add a list to platform profile handler
>   ACPI: platform_profile: Move sanity check out of the mutex
>   ACPI: platform_profile: Use guard(mutex) for register/unregister
>   ACPI: platform_profile: Only remove group when no more handler
>     registered
>   ACPI: platform_profile: Require handlers to support balanced profile
>   ACPI: platform_profile: Notify change events on register and
>     unregister
>   ACPI: platform_profile: Only show profiles common for all handlers
>   ACPI: platform_profile: Set profile for all registered handlers
>   ACPI: platform_profile: Make sure all profile handlers agree on
>     profile
>   ACPI: platform_profile: Check all profile handler to calculate next
>   ACPI: platform_profile: Allow multiple handlers
>   platform/x86/amd: pmf: Drop all quirks
> 
>  drivers/acpi/platform_profile.c               | 258 +++++++++++-------
>  .../surface/surface_platform_profile.c        |   7 +-
>  drivers/platform/x86/acer-wmi.c               |   5 +-
>  drivers/platform/x86/amd/pmf/Makefile         |   2 +-
>  drivers/platform/x86/amd/pmf/core.c           |   1 -
>  drivers/platform/x86/amd/pmf/pmf-quirks.c     |  66 -----
>  drivers/platform/x86/amd/pmf/pmf.h            |   3 -
>  drivers/platform/x86/amd/pmf/sps.c            |   3 +-
>  drivers/platform/x86/asus-wmi.c               |   5 +-
>  drivers/platform/x86/dell/dell-pc.c           |   3 +-
>  drivers/platform/x86/hp/hp-wmi.c              |   3 +-
>  drivers/platform/x86/ideapad-laptop.c         |   3 +-
>  .../platform/x86/inspur_platform_profile.c    |   5 +-
>  drivers/platform/x86/thinkpad_acpi.c          |   3 +-
>  include/linux/platform_profile.h              |   4 +-
>  15 files changed, 190 insertions(+), 181 deletions(-)
>  delete mode 100644 drivers/platform/x86/amd/pmf/pmf-quirks.c
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
