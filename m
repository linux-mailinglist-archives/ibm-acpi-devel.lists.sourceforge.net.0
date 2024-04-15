Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D658A5AB7
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Apr 2024 21:36:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwS7N-0006Dn-Fg;
	Mon, 15 Apr 2024 19:35:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1rwS7M-0006Dg-Fz
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sd4qBFIurZa5789oJ4pvkqFdJ4TBJxMcpEKz1P+zoD0=; b=cAnVE/AkPK6vOtpNyc/gROsz/g
 MTmq2DUtYn1alY2OGo9eZOcyZ8uK/WfxfiOIsZF6q1Qc2PEGASWzTn6g/p6KVGRCJzS3CD1pb9bEV
 WBntB+MqhACP8BWbL3rOrzFriz7SdKbrubxdDJ+DQJi4+E2TU8/+jWpDkc29dYpCgmvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sd4qBFIurZa5789oJ4pvkqFdJ4TBJxMcpEKz1P+zoD0=; b=T1Vj2CU/EaHPnho8+fxvbJ3Rto
 K1sAk4lEf/8vHXhrDMXYfmbIl7wAu5B+COA+e7POhbeJePAmNjIXppvKmebeapjgIUvb75FjfIHoB
 VFdhd9VOdzA7ETqZ3sojcflHtG3Kg0QvTxWvlmojrwJNoY5dyIPU5lEn22pxUg3pWo7w=;
Received: from mail-pg1-f169.google.com ([209.85.215.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rwS7M-0002hC-89 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:35:52 +0000
Received: by mail-pg1-f169.google.com with SMTP id
 41be03b00d2f7-5d8b519e438so2692566a12.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Apr 2024 12:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713209741; x=1713814541; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=sd4qBFIurZa5789oJ4pvkqFdJ4TBJxMcpEKz1P+zoD0=;
 b=TSLnmH4h7zmPOR+rq8JMNxatM3d5yuabI2nahZ6VQe8iTXGcDSh8bwKkzvwRhU3Ofy
 fZ4JhMFEin5fevfFGJO9PfHL3TZgMn/vpXMktZbQycB0wLrAVyA43bGeE/mSVM/RG4Ry
 2/MNGBCXcoOxZ0u3IIThQXGl2Ugzye/z5SnUNbyQUjOPHwJ2OR5KoqrygH66yPcX7Vua
 5ZqU1DPZThMTgXA0QJ2KeYxydtKNFvNgT1pH9FL7O6+CNmvsXseyL7V7ZFJrrWv2vMTP
 4MXDoGYGPrlmLjNNbYiyd3MWrAB7syUqBmHHLEtsiPj/SsYKEK8ksS+fIsSSbZg3F5ie
 VN6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713209741; x=1713814541;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sd4qBFIurZa5789oJ4pvkqFdJ4TBJxMcpEKz1P+zoD0=;
 b=ABCdR50Re+NXFSRoH/df12hzOufBGvfa1eBwxQAw8JE5VbjIPmUfCILtoFNGQrn6Kj
 j96OwNKqOLlif3a6/Vdfwm4RJOCVvv4Kt3UqbKRy+t3IybgM/A2YcYYX3RdL3DSBI0Z/
 kQ3zlOnfonOxQyT+sP3kOnRqUNvf6JIL+5EsYhSYoukzBwvEjg79RPPd+GkUk+XUSfAT
 npgoIbufOghgGN2NSs2vRJfFqHfai8VHNDyRxq9ESiziYnj4S2PMLnLHc6KhY5Pwt4CO
 g8f1YkQ8JN0EpOig1y3xKZphGzYd0C/0ZTwhdnyMPZwDhis6fGdJP8g6kKd1fn2qCnfq
 5M9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUF0kl/ugI71ljYMktQFnnILaE3a7ezmdz5fhSxpKkxNY/xjhhCrVUjiUBGr4SGLjo5yYEXHqY8TnP43pyie0rzNeHs5v8y6V14cvrCE8+GB34jxEs=
X-Gm-Message-State: AOJu0YyO5lz7zYuDOkZOwG8IaUEUY4VNOeeA7xMHitNNi985eugMFfN7
 KvUcMykfImyMRGQztcjzYHsJxTChPfI8/oNtInNG1Rt/E0bWySAOJdP2Dg==
X-Google-Smtp-Source: AGHT+IFabnZRTyhqLVGYWMvVkqnmtYHiS7EWkfO/PgwPKxuTL3HJma9hI1ZyOLqgDvF7jruScYa42g==
X-Received: by 2002:a17:90a:c8e:b0:2a0:3dc3:8a8b with SMTP id
 v14-20020a17090a0c8e00b002a03dc38a8bmr7471492pja.47.1713209741258; 
 Mon, 15 Apr 2024 12:35:41 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:fbbe:421b:9296:f28c])
 by smtp.gmail.com with ESMTPSA id
 y15-20020a17090a600f00b0029c49ed3974sm7383306pji.37.2024.04.15.12.35.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Apr 2024 12:35:40 -0700 (PDT)
