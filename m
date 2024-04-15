Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3B28A5DEA
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Apr 2024 00:55:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwVEB-00038N-IT;
	Mon, 15 Apr 2024 22:55:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1rwVE9-00038H-9r
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 22:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WsNr1h6wQ6+rX+nY8lyqGTb0yfOPxHbOIqfkCkSOqNw=; b=AY5aTvj8kiFoYA9V4Baa8uzq1I
 4r9SjFgoYFhxraLG37Kmdks3ObEkZt8IAuA80jb9YiuNuSknugjl1il3WDSUSgJ7EEq4k2ymI/5WN
 w2S6SSyLGxkLRt1crr29E7WZebGGCoaATsy9bXDTi9QkszeBJv7rvD1oIjqL9I6LDuaU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WsNr1h6wQ6+rX+nY8lyqGTb0yfOPxHbOIqfkCkSOqNw=; b=N3jL2CMC1b1r9HS1wWBlXD36Qq
 atYQ8ubmxtx0S1hwWsOQNY/vy+2BV7bj5lB+HD8FUQtPbi0Mq4Ee4O07mmgQMiQia7lBmCHq8xnJ1
 E/VthrG7S2Tw9YWdt6TSeYjsTUHTZ0EtLjxTXDPYaZTSKLBDVB5KR0hRg9GxweI3d+UU=;
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rwVE9-0004ok-3E for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 22:55:05 +0000
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-1e455b630acso16018825ad.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Apr 2024 15:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713221694; x=1713826494; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WsNr1h6wQ6+rX+nY8lyqGTb0yfOPxHbOIqfkCkSOqNw=;
 b=Bg8Ncxg8XTl8M/HwbmdhvqolC4buneifh6rXV5vNy7aQPq9f9EJeXBilChFtc51PhY
 3sfNqmPSEHZmC3ALqNitdJklcDTGtSQBof9vD9xCoaNU+LPjkWLNrpdKYd2eBV34tH4T
 KKKNcQ/hLBmLorCYsx4FfWnqWnRuf0wFQ04tG/a4KRjg5IFJlPNlqkcJIXvmxatusOv4
 clc0uHPjtH+5TPBo/gbbj/Od/C9bbZ6UIM65UyYfOipAkF+clvMRY+XmT2XG/hjj3iN1
 xONTYSGDBPnU59BI4TDNnH+WouKfV5d1XhAt8Yjmvydh91duogoiGE9jfH8NTbGvwBuW
 RjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713221694; x=1713826494;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WsNr1h6wQ6+rX+nY8lyqGTb0yfOPxHbOIqfkCkSOqNw=;
 b=Ax1jv4x/L1dXGIcbyiNHLTTNNPrnKclk7A0fRdj8eUjMwsiY0hzTlGBknzW2IofGb3
 MlC3AhtcXLZFOGzbDJJNJxMw4BRfM7i9blmDfjLWYlQoSWxnLcQLWO65MjbkvH45FqMB
 xumE7TOoQuLRVYji0Qnvul9czK/kCurAHGIQXwRwujzrWrfisfaH8xF5jYc2VEbPGcT4
 o2I53MnIWTVdXki6sxaUAOa6e39ehkIuq4k7hNOARCnCVzNh28/zBmrslOQYegCJP943
 lQRmoix6RVzEWk35/lh+zLCnMNMxPAooCvki8HufTxRCyAexhnjYv+U9Xv1Saxyd2EyW
 5r+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXC5GfKxmo/KsvweWzSLxRRb7e7E9zGuKV8XtoL13gxyeDi4wqAPwuLj3be7CqFIKyqOFz6TbYUrY9so1WEwgY0XtICMI6ZSnGGDNWo9Q96U4o2k+I=
X-Gm-Message-State: AOJu0Yw/dh5jGL1HTsyq8iIOAJT8dYJOYmufFPuhxFialBmHM+/LbrqF
 ooH2CYYqDTN+p6U1cjs36GS8ry4jF1WmECxpWofllkiBdIdaEA6t
