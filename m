Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8E68A5B84
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Apr 2024 21:51:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwSLu-00080p-8w;
	Mon, 15 Apr 2024 19:50:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rwSLs-00080h-Jt
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v1GrzdHBx1Ad9AXyvk71PE5SXmynmZXwlPU0KzZCj/s=; b=leiOwJtcawLLyl4ripbrdAEuqo
 hPfefN/TJAuRe526uwhtJJWi17YOHEOBPQ08PFEcAIFMNJUmtsnp34/fsCRGK3SAvHm3856jbeJ1H
 KzQFFGyilSdjdHSkDOH9iToZADCBbu75L5htyumK/ZB2Q1Ni1oKHkIgMaAY5AmCLHHi4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v1GrzdHBx1Ad9AXyvk71PE5SXmynmZXwlPU0KzZCj/s=; b=gqzh0aMF15XNDNHlbSOVkMAGhY
 MYerzBZbKLsImsdbj8S3k3XxiTdg1HJLYUytQ43DiJqIo3K00h91WvSXHw7QpYkUrpZ9JSemuGFv4
 9CP7xP/KFDFK+ROG5ee5/3FQ2+8Q6xOpxcZyABqWKOyrIKoIC8A6znRvWliEKcJZDTFw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwSLs-0003XC-DM for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713210641;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v1GrzdHBx1Ad9AXyvk71PE5SXmynmZXwlPU0KzZCj/s=;
 b=Nx+vexuJRr5+DNP9DlzkHMBt2y6fx/Dmrh0AfcmhjbeRPrzp2sSoFojlVVIwrQbhWfLC+W
 q2AmVAb0EXX9aG2rC1rFTGVvXL8kJGDvjEHorwaEqkik77h33EXeseBdvYRUDS+w0p5Af7
 dGSU/Lxg/zdfWa5OMLXzg6nslNdpzjg=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-286-rl4ZkXxxNRCaKuC7Fiq9rA-1; Mon, 15 Apr 2024 15:50:39 -0400
X-MC-Unique: rl4ZkXxxNRCaKuC7Fiq9rA-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-a51abd0d7c6so294829166b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Apr 2024 12:50:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713210638; x=1713815438;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=v1GrzdHBx1Ad9AXyvk71PE5SXmynmZXwlPU0KzZCj/s=;
 b=sLYeQDrbU5G+iWNS0dfbUO7h/Pvm/3rY2QPDl7FMS9MjIv6PTGlTqQKX8Bd+zzApaj
 vOgIytPrXte0wYjMgaQbGu2H14pEE5Cun+lFVuu1CRpQbfuHE990V+XAfATF8ltKd5Eq
 SKeoVtxDkOVzzwe+VTVdqH/Kt8ZSyPXVLTkIR1uhqS9+buySBJYjiFtgKpMyupQYu3LL
 UujzfqhsqXsbyXMt7F0Mv2dEQmm2jC3sDC2rYV+RxtdvVdO9pLvOtGUyId38jzP7WsPZ
 rb0lqqgieJhb4kwnHjQ+HfQOsorur0uPEJY7lVFJfTXylicS+4QiEd5oXqaa7b/WVz8C
 0biA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW736DdG5lHw9JH+Oe6Rsm7aB0xGWcvupl2/MueLf3CoTEdI369y0rEuwg3tqhvzzCdxVbeuVg7V2yOsnsxVLJp5LUhsCYRy3ldc7qUtWOxWIrte6I=
X-Gm-Message-State: AOJu0YzSgKeA9umyUYpLDXjsGInhYvZWbZrg71+LKProTAMK6l+9wgjS
 GD6kcStAN9Rc6pqS+UkBFX5bGRfNuzwlzDaCYqmVFk+VUY0ZnO45kGQ8gPqyCgXLZs0sbj7f9Q6
 5BsT78/xJI9GhtlLD6W+MGYl4gOSUF5ghGGwfseghaLeFzQSxVhdV/S1To5J8HSz6Q9A6lM8a
X-Received: by 2002:a17:907:31c9:b0:a52:4fc1:ea90 with SMTP id
 xf9-20020a17090731c900b00a524fc1ea90mr5109458ejb.62.1713210638742; 
 Mon, 15 Apr 2024 12:50:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkw2/6umyRmgjkAwH2zmoEmiOVCpq7HOf5cUaBKrczviiqH4WXk5gSC+/1C1FS72qcWzmrbw==
X-Received: by 2002:a17:907:31c9:b0:a52:4fc1:ea90 with SMTP id
 xf9-20020a17090731c900b00a524fc1ea90mr5109443ejb.62.1713210638426; 
 Mon, 15 Apr 2024 12:50:38 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 bv21-20020a170906b1d500b00a520b294d9dsm5850643ejb.150.2024.04.15.12.50.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Apr 2024 12:50:38 -0700 (PDT)
Message-ID: <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
Date: Mon, 15 Apr 2024 21:50:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
 <Zh2CtKy1NfKfojzS@google.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <Zh2CtKy1NfKfojzS@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -7.4 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 4/15/24 9:40 PM, Dmitry Torokhov wrote: > On Wed, Apr
 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote: >> >> I have a stronger
 preference to keep the KEY_DOUBLECLICK - that one seems less controve [...]
 Content analysis details:   (-7.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwSLs-0003XC-DM
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

On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
> On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
>>
>> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
> 
> Please see my response to Peter's letter. I think it very much depends
> on how it will be used (associated with the pointer or standalone as it
> is now).
> 
> For standalone application, recalling your statement that on Win you
> have this gesture invoke configuration utility I would argue for
> KEY_CONFIG for it.

KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
the GNOME/KDE control center/panel and I believe that at least GNOME
comes with a default binding to map KEY_CONFIG to the control-center.

So IMHO re-using KEY_CONFIG for the doubletap trackpoint thing is not
a good idea. But as mentioned elsewhere in the thread everyone seems
to be ok with using KEY_VENDOR for this ?

Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
