Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8278489E53A
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  9 Apr 2024 23:55:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ruJQM-00048l-Nv;
	Tue, 09 Apr 2024 21:54:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1ruJQL-00048W-EI
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Apr 2024 21:54:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yCfI2jgQUvfRfEGyH3IDCFlAWQqz4TVgXDFmhrEpoSM=; b=fj6remXbcKzCjdkzKN604bgjGn
 hfXADfJPG3g0kJq1v46KbCYfk5CAYw5M8dlU3H3ldkAoEgRtP0cigNZ9LraRciZSXFBdOVaIRipIe
 tFsthrrQKs1AZb5PPjAoKAIl+ZmgjLn7JvxNIYja+FjnM5e56dQ7X44euiskJ17lDf5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yCfI2jgQUvfRfEGyH3IDCFlAWQqz4TVgXDFmhrEpoSM=; b=OEi1IEAhBHF4AmGvLnu8xtGjzk
 8/lDIhvH1POp7LOMsCTyubAkbLF9fW4iWqyO/nKGleGfGHZFzvcS16+IaD6LlQNHp0l97jq6nnNg3
 OHeQ85QaqVlNgMQzwVEbGLircY1p/1CKosY0GLyDHmmtdZUIAq8WrdNrNUIP2sG70DJI=;
Received: from mail-pf1-f180.google.com ([209.85.210.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ruJQL-0006By-9C for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Apr 2024 21:54:37 +0000
Received: by mail-pf1-f180.google.com with SMTP id
 d2e1a72fcca58-6ed04c91c46so4231126b3a.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 09 Apr 2024 14:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712699671; x=1713304471; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=yCfI2jgQUvfRfEGyH3IDCFlAWQqz4TVgXDFmhrEpoSM=;
 b=cBd4I0YJOFBaOUJlwhm5WTjIGyS+65nrNF2jS61Gxqq51LLnZTpGBa4XxlIpe2XwkW
 btPdB8/4/D1+5IRPdYGhDK6PMT36hXA28mMpjSfKJ3w+ZHsX/pDR5fTrx23J5zSzyqcf
 WsKDrkSQhhzWa7nb8msuDU55rVdeNimJDZRd7k4zIMv4G0J/pqFkjFnvh0G0/UqOIw1o
 cxM2ES/YZfhjFF3CNQ1Re4RXmw4A9UrMhwd4ZqycZERI49aF6hU4RpO0CmQAjMlbVwyV
 Mwj4I8l6ysvSTQqs6kyW4ysgrupXHMOg/9Q8cw+PEXo3P1Cp0470XhNy4r2uc7vzs0M5
 UL+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712699671; x=1713304471;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yCfI2jgQUvfRfEGyH3IDCFlAWQqz4TVgXDFmhrEpoSM=;
 b=nC3u1Vqdc97rCv+yCde7pwHMwtBsHMYrkPID0JIWLXn4ygyogRJR01OSNzJXCjXrdz
 71KufnkKrEt1LJqxAYvG+qwwSqY5I4QUxxvPGzYvjLwuERqYFSQ2S/AdIrUwVoXd7GV5
 luVHvH+qeIn/7EPE88Php5z7BOUjZlnaLHIVDDLA3V0JC8d5XVa8DB+NuNzcU/wR1TUj
 dh0oTHTpyEQg0snzJ9qkrz2H7xJ/ZWhOfX6CD0lsT2MIevPc/qkTU0EeQSEMGYr+dOWB
 bPVQOFO0Hz7sWrk7kAVjGop/l4YTAsrWh9q4xTcqZ0wBYdIEeJKRhYeAgZA32yU/BNEf
 jhMA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWLMPgtxFQvtORRwkaJCcEF3Bk9leXVkgYrXqNeo5SCcZZUOjSv4CzqEP4cnFtmdMyZyui0tBWAad6trr71nzrMyG5hpJs9nQNi7hM3357fVbCIH6I=
X-Gm-Message-State: AOJu0Yyv4VDgVjFToqFC6NNnjiackpNLseBhQ126Nkwd4DVLr18izSDi
 JW5kMITv6ICqadvv1OpZRM5RPhoEDURz8aGdyQWvoqDNcYd8owXc
X-Google-Smtp-Source: AGHT+IFcbN+2aYJc/Io8VR3Z+BFQfIej1rUjuUP+5CgmtZ6i7zjKfAAbI9t5PT3XN32ZcufGHn9N1g==
X-Received: by 2002:a05:6a20:12c1:b0:1a8:587d:6268 with SMTP id
 v1-20020a056a2012c100b001a8587d6268mr1215807pzg.62.1712699671528; 
 Tue, 09 Apr 2024 14:54:31 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:6c8c:a143:d391:6ace])
 by smtp.gmail.com with ESMTPSA id
 c16-20020a170903235000b001dba98889a3sm9339701plh.71.2024.04.09.14.54.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Apr 2024 14:54:31 -0700 (PDT)
Date: Tue, 9 Apr 2024 14:54:28 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ZhW5FGmkQ-ed15Yc@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <c6427b27-3c9d-4aa4-abfa-c3588b5d9a42@app.fastmail.com>
 <dded171e-4cb4-47cc-aece-d5afd229060a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dded171e-4cb4-47cc-aece-d5afd229060a@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 09, 2024 at 12:16:04PM +0200,
 Hans de Goede wrote:
 > Hi Dmitry, > > On 4/9/24 2:00 AM, Mark Pearson wrote: > > Hi Dmitry > >
 > > On Mon, Apr 8, 2024, at 7:31 PM, Dmitry Torokhov wrote: > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.180 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ruJQL-0006By-9C
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

On Tue, Apr 09, 2024 at 12:16:04PM +0200, Hans de Goede wrote:
> Hi Dmitry,
> 
> On 4/9/24 2:00 AM, Mark Pearson wrote:
> > Hi Dmitry
> > 
> > On Mon, Apr 8, 2024, at 7:31 PM, Dmitry Torokhov wrote:
> >> Hi Mark,
> >>
> >> On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
> >>> Add support for new input events on Lenovo laptops that need exporting to
> >>> user space.
> >>>
> >>> Lenovo trackpoints are adding the ability to generate a doubletap event.
> >>> Add a new keycode to allow this to be used by userspace.
> >>
> >> What is the intended meaning of this keycode? How does it differ from
> >> the driver sending BTN_LEFT press/release twice?
> > 
> > Double tapping on the trackpoint is a unique event - it's not the same as BTN_LEFT twice. The BIOS will send a new ACPI event for it and it's not meant to be the same as mouse button clicks.
> 
> To extend a bit on this, this double-tap event is not reported through
> the PS/2 trackpoint interface at all. Instead it is reported to
> the OS by the ACPI hotkey notifier, which is used to report various
> multi-media hotkeys and things like that, this is handled by
> the thinkpad_apci driver which sofar only reports key-presses.

Ah, I see, so this is just an arbitrary action not connected with the
pointer handling in any way.

For such actions we typically assign keycodes based on their intended
behavior, so instead of KEY_DOUBLECLICK which conveys user gesture but
not the intent you should consider using KEY_CONFIG (with is typically
mapped to Application Launcher - Consumer Control Configuration in HID
spec) or KEY_CONTROLPANEL (Application Launcher - Control Panel).

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
