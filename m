Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF4B8B54B0
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 29 Apr 2024 12:04:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s1NrE-0007Vv-2Z;
	Mon, 29 Apr 2024 10:03:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1s1NrC-0007Vo-0u
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 10:03:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PzUmpvdVBytsKjWnnuuRd7g23jkctxgDxgPHUJ4d/0Y=; b=DBPNX8YQUv26anfqi8U00KaGm5
 cFnckbVmEgynon4/Cs/ZQ1VaVv0PsainLnjKLnJxtEKmM6XmoTPwWWqwkK29cOD48uR8hjHUYxU3k
 w1+qKe417fPXo1dckS0eZKl6IENvOIfowUZvzdIoz70DaTBfDTid1iRan8vuFBC0ZzRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PzUmpvdVBytsKjWnnuuRd7g23jkctxgDxgPHUJ4d/0Y=; b=RjA44cBQl5Ab66JsDEpLDQKrvb
 5tNfKBGs4m+xHHqoUbvxPPX/+3RbMxdJaGVsWA5tK1NFohFHnMS2Ozkxj0zsyFPZMCuwYiLLf1Ion
 /MfI7AnMBtMkqoCQXZsgHERr1HSXhN9PKPybPhBGzNOiErdL9vRkMCgPdf/nEG8sYVhk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1NrB-00023z-4v for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 10:03:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1714385002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PzUmpvdVBytsKjWnnuuRd7g23jkctxgDxgPHUJ4d/0Y=;
 b=YxEC4MSbYUYpA1+KuOu5W9dzQIRQZS+gRPHo/Xe7X6TGD8mzhzAw38m3fiI9g6sDvgb9Z8
 iepX51VkSfXXqkF5jcQNTpjI+iusxMCTovIhF1RwKmQGUjDQHClYiYHmhXNfVMuf06kERp
 KyTLKK1J+JiF/lkMYPIMJEtNqdSRo+Q=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-104-fs1AjAIjMwixCjAEcqAbbA-1; Mon, 29 Apr 2024 06:03:21 -0400
X-MC-Unique: fs1AjAIjMwixCjAEcqAbbA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a558739aaf4so258973666b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 29 Apr 2024 03:03:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714385000; x=1714989800;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PzUmpvdVBytsKjWnnuuRd7g23jkctxgDxgPHUJ4d/0Y=;
 b=Yu1cchefc4zUQoNT8YahmBoZnB9h9xTnVP/15xMUSEnZVXpzNp2i/ArmY8EmIPORLL
 JCsXeoNOwYh4isbgFIYMVT913xm/QX5RcURN+deH10ibLQ7mD8Mk2H2d31Sp17rV9Idk
 d8Q604Zknbr7/t/j06CscEP22x7pO+V1nUf8/8rMhF6kx4wvqgx+1hfDVyHS5GOJV07j
 cr0ECmgPIJXaXwGzodJBS2msr2RrxqZvOVF5mfMCyyhnbG0JkR7s7TVTBoYUauINPOy6
 65zENaw46MGbsVsqja6VeoIUafmWdWQQOToOPUSgvsCP9pCFLgI1WzV80ToXeJhs25Wq
 TL6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzOxSOrZEVZIrUZhoHpHZXmt/LC1DRCyq1PvAy3OaxHtEJ+v2HrACjRBUux5JYOefSHWpIy2/Gb77TCs1S2JsN8CF0MoPwtPS+jlOBcQaFQeviz8Q=
X-Gm-Message-State: AOJu0YwncUmq3NC5iFfvEzBDI3NAsBBfTifpmuYa5c59iafihSMjKVgI
 X0e56ZumfJ4XOTu/DRlmB/ePPyON25lHzxHzor5N3Lrcyk9IqXgguk5yQpdIubp0+hck12kXRc5
 cJk0wYWdHtGo820eWfvRYIZbVLilazk5KzKM2MKHmBWt18Cm5JAkmhlcl/qN6DpDyi/mX+HTS
X-Received: by 2002:a50:c082:0:b0:572:7ca5:1b58 with SMTP id
 k2-20020a50c082000000b005727ca51b58mr3085446edf.6.1714385000037; 
 Mon, 29 Apr 2024 03:03:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfBD5o1twozr29Q9txzDwv6NEJTeDxpxq73kI2qd2RQT0U6IuHqP0m2j67tKYuyt17cxTtsQ==
X-Received: by 2002:a50:c082:0:b0:572:7ca5:1b58 with SMTP id
 k2-20020a50c082000000b005727ca51b58mr3085419edf.6.1714384999609; 
 Mon, 29 Apr 2024 03:03:19 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 m8-20020aa7d348000000b005723f796ebcsm4497423edr.28.2024.04.29.03.03.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Apr 2024 03:03:19 -0700 (PDT)
Message-ID: <95bb7a5e-7107-46bb-9fd3-3aa462490b30@redhat.com>
Date: Mon, 29 Apr 2024 12:03:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20240424122834.19801-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi All, On 4/24/24 2:28 PM, Hans de Goede wrote: > Hi All,
 > > Here is v2 of my patch-series to refactor thinkpad_acpi's hotkey handling
 > and to add support for some new hotkeys on new models. > > Changes in [...]
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s1NrB-00023z-4v
Subject: Re: [ibm-acpi-devel] [PATCH v2 00/24] platform/x86: thinkpad_acpi:
 Refactor hotkey handling and add support for some new hotkeys
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Nitin Joshi <njoshi1@lenovo.com>, Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi All,

