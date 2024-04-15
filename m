Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD588A5A9B
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Apr 2024 21:33:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwS4C-00067m-GT;
	Mon, 15 Apr 2024 19:32:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1rwS4B-00067f-0t
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:32:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b0+MOt3vSWNQouVSTzHujQlq5+ecBPB0jEZqFyyUync=; b=cURXdyQsFE7TQ2DJOexAWdnJtA
 vEWJGXyh5nbRFKEU4rrfd/S3B76ivt9Ub7D+bB/Ycw7jckpa4+2ujapDhAiahV4xD2mORWLrALMse
 MVSCywzvqXLP527ZtiRHFyho1AoCJPBahKOcU2YnuKBMoVLofsqgMN8nCm5rGqQhVV/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b0+MOt3vSWNQouVSTzHujQlq5+ecBPB0jEZqFyyUync=; b=HUmg3jGXmeGF5SjbGByKozi8Ak
 3W9Iwq4NrOFsL4pKfuPzHcEqSZ5hgpe/jMoiYpZM+RYf2ZUiR1SKDSCc1ofFUdZRArhgfSrdhUlNV
 +KBtuGXvxpMoUjTD45M2ynEPA2P8HtKdvZLeu3QF5sTzipri1EnKPAB4wkm6Hs1N34v4=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rwS4A-0002Vp-Mf for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:32:35 +0000
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-1e3ff14f249so27760525ad.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Apr 2024 12:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713209549; x=1713814349; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=b0+MOt3vSWNQouVSTzHujQlq5+ecBPB0jEZqFyyUync=;
 b=ZZC1xyYc0Rabe0zV+6B52FzadXEh2FObhXXDWN7elefQIDlO8RJMaBFLeErveRC1IE
 5T6RpNMUbe244zUPjbD1TgagsFsa2xJs3qTtyGRrcYj26I5ZfZ+LLq23Kg3LPkg77pL8
 XU4Ek4HxEjRki/tt0xggLRm1h5900RHRZf9wat3nHtslnHmEnw+0XQhNq9EOX4XZ1QG2
 jmcVGSzx+o70rchnMRsgAkJIc1AZSc6arCYDLCTY28qVEbHMpZRNJhh2kC7C/QFhnC+f
 g+LxZ3UsjeGZS2HezwkUeOC/OZGk902etPb2z7eZv3ezKlMTGrwR4duisTc0dR7RBiqe
 +TlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713209549; x=1713814349;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=b0+MOt3vSWNQouVSTzHujQlq5+ecBPB0jEZqFyyUync=;
 b=P/nU8PE05t9if/QC8d2joxU2SqwukCCo/bPWGq4R8VT46RiveGWxYzhvArkeAvddz5
 AIk+YWaem3OSjjvO0UeUewuGj0KmSWlgZjV53cgyo4v8t8j0l8g5Q1aVOABRbfIzy5xC
 SuPON4VmWKalyf3tEjYRxVf2XqX1faEjkXuNRJZb7maYZIuEjlRLcdDkIaou31Hz+S9z
 4aolNg2VIuY4roCakGJLJrJFuS2984+RGjYA4H1No1fLSw92ESmLa5LvrPnT3gqy6gIM
 az9fBTHLj9WU1iWNVIMHsuP9ALPVPN4jm7jGMCLKWKmcnfoHDaMAf4rmeLNrhutrMgjp
 udyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdGbZP57CpZO67DuRnOiMORHi3OX4ETZaVIVWJhzX26IM8gJJMGGyR5MWSGFIUlCQT5bs4PX86uMX502Onvu+jxLuxnuNnGBaVhCXToP1lBGWTXfc=
X-Gm-Message-State: AOJu0Yyx28dH0E+ExcBJMDdKeMB/WvS97lZz5hARfDQHE92KCCLId941
 ZJWoQPiWTTQ5W4VqLGDfDPkMT9I3EzMbgh2lHHVQg+mWJjR57Huh
X-Google-Smtp-Source: AGHT+IFFGBYX7GrgIkithXjMOEcbpKE8/IR7l+wZD008b+p7zqgJ8+k53Kd1ZAZbZR/LHaAS+oLqAw==
X-Received: by 2002:a17:902:bd42:b0:1e4:6253:2f15 with SMTP id
 b2-20020a170902bd4200b001e462532f15mr2727plx.16.1713209548567; 
 Mon, 15 Apr 2024 12:32:28 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:fbbe:421b:9296:f28c])
 by smtp.gmail.com with ESMTPSA id
 z13-20020a170903018d00b001e22860c32asm8227094plg.143.2024.04.15.12.32.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Apr 2024 12:32:28 -0700 (PDT)
