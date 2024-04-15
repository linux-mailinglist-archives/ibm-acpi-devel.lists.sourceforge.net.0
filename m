Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0C58A5BBE
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Apr 2024 21:55:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwSQS-000897-SG;
	Mon, 15 Apr 2024 19:55:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1rwSQP-00088y-Vj
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C1pl77BkD4En2MiZRh8WnQAXld8tFBoXMAu8EB3HVBc=; b=Om/lwyJTzEacTfNoA1QQJQjMTc
 GxoJult3BFXaWIWhP+rhepcJOdyaCfyomrQaqWRY2fOE7SFI+8ACf1qU50JG0vA0z4y5/2zzb/VtV
 F5R7JWwrJxlXwmIJiJKlttySI4HY3Js3yokqqCP560ggBi6e1TaUbF74mbIHe+vrw4Fo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C1pl77BkD4En2MiZRh8WnQAXld8tFBoXMAu8EB3HVBc=; b=F3nAMn2HwniaPOD3fgNeTQxjr1
 1AXzImiaG1trUOsAUpkhSSG8d9lytT8gSEqPlsCTiiCJ/clAbYKveTPk9yYwRp9JCEHw4cTBwSeG4
 e4XKd9ao96RBKWY08l1wXgtJTN0LAaaEYr9tySZkSNB7+Nqi5PjxhTpaAdsEQEqncpNA=;
Received: from mail-yb1-f169.google.com ([209.85.219.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rwSQP-0003pg-JE for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:55:34 +0000
Received: by mail-yb1-f169.google.com with SMTP id
 3f1490d57ef6-dc6d8bd618eso3429849276.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Apr 2024 12:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713210923; x=1713815723; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=C1pl77BkD4En2MiZRh8WnQAXld8tFBoXMAu8EB3HVBc=;
 b=VfooLKIhmluvqgPWHLJAHFBeRE+kFvznLUUg+i2E1+Gfokka0Hd5FIN9Nfc2Mo/0Rw
 JTI3JDXtBlhpE4I0C4J9t3XZLf2CgsXy+WXvREZJyrAzqdRwIWa+ptciTEgZK8d4ZKqG
 9PoHK46X2lahsKAzFE5CBO01G6tbvw8ciPelCJVrmL5E2GJ3FTzhsfuI+Vx5kD8/FFiI
 A/HsYs6ynrQ0cUOSJ05T8hHB37zfSbl7DF9DWbSanMUwcS0fdf1eS8iOks+6YZKC4b9l
 yX5B/FCUvlBnTtiATIloSPvFKko+UsyO0+f9IXw63jE/FMBhmKIlxe1p2i3dRjQyDwwe
 KtEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713210923; x=1713815723;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=C1pl77BkD4En2MiZRh8WnQAXld8tFBoXMAu8EB3HVBc=;
 b=VHrSQjvh1112B0Y4zXg580yi0x22FyWoMRqo22FQvOO4z5jx2QvZNKmvlMB6ASLNBQ
 NQABQUz8UM2G3cibQKd5kCVc+QP2SIur6Dg2wLuugndZnUgLX6KNY0uWOSUrj4Tce5rn
 dUjsStR4TMoNIOrgjYx3Jgq0KpQYMAspbHh/eYj2osMynkxZUs1EmWOFU+OHNxlFIFhS
 y6KymDEY6J5cEYl8w5G3QLHqzvvr6Yy0yLiHsou4YI0UEfbf7BpgKwk1neBcJ6JakZ2N
 hWeUwa4qpp/srxFoIETcExFpa9VpMRKOCVxaSi+EiBY9aUhRNi+hztkdIz45xSbXcaVH
 97Jg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVk3BPQ+sdy5+4J9Qn8BpiQIlCnYCNN7wp2aNk8Wo7QvHDW8dXBao8UiBf0wy8m6rCroM4E+W7rb2ojiiP8D16IhscE0DUGfNJy7GhBb7EFvTcLOq8=
X-Gm-Message-State: AOJu0Yweow7o5rfoxGev5Nr7lafY6UWbMf/whk1sr60yZnZ3yk7JiPER
 017FvkJs2c9JsYNS343cunSptWna7T98yQJ1yNhbeSTsjse+zYVP
X-Google-Smtp-Source: AGHT+IERCVnlJIMh4ivcoxOfXGoxhmge+g0KbXB8gsJiO9uDfwAdGUEnPwvVQ5uMCzumWCx10dtO+Q==
X-Received: by 2002:a25:848c:0:b0:dcc:f2a4:153e with SMTP id
 v12-20020a25848c000000b00dccf2a4153emr10642256ybk.46.1713210922427; 
 Mon, 15 Apr 2024 12:55:22 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:fbbe:421b:9296:f28c])
 by smtp.gmail.com with ESMTPSA id
 u1-20020a25c401000000b00dcd56356c80sm2188395ybf.47.2024.04.15.12.55.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Apr 2024 12:55:22 -0700 (PDT)