On 4/24/24 2:28 PM, Hans de Goede wrote:
> Hi All,
> 
> Here is v2 of my patch-series to refactor thinkpad_acpi's hotkey handling
> and to add support for some new hotkeys on new models.
> 
> Changes in v2:
> - Some small code style tweaks in response to reviews
> - Add various Reviewed-by and Tested-by tags
> 
> Relevant parts of v1 cover-letter:
> 
> I have been very careful to not introduce any changes wrt support for
> the original ThinkPad models / hotkeys which use the hotkey_*_mask
> related code.
> 
> I've also done my best to avoid any *significant* functional change but
> there are still some functional changes, which should all not impact
> userspace compatibility:
> 
> 1. Adaptive keyboard special keys will now also send EV_MSC events with
>    the scancode, just like all the other hotkeys.
> 
> 2. Rely on the input core for KEY_RESERVED suppression. This means that
>    keys marked as KEY_RESERVED will still send EV_MSC evdev events when
>    pressed (which helps users with mapping them to non reserved KEY_FOO
>    values if desired).
> 
> 3. Align the keycodes for volume up/down/mute and brightness up/down with
>    those set by userspace through udev upstream's hwdb. Note these are all
>    for keys which are suppressed by hotkey_reserved_mask by default.
>    So this is only a functional change for users who override the default
>    hotkey-mask *and* who do not have udev's default hwdb installed.
> 
> 4. Suppress ACPI netlink event generation for unknown 0x1xxx hkey events to
>    avoid userspace starting to rely on the netlink events for new hotkeys
>    before these have been added to the keymap, only to have the netlink
>    events get disabled by the adding of the new hotkeys to the keymap.
> 
>    This should not cause a behavior change for existing models since all
>    currently known 0x1xxx events have a mapping.
> 
> Here is a quick breakdown of the patches in this series:
> 
> Patch 1 - 2: Fix a small locking issue on rmmod the only problem here
>    really is a lockdep warning, so I plan to route these fixes through
>    for-next together with the rest to keep things simple.
> 
> Patch 3 - 14: Do a bunch of cleanups and refactoring
> 
> Patch 15: Implements functional change no 4. I really kinda want to just
>    completely disable ACPI netlink event generation when also sending evdev
>    events instead of reporting these twice. But for the 0x11xx / 0x13xx
>    hkey events the kernel has send ACPI netlink events for years now. So
>    this disables ACPI netlink events for any new hotkeys going forward.
> 
> Patch 16 - 18: Refactor / cleanup reserved key handling
> 
> Patch 19: Actually move to sparse-keymaps
> 
> Patch 20: Update the keymap for 2 adaptive kbd Fn row keys
> 
> Patch 21 - 24: Mark's original patches adding support for the new Fn + N
>    key combo and for trackpoint doubletap slightly reworked to use
>    the new sparse-keymap.

I've added this series to my review-hans (soon to be for-next) branch now.

Regards,

Hans


> Hans de Goede (20):
>   platform/x86: thinkpad_acpi: Take hotkey_mutex during hotkey_exit()
>   platform/x86: thinkpad_acpi: Provide hotkey_poll_stop_sync() dummy
>   platform/x86: thinkpad_acpi: Drop setting send_/ignore_acpi_ev
>     defaults twice
>   platform/x86: thinkpad_acpi: Drop ignore_acpi_ev
>   platform/x86: thinkpad_acpi: Use tpacpi_input_send_key() in adaptive
>     kbd code
>   platform/x86: thinkpad_acpi: Do hkey to scancode translation later
>   platform/x86: thinkpad_acpi: Make tpacpi_driver_event() return if it
>     handled the event
>   platform/x86: thinkpad_acpi: Move adaptive kbd event handling to
>     tpacpi_driver_event()
>   platform/x86: thinkpad_acpi: Move special original hotkeys handling
>     out of switch-case
>   platform/x86: thinkpad_acpi: Move hotkey_user_mask check to
>     tpacpi_input_send_key()
>   platform/x86: thinkpad_acpi: Always call tpacpi_driver_event() for
>     hotkeys
>   platform/x86: thinkpad_acpi: Drop tpacpi_input_send_key_masked() and
>     hotkey_driver_event()
>   platform/x86: thinkpad_acpi: Move hkey > scancode mapping to
>     tpacpi_input_send_key()
>   platform/x86: thinkpad_acpi: Move tpacpi_driver_event() call to
>     tpacpi_input_send_key()
>   platform/x86: thinkpad_acpi: Do not send ACPI netlink events for
>     unknown hotkeys
>   platform/x86: thinkpad_acpi: Change hotkey_reserved_mask
>     initialization
>   platform/x86: thinkpad_acpi: Use correct keycodes for volume and
>     brightness keys
>   platform/x86: thinkpad_acpi: Drop KEY_RESERVED special handling
>   platform/x86: thinkpad_acpi: Switch to using sparse-keymap helpers
>   platform/x86: thinkpad_acpi: Add mappings for adaptive kbd
>     clipping-tool and cloud keys
> 
> Mark Pearson (4):
>   platform/x86: thinkpad_acpi: Simplify known_ev handling
>   platform/x86: thinkpad_acpi: Support for trackpoint doubletap
>   platform/x86: thinkpad_acpi: Support for system debug info hotkey
>   platform/x86: thinkpad_acpi: Support hotkey to disable trackpoint
>     doubletap
> 
>  drivers/platform/x86/thinkpad_acpi.c | 854 +++++++++++----------------
>  1 file changed, 353 insertions(+), 501 deletions(-)
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