Date: Mon, 15 Apr 2024 12:35:38 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <Zh2BiqQdM7_n-Ih4@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <411e6353-16ef-455b-98fa-2d38bb7bf9bd@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <411e6353-16ef-455b-98fa-2d38bb7bf9bd@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 11, 2024 at 02:30:35PM +0200,
 Hans de Goede wrote:
 > Hi Dmitry, > > On 4/11/24 2:02 AM, Dmitry Torokhov wrote: > > On Tue, Apr
 09, 2024 at 10:17:05PM -0400, Mark Pearson wrote: > >> Hi Dmi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.215.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.169 listed in wl.mailspike.net]
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
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rwS7M-0002hC-89
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

On Thu, Apr 11, 2024 at 02:30:35PM +0200, Hans de Goede wrote:
> Hi Dmitry,
> 
> On 4/11/24 2:02 AM, Dmitry Torokhov wrote:
> > On Tue, Apr 09, 2024 at 10:17:05PM -0400, Mark Pearson wrote:
> >> Hi Dmitry
> >>
> >> On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov wrote:
> >>> On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
> >>>> On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
> >>>>> On 09/04/2024 09:31, Dmitry Torokhov wrote:
> >>>>>> Hi Mark,
> >>>>>>
> >>>>>> On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
> >>>>>>> Add support for new input events on Lenovo laptops that need exporting to
> >>>>>>> user space.
> >>>>>>>
> >>>>>>> Lenovo trackpoints are adding the ability to generate a doubletap event.
> >>>>>>> Add a new keycode to allow this to be used by userspace.
> >>>>>>
> >>>>>> What is the intended meaning of this keycode? How does it differ from
> >>>>>> the driver sending BTN_LEFT press/release twice?
> >>>>>>>
> >>>>>>> Lenovo support is using FN+N with Windows to collect needed details for
> >>>>>>> support cases. Add a keycode so that we'll be able to provide similar
> >>>>>>> support on Linux.
> >>>>>>
> >>>>>> Is there a userspace consumer for this?
> >>>>>
> >>>>> Funnily enough XKB has had a keysym for this for decades but it's not
> >>>>> hooked up anywhere due to the way it's pointer keys accessibility
> >>>>> feature was implemented. Theory is that most of userspace just needs
> >>>>> to patch the various pieces together for the new evdev code + keysym,
> >>>>> it's not really any different to handling a volume key (except this
> >>>>> one needs to be assignable).
> >>>>
> >>>> What is the keysym? If we can make them relatable to each other that
> >>>> would be good. Or maybe we could find a matching usage from HID usage
> >>>> tables...
> >>>
> >>> I was looking through the existing codes and I see:
> >>>
> >>> #define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */
> >>>
> >>> We also have KEY_VENDOR used in a few drivers/plafrom/x86, including
> >>> thinkkpad_acpi.c and I wonder if it would be suitable for this vendor
> >>> specific debug info collection application (which I honestly doubt will
> >>> materialize).
> >>>
> >>
> >> That's a somewhat disappointing note on your doubts, is that based on
> >> anything? Just wondering what we've done to deserve that criticism.
> > 
> > Sorry, this was not meant as a criticism really, but you mentioned
> > yourself that there isn't anything in the works yet, you just have some
> > plans.
> > 
> > For such a project to succeed Lenovo needs to invest into selling
> > devices with Linux as a primary operating system, and it has to be
> > consumer segment (or small business, because for corporate they
> > typically roll their own support channels). The case of retrofitting
> > Linux onto a that device originally came with Windows OS rarely gets
> > much if any response from the normal support channels.
> > 
> > Is this something that is actually happening?
> 
> Yes, Lenovo is actually offering Fedora as an OS choice when
> ordering ThinkPads directly from their website in many countries
> including when ordering as a consumer.

Ah, very nice, I was not aware of this.

> 
> And unlike other vendor's Linux preloads which often use a kernel
> with downstream laptop specific changes these laptops are running
> unmodified Fedora kernels, which themselves are almost pristine
> upstream kernels.
> 
> Lenovo (Mark) has been really good the last couple of years in
> making sure that their hw just works with mainline kernels without
> any downstream vendor specific patches.
> 
> >> That aside, I guess KEY_INFO or KEY_VENDOR could be a good fit (I
> >> personally don't think KEY_CONFIG matches well), but I would be
> >> worried about clashing with existing functionality.
> 
> Using KEY_INFO / KEY_VENDOR works for me too. So maybe we should
> just go with one of those 2 ?

It looks like Mark's preference is KEY_VENDOR, so let's go with it?

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
