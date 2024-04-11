Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B3D8A0454
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 11 Apr 2024 02:03:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ruhtT-0001x2-2l;
	Thu, 11 Apr 2024 00:02:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1ruhtR-0001wv-Ro
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 11 Apr 2024 00:02:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wfrCZroFultv+MXju5r6SP+mW/5Hc70daHzU+zkVS5Y=; b=ehlAZ0W0Ge+bZDB8HuzqhustHe
 rxgGwj0TiJN5hXlXqPUxRD+kcU/kqnmpI9AfMlPd9yfONZyMlU+Kk/3kfowpueJqc/ctEABy6GMfj
 6/c4Yn95sPiY7wEen/xqQjZ1kYvMpc5Yx0K2RSF/EilrlUdgXlf6PK4dcp0UA9enKwSU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wfrCZroFultv+MXju5r6SP+mW/5Hc70daHzU+zkVS5Y=; b=kLZpMy2oENWeLZ7fudVrkDtdup
 0hJyVnDZ7jWz8Q5KwbAfVqq0TS63BI6hQ+Am2s+c7yM7c7WdsRtU3M2kfk+RZRNGlP7UuAH/H7Dii
 +gRYQVx+4SEQDEHHDRWVHd845CXkd4rdRX6BSVhiI5ZKtykK7uC7041VGJjotwnSh1NI=;
Received: from mail-pj1-f48.google.com ([209.85.216.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ruhtQ-0008QH-Ui for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 11 Apr 2024 00:02:17 +0000
Received: by mail-pj1-f48.google.com with SMTP id
 98e67ed59e1d1-2a528a1a1bdso2656360a91.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 10 Apr 2024 17:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712793731; x=1713398531; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wfrCZroFultv+MXju5r6SP+mW/5Hc70daHzU+zkVS5Y=;
 b=lrmTotMQNVlUPKMsnne0lYE+t2pTFB2kKQ43Hfc4umeMZGbLu/6DM1N6u3vQEtTJ0h
 mcJMr10DRoAjHULcDBZQWun6YKNg6pHbMQ+wZ9igm4oQwzo6odbP50CjgvaxYmGCbYEW
 oUxIDxWiKtLQvJdX8zpORPbL1x+VceCcmuWCoE/033TVmaj7ZPz0wV7zsiDXgSj6GVyE
 Qq41L5aHuxMsDximPaS+wO6qocxyTPQ/dfOaqeejHoTERSyAGtjxUrH6ykTMWy7759Lx
 S2BO+GwVgCYG0YSSpXdkDDAWiVY7d9fUrLepmDoVI12ksHc52RFst0qcHOAbYpcuuiYo
 foPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712793731; x=1713398531;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wfrCZroFultv+MXju5r6SP+mW/5Hc70daHzU+zkVS5Y=;
 b=ojkezRJ5auCqY1505rOIJAshfLK3cdKys3k1FAt9yjNlwxzenp2Ts5IhT7352FenpL
 UyhuZ2F9XfbjaAeZ6ppVqvrVO/2YlFDQpV0qWYVWH83fevgptgu5DHI5ywiOAj2e4aky
 ZCqOtksgFdONIj4JVEeQyUyQZWhlLifcLhSrQz/j1C21AyJbJG8/ekFwkMVYYzGuByzF
 VP/6FoD9bjU7GtUzLHllJa6x1s/0OeNzdSBVkGJm/3D9dqpLEW+pQsWDq3xsrZy0LrMj
 8/kxaqCRW4aLINa1P/m/G1md+j9SSIvDiCi5yej5BxZfYzAAHZ8KIjrGfZL1gtJKysEg
 WBMQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWxhpe4Qw7aOMp0KlMZuitdRjWZ9bu1fDkF0ORoe2Ls5uTB43iw326LZrmjgPNSTTOkyMjmTIOaoiEbzITtW6LLLv4CoCESR9gq1Ob75I1ZqUwI/Ls=
X-Gm-Message-State: AOJu0YyCdFYkeOEsGCOud0W9M1CngAzm7kaDVBD9KrHYMp85r456hl0E
 il9eiAfGUb7LVIxyNgewG+Gr7QaRsF5oC53j2+0MYa9dnVk7IlvN
X-Google-Smtp-Source: AGHT+IGigq1nRlAG3wzK4rdyckpZKJucY604QtyMnvFuJC/poZuw8R8R2TYwxexL8XTYjwY++6JkRA==
X-Received: by 2002:a17:90a:d484:b0:2a5:d0cf:3ef with SMTP id
 s4-20020a17090ad48400b002a5d0cf03efmr3096746pju.37.1712793731204; 
 Wed, 10 Apr 2024 17:02:11 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:60da:41be:a28d:f612])
 by smtp.gmail.com with ESMTPSA id
 h16-20020a17090a051000b002a2e4b593cdsm2079501pjh.51.2024.04.10.17.02.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Apr 2024 17:02:10 -0700 (PDT)