Date: Mon, 15 Apr 2024 12:55:18 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <Zh2GJmbHBbPxwztX@google.com>
References: <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <411e6353-16ef-455b-98fa-2d38bb7bf9bd@redhat.com>
 <Zh2BiqQdM7_n-Ih4@google.com>
 <15507b66-723d-443c-aaae-c0097d16ef0a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15507b66-723d-443c-aaae-c0097d16ef0a@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 09:47:10PM +0200,
 Hans de Goede wrote:
 > Hi, > > On 4/15/24 9:35 PM, Dmitry Torokhov wrote: > > On Thu, Apr 11,
 2024 at 02:30:35PM +0200, Hans de Goede wrote: > >> Hi Dmitry, > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.219.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.169 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rwSQP-0003pg-JE
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
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Apr 15, 2024 at 09:47:10PM +0200, Hans de Goede wrote:
> Hi,
> 
> On 4/15/24 9:35 PM, Dmitry Torokhov wrote:
> > On Thu, Apr 11, 2024 at 02:30:35PM +0200, Hans de Goede wrote:
> >> Hi Dmitry,
> >>
> >> On 4/11/24 2:02 AM, Dmitry Torokhov wrote:
> >>> On Tue, Apr 09, 2024 at 10:17:05PM -0400, Mark Pearson wrote:
> >>>> Hi Dmitry
> >>>>
> >>>> On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov wrote:
> >>>>> On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
> >>>>>> On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
> >>>>>>> On 09/04/2024 09:31, Dmitry Torokhov wrote:
> >>>>>>>> Hi Mark,
> >>>>>>>>
> >>>>>>>> On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
> >>>>>>>>> Add support for new input events on Lenovo laptops that need exporting to
> >>>>>>>>> user space.
> >>>>>>>>>
> >>>>>>>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
> >>>>>>>>> Add a new keycode to allow this to be used by userspace.
> >>>>>>>>
> >>>>>>>> What is the intended meaning of this keycode? How does it differ from
> >>>>>>>> the driver sending BTN_LEFT press/release twice?
> >>>>>>>>>
> >>>>>>>>> Lenovo support is using FN+N with Windows to collect needed details for
> >>>>>>>>> support cases. Add a keycode so that we'll be able to provide similar
> >>>>>>>>> support on Linux.
> >>>>>>>>
> >>>>>>>> Is there a userspace consumer for this?
> >>>>>>>
> >>>>>>> Funnily enough XKB has had a keysym for this for decades but it's not
> >>>>>>> hooked up anywhere due to the way it's pointer keys accessibility
> >>>>>>> feature was implemented. Theory is that most of userspace just needs
> >>>>>>> to patch the various pieces together for the new evdev code + keysym,
> >>>>>>> it's not really any different to handling a volume key (except this
> >>>>>>> one needs to be assignable).
> >>>>>>
> >>>>>> What is the keysym? If we can make them relatable to each other that
> >>>>>> would be good. Or maybe we could find a matching usage from HID usage
> >>>>>> tables...
> >>>>>
> >>>>> I was looking through the existing codes and I see:
> >>>>>
> >>>>> #define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */
> >>>>>
> >>>>> We also have KEY_VENDOR used in a few drivers/plafrom/x86, including
> >>>>> thinkkpad_acpi.c and I wonder if it would be suitable for this vendor
> >>>>> specific debug info collection application (which I honestly doubt will
> >>>>> materialize).
> >>>>>
> >>>>
> >>>> That's a somewhat disappointing note on your doubts, is that based on
> >>>> anything? Just wondering what we've done to deserve that criticism.
> >>>
> >>> Sorry, this was not meant as a criticism really, but you mentioned
> >>> yourself that there isn't anything in the works yet, you just have some
> >>> plans.
> >>>
> >>> For such a project to succeed Lenovo needs to invest into selling
> >>> devices with Linux as a primary operating system, and it has to be
> >>> consumer segment (or small business, because for corporate they
> >>> typically roll their own support channels). The case of retrofitting
> >>> Linux onto a that device originally came with Windows OS rarely gets
> >>> much if any response from the normal support channels.
> >>>
> >>> Is this something that is actually happening?
> >>
> >> Yes, Lenovo is actually offering Fedora as an OS choice when
> >> ordering ThinkPads directly from their website in many countries
> >> including when ordering as a consumer.
> > 
> > Ah, very nice, I was not aware of this.
> > 
> >>
> >> And unlike other vendor's Linux preloads which often use a kernel
> >> with downstream laptop specific changes these laptops are running
> >> unmodified Fedora kernels, which themselves are almost pristine
> >> upstream kernels.
> >>
> >> Lenovo (Mark) has been really good the last couple of years in
> >> making sure that their hw just works with mainline kernels without
> >> any downstream vendor specific patches.
> >>
> >>>> That aside, I guess KEY_INFO or KEY_VENDOR could be a good fit (I
> >>>> personally don't think KEY_CONFIG matches well), but I would be
> >>>> worried about clashing with existing functionality.
> >>
> >> Using KEY_INFO / KEY_VENDOR works for me too. So maybe we should
> >> just go with one of those 2 ?
> > 
> > It looks like Mark's preference is KEY_VENDOR, so let's go with it?
> 
> Ack KEY_VENDOR sounds good to me for the doubletap on the trackpoint event.
> 
> What about the new Fn + N keycombo which also generates a WMI
> event which we want to translate to a key code to launch a
> (to be written) debug-info collecting app for when the customer
> calls Lenovo support.
> 
> Mark suggested a new KEY_SYS_DEBUG_INFO for that. So do we use:
> 
> #define KEY_INFO                0x166   /* AL OEM Features/Tips/Tutorial */
> 
> for this, or do we define a new keycode ?
> 
> Mark would using KEY_INFO for this work for you.
> 
> Dmitry any opinion on this ?

No, my understanding is that Mark was OK with using KEY_VENDOR for Fn+N
combination that is supposed to start the utility that would collect
the debug info.

For double click there is still the discussion whether to have
KEY_DOUBLECLICK (which I think will need to be tied to the pointer
device somehow), or something else, like KEY_CONFIG or a new keycode if
we continue keeping it separate from the pointer operations and match
Windows behavior which invokes Lenovo configuration utility.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