Date: Mon, 15 Apr 2024 12:32:25 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Peter Hutterer <peter.hutterer@redhat.com>
Message-ID: <Zh2AySQR93GNvoaL@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <5fe3b171-afc0-47de-802c-28470ce40674@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5fe3b171-afc0-47de-802c-28470ce40674@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 10, 2024 at 02:32:56PM +1000,
 Peter Hutterer wrote:
 > On 10/04/2024 11:20, Dmitry Torokhov wrote: > > On Tue, Apr 09, 2024 at
 02:47:05PM -0700, Dmitry Torokhov wrote: > > > On Tue, Apr 09, [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.178 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: freedesktop.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rwS4A-0002Vp-Mf
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, vsankar@lenovo.com, hdegoede@redhat.com,
 hmh@hmh.eng.br, linux-input@vger.kernel.org,
 Mark Pearson <mpearson-lenovo@squebb.ca>, ilpo.jarvinen@linux.intel.com,
 njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Apr 10, 2024 at 02:32:56PM +1000, Peter Hutterer wrote:
> On 10/04/2024 11:20, Dmitry Torokhov wrote:
> > On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
> > > On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
> > > > On 09/04/2024 09:31, Dmitry Torokhov wrote:
> > > > > Hi Mark,
> > > > > 
> > > > > On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
> > > > > > Add support for new input events on Lenovo laptops that need exporting to
> > > > > > user space.
> > > > > > 
> > > > > > Lenovo trackpoints are adding the ability to generate a doubletap event.
> > > > > > Add a new keycode to allow this to be used by userspace.
> > > > > 
> > > > > What is the intended meaning of this keycode? How does it differ from
> > > > > the driver sending BTN_LEFT press/release twice?
> > > > > > 
> > > > > > Lenovo support is using FN+N with Windows to collect needed details for
> > > > > > support cases. Add a keycode so that we'll be able to provide similar
> > > > > > support on Linux.
> > > > > 
> > > > > Is there a userspace consumer for this?
> > > > 
> > > > Funnily enough XKB has had a keysym for this for decades but it's not
> > > > hooked up anywhere due to the way it's pointer keys accessibility
> > > > feature was implemented. Theory is that most of userspace just needs
> > > > to patch the various pieces together for the new evdev code + keysym,
> > > > it's not really any different to handling a volume key (except this
> > > > one needs to be assignable).
> > > 
> > > What is the keysym? If we can make them relatable to each other that
> > > would be good. Or maybe we could find a matching usage from HID usage
> > > tables...
> 
> There's a set of  XK_Pointer_ keysyms defined in X11/keysym.h,
> including XK_Pointer_DblClick1 and XK_Pointer_DblClickDefault.
> Unfortunately they're not hooked up to anything atm, see this draft
> MR:
> https://gitlab.freedesktop.org/xkeyboard-config/xkeyboard-config/-/merge_requests/659
> Because they're not hooked up anywhere they'll also need to be hooked
> into the client space, same as the various XF86FooBar symbols we've
> added over the years.
> 
> If we were to add KEY_DOUBLECLICK we can patch xkeyboard-config to
> bind that to the existing XK_Pointer_DblClickDefault symbol (it would
> get XF86DoubleClick assigned by the current automated scripts), so in
> theory that key would work like any other key with that symbol
> assigned.
> 
> > I was looking through the existing codes and I see:
> > 
> > #define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */
> > 
> > We also have KEY_VENDOR used in a few drivers/plafrom/x86, including
> > thinkkpad_acpi.c and I wonder if it would be suitable for this vendor
> > specific debug info collection application (which I honestly doubt will
> > materialize).
> 
> fwiw, I suggested KEY_DOUBLECLICK because that is the action the user
> takes. Whether that starts a particular application is mostly a
> question of configuration, defaulting to something that emulates a
> double-click seems prudent though. And if someone wants to remap that
> to the compose key that'd be trivial too then.

I think whether to create and use KEY_DOUBLECLICK is very much depends
if we associate this with the pointer somehow, or if we keep it as a
completely separate action.

If we continue with KEY_DOUBLECLICK then we need to try and define what
exactly it means to the applications. Actually same goes if we want
another new keycode.

As far as easy remapping, I think one can map this to KEY_RESERVED and
then remap to whatever they want, you do not need to have a new keycode
for that.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
