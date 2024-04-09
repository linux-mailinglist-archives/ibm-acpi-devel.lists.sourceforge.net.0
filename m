Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1A289CF20
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  9 Apr 2024 02:01:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rtyuq-0001Lm-U1;
	Tue, 09 Apr 2024 00:00:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rtyup-0001Lb-Ea
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Apr 2024 00:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3jJTrn3M9PnPBPpdaXwd3Dwyudp0ERNih8NQ9xLiPv0=; b=NEsze8EBIZ4pkZf/rvKmdJSgW8
 R/fXc7BugE302LJyzVC98beCA6+9FhUw6vNHpTZywoui0ewjj04U1MrquLCykmZUR643MTUyX8Qto
 bajugnCtCSHeFyFHa89ZNDtzXK12/ckgm084KK0zEp/qlfzA0VazOwz30Vsg4d6Pd/PQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3jJTrn3M9PnPBPpdaXwd3Dwyudp0ERNih8NQ9xLiPv0=; b=aKDjmZp+d0Uay1+tbE2un3eq0k
 5cmonkgyAS4KLR8DBYdasICNWZsAQKvzaf1D8SwYtPRyTNYE0ea1oI6RcXJ+LOhN5NFbZ6KozfjAF
 EFqKQ5UxwW87fjC+tZ4Q+An9pSRo2PTQNMrFCZZlkvobOYTyxK8Pr60XJw0Fmf+rDnFY=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtyul-0007sj-LV for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Apr 2024 00:00:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id F295C114012F;
 Mon,  8 Apr 2024 20:00:28 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 08 Apr 2024 20:00:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1712620828; x=1712707228; bh=3jJTrn3M9P
 nPBPpdaXwd3Dwyudp0ERNih8NQ9xLiPv0=; b=onb6kH+/eoNGbV/QZHdUzkd+ZE
 7b92FM70Gc8HQOO5KN5/wQt8UVCF3TR7lGWPPBPzrlslu12hH27T0Kke/uQCNmOO
 C80pO6G6ag0ouBlWv2PFBT6b3QaiCYAk2sJrILENZn85+ndrpyXaHAb7iJESkk+W
 Mlg5hSsRwMYPBpXJNEiVCocogyFj0hJTfBremmT82x23pZMHwjZtIl8FaogA4fWI
 phgkC8P/jnH4wGCGbtEUSHQ8GIhVPVIFfYJWHjUdv7mJpr1RWUAgEfc636ueGfqu
 3H7yjp5J7+9WtrFK1Gypdi2yEN4DlzXivFjDHded2YAWubyuYqZ49/sAz/lg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1712620828; x=1712707228; bh=3jJTrn3M9PnPBPpdaXwd3Dwyudp0
 ERNih8NQ9xLiPv0=; b=hx8VlIy2mYvNIWumG6XMu+XCDCrmaqTjFNO3ItLMYlH4
 XhNzNJHaUGwIXQAczHTbvR6SMcBuoiWvsdqJ6X321w5jmxodYaoVlLD/SiTTgW4l
 l7EwrN/S8KtAA2D6GamAS5HZR56ZbeJgjkXipOKL+MKrn1E3o84oqiOsL86Ibah5
 nRdozI2+YMOHLObElsE+AOU8rL+r0Zww02w41mHXmDlTowUaq4+NchDbRZBXTSJ0
 1OcRUXyr5WoKSQosBm3+5uhgdNTEaazocOF++e2zNmqRIxFXFcn8dGY4X5/QWgfz
 yYkSDwXov70TIRT6AGunumJJGsrMwc2A5o5iWV2Gxg==
X-ME-Sender: <xms:HIUUZmYKrqfu5if1nxPNdDOv8wW5Cp7Qx57uv0FJ6kl3zkke0s6czQ>
 <xme:HIUUZpYtcBRddWDF_3c5pEgrTQ44w56sh2kkrcRBnWxqiNU8V6j8SeYhMvKXeCC0O
 knx9i2JCfSPS1qri_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudegkedgtdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:HIUUZg-FYI6_bB9Dkfd5Y-zkDTzr26pyv5cki8FoZWxZoaSlbSutqA>
 <xmx:HIUUZoqNW0dzoT03O4jV4AzABptbAQP8wjtzoD_YIc0ep72NybdItA>
 <xmx:HIUUZhoEoQa6gSgnE9Ade_-W6tRH7gMTP9gaxnCGGuVQQStyNLUCHA>
 <xmx:HIUUZmS3HFEwfiodwz5E_bMWdXaAzAyshL2UNJhyT0kkaUf9ZahNbw>
 <xmx:HIUUZujQGB0JJwgtnhiysPEdZVXZWRZHrlba0fAFZ-stgnDaZrZQdD4Z>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4842EC60097; Mon,  8 Apr 2024 20:00:28 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-368-gc733b1d8df-fm-20240402.001-gc733b1d8
MIME-Version: 1.0
Message-Id: <c6427b27-3c9d-4aa4-abfa-c3588b5d9a42@app.fastmail.com>
In-Reply-To: <ZhR-WPx7dgKxziMb@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
Date: Mon, 08 Apr 2024 20:00:30 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dmitry On Mon, Apr 8, 2024, at 7:31 PM, Dmitry Torokhov
 wrote: > Hi Mark, > > On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson
 wrote: >> Add support for new input events on Lenovo laptops that need exp
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rtyul-0007sj-LV
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
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Dmitry

On Mon, Apr 8, 2024, at 7:31 PM, Dmitry Torokhov wrote:
> Hi Mark,
>
> On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
>> Add support for new input events on Lenovo laptops that need exporting to
>> user space.
>> 
>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>> Add a new keycode to allow this to be used by userspace.
>
> What is the intended meaning of this keycode? How does it differ from
> the driver sending BTN_LEFT press/release twice?

Double tapping on the trackpoint is a unique event - it's not the same as BTN_LEFT twice. The BIOS will send a new ACPI event for it and it's not meant to be the same as mouse button clicks.

For example, on Windows this launches a utility that let's you do various configurations on your laptop (some Lenovo specific), but that's not available on Linux (yet). We did want to make it flexible in this implementation so users could use it for whatever was useful to them.

>> 
>> Lenovo support is using FN+N with Windows to collect needed details for
>> support cases. Add a keycode so that we'll be able to provide similar
>> support on Linux.
>
> Is there a userspace consumer for this?

There isn't yet, though we would like to implement something, and do plan to. 
We still have to work through the details of the best way to do this, and if it's Lenovo specific, or (probably better) something generic.

I don't have as much knowledge on the user-space side development, and my experience is it tends to move a bit slower for getting things implemented. We thought we'd get the framework in, so it's available, and then work with user-space folk to deliver a solution in a suitable manner.
Ultimately this is something we'll need in our Linux preloads and the aim is to make it easier for Linux users to get help from our support team (not always the easiest currently).
I don't know if other vendors have something similar, but I wouldn't be surprised if this could be re-used in other cases so I hope it's not Lenovo specific. It felt like it would be useful functionality to have :)

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