Date: Wed, 10 Apr 2024 17:02:08 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <ZhcogDESvZmUPEEf@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 09, 2024 at 10:17:05PM -0400, Mark Pearson wrote:
 > Hi Dmitry > > On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov wrote: >
 > On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrot [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.48 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ruhtQ-0008QH-Ui
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
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Apr 09, 2024 at 10:17:05PM -0400, Mark Pearson wrote:
> Hi Dmitry
> 
> On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov wrote:
> > On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
> >> On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
> >> > On 09/04/2024 09:31, Dmitry Torokhov wrote:
> >> > > Hi Mark,
> >> > > 
> >> > > On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
> >> > > > Add support for new input events on Lenovo laptops that need exporting to
> >> > > > user space.
> >> > > > 
> >> > > > Lenovo trackpoints are adding the ability to generate a doubletap event.
> >> > > > Add a new keycode to allow this to be used by userspace.
> >> > > 
> >> > > What is the intended meaning of this keycode? How does it differ from
> >> > > the driver sending BTN_LEFT press/release twice?
> >> > > > 
> >> > > > Lenovo support is using FN+N with Windows to collect needed details for
> >> > > > support cases. Add a keycode so that we'll be able to provide similar
> >> > > > support on Linux.
> >> > > 
> >> > > Is there a userspace consumer for this?
> >> > 
> >> > Funnily enough XKB has had a keysym for this for decades but it's not
> >> > hooked up anywhere due to the way it's pointer keys accessibility
> >> > feature was implemented. Theory is that most of userspace just needs
> >> > to patch the various pieces together for the new evdev code + keysym,
> >> > it's not really any different to handling a volume key (except this
> >> > one needs to be assignable).
> >> 
> >> What is the keysym? If we can make them relatable to each other that
> >> would be good. Or maybe we could find a matching usage from HID usage
> >> tables...
> >
> > I was looking through the existing codes and I see:
> >
> > #define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */
> >
> > We also have KEY_VENDOR used in a few drivers/plafrom/x86, including
> > thinkkpad_acpi.c and I wonder if it would be suitable for this vendor
> > specific debug info collection application (which I honestly doubt will
> > materialize).
> >
> 
> That's a somewhat disappointing note on your doubts, is that based on
> anything? Just wondering what we've done to deserve that criticism.

Sorry, this was not meant as a criticism really, but you mentioned
yourself that there isn't anything in the works yet, you just have some
plans.

For such a project to succeed Lenovo needs to invest into selling
devices with Linux as a primary operating system, and it has to be
consumer segment (or small business, because for corporate they
typically roll their own support channels). The case of retrofitting
Linux onto a that device originally came with Windows OS rarely gets
much if any response from the normal support channels.

Is this something that is actually happening?

> 
> That aside, I guess KEY_INFO or KEY_VENDOR could be a good fit (I
> personally don't think KEY_CONFIG matches well), but I would be
> worried about clashing with existing functionality.
> 
> Peter - do you have any opinion from the user space side of things, or
> are these likely unused? KEY_VENDOR seems the safer bet to me (but I
> don't love it).
> 
> Dmitry - What are the downsides or concerns of introducing a new code?
> I'd like to evaluate that against the potential to cause conflicts by
> re-using existing codes. If you feel strongly about it then I'll defer
> to your judgement, but I'd like to understand better the context.

The keycode space is finite and extending bitmaps leads to more memory
consumption and weird breakages (like uevent generation exceeding 4K
memory page resulting in failures). I am trying to balance need for new
keycodes with how likely they are to be used.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