X-Google-Smtp-Source: AGHT+IG0yCx4JCIkc1/JHWIUJZJksqByKLnZQ07Sm2LAI6p/FZsVKHr2qXc32SSlbQCfHhSEgmhKZg==
X-Received: by 2002:a17:902:c244:b0:1dc:de65:623b with SMTP id
 4-20020a170902c24400b001dcde65623bmr9195817plg.60.1713221694056; 
 Mon, 15 Apr 2024 15:54:54 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:fbbe:421b:9296:f28c])
 by smtp.gmail.com with ESMTPSA id
 d15-20020a170902654f00b001e41ffb9de7sm8620808pln.28.2024.04.15.15.54.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Apr 2024 15:54:53 -0700 (PDT)
Date: Mon, 15 Apr 2024 15:54:51 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <Zh2wO0Bnyr8vFSpc@google.com>
References: <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
 <Zh2CtKy1NfKfojzS@google.com>
 <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
 <Zh2G85df29tPP6OK@google.com>
 <539776c5-6243-464b-99ae-5b1b1fb40e4b@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <539776c5-6243-464b-99ae-5b1b1fb40e4b@app.fastmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 04:28:19PM -0400, Mark Pearson wrote:
 > Hi > > On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote: > > On
 Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote: > >> [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.180 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rwVE9-0004ok-3E
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

On Mon, Apr 15, 2024 at 04:28:19PM -0400, Mark Pearson wrote:
> Hi
> 
> On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote:
> > On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote:
> >> Hi,
> >> 
> >> On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
> >> > On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
> >> >>
> >> >> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
> >> > 
> >> > Please see my response to Peter's letter. I think it very much depends
> >> > on how it will be used (associated with the pointer or standalone as it
> >> > is now).
> >> > 
> >> > For standalone application, recalling your statement that on Win you
> >> > have this gesture invoke configuration utility I would argue for
> >> > KEY_CONFIG for it.
> >> 
> >> KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
> >> the GNOME/KDE control center/panel and I believe that at least GNOME
> >> comes with a default binding to map KEY_CONFIG to the control-center.
> >
> > Not KEY_CONTROLPANEL?
> >
> > Are there devices that use both Fn+# and the doubleclick? Would it be an
> > acceptable behavior for the users to have them behave the same?
> >
> Catching up with the thread, thanks for all the comments.
> 
> For FN+N (originally KEY_DEBUG_SYS_INFO) the proposal was to now use
> KEY_VENDOR there. My conclusion was that this is targeting vendor
> specific functionality, and that was the closest fit, if a new keycode
> was not preferred.

Fn+N -> KEY_VENDOR mapping sounds good to me.

> 
> For the doubletap (which is a unique input event - not related to the
> pointer) I would like to keep it as a new unique event. 
> 
> I think it's most likely use would be for control panel, but I don't
> think it should be limited to that. I can see it being useful if users
> are able to reconfigure it to launch something different (browser or
> music player maybe?), hence it would be best if it did not conflict
> with an existing keycode function. I also can't confirm it doesn't
> clash on existing or future systems - it's possible.

So here is the problem. Keycodes in linux input are not mere
placeholders for something that will be decided later how it is to be
used, they are supposed to communicate intent and userspace ideally does
not need to have any additional knowledge about where the event is
coming from. A keyboard either internal or external sends KEY_SCREENLOCK
and the system should lock the screen. It should not be aware that one
device was a generic USB external keyboard while another had an internal
sensor that recognized hovering palm making swiping motion to the right
because a vendor decided to make it. Otherwise you have millions of
input devices all generating unique codes and you need userspace to
decide how to interpret data coming from each device individually.

If you truly do not have a defined use case for it you have a couple
options:

- assign it KEY_RESERVED, ensure your driver allows remapping to an
  arbitrary keycode, let user or distro assign desired keycode to it

- assign KEY_PROG1 .. KEY_PROG4 - pretty much the same - leave it in the
  hand of the user to define a shortcut in their DE to make it useful

> 
> FWIW - I wouldn't be surprised with some of the new gaming systems
> we're seeing (Steamdeck, Legion-Go, etc), that a doubletap event on a
> joystick might be useful to have, if the HW supports it?

What would it do exactly? Once we have this answer we can define key or
button code (although I do agree that game controller buttons are
different from "normal" keys because they map to the geometry of the
controller which in turn defines their commonly understood function).

But in any case you would not reuse the same keycode for something that
is supposed to invoke a configuration utility and also to let's say
drop a flash grenade in a game.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
