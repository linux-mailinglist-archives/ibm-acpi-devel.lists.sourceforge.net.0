Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F17A9AED3C7
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 30 Jun 2025 07:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ght8Qajt844xGy9r8vBai8vleGc0jfXMJZ0XyrdkkIQ=; b=B8MIEAsynTOOOEV5xWC07u+8Jt
	stOKBFulFpKETuBkEqM1ZdqM3Er2q4cOdTokJLgHL5qq6ZxbEahm4FVs8X8QYuTjBofKvtuV9cPCS
	ps7XLtQbA62U+O4Sg4vXXpvUs+0hjFhvWaZy1gYtRptkcLLDbHIauP9WQuetEjkKgPm8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uW6wO-0001Yd-Iy;
	Mon, 30 Jun 2025 05:20:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1uW6wI-0001YT-Lq
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 30 Jun 2025 05:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WaJ4C0zWWu9yrnACARDN83F3kZ6XpuexPtSIsWrNK/g=; b=ShGZKi2zI8wdoLc06lNbeSY+EH
 lO+fSCuKxjhMrhUgnucVit+GpEsuLxJyxzzUskvCL2qBbFIeYX00blxDTvFj4XqyPieUHONhw9/dn
 dX4BPCgcrKtbJDO4UpwqyOgVqt+6VN/OtRLeewAfbBAJ/G7Pu4z7aEKufmqXmQ89/dyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WaJ4C0zWWu9yrnACARDN83F3kZ6XpuexPtSIsWrNK/g=; b=g11IntarcyznzT4onSY31Fj45x
 vJHGajoVQMCOPy2qlfrOstT61MuS7a8gbhAlANa9Hmwtr59DbUzL9aNfg84uixYeNc1+9XU1lYaaq
 5AIQhbbOqhfaULtGATDQMn5PuVilyqmpirCr803dW0uqrm7phJ/52SuQvAUggyCfIYSY=;
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uW6wI-0006Pr-7f for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 30 Jun 2025 05:20:22 +0000
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-2363616a1a6so10131035ad.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 29 Jun 2025 22:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751260811; x=1751865611; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WaJ4C0zWWu9yrnACARDN83F3kZ6XpuexPtSIsWrNK/g=;
 b=R6Nr2MlamK9NQNzuRQaZN/WsKgTgJxeNLjNc4VFiG5PMdMiWOcZlY8Ssfvecuy/LzH
 wnvfPyfbu6L300xrV1rGyprfgrDuYGE4yD3+8s2RbzkOxgx4Bq6Zg2uvWswTsPNpNbcA
 B4e+AIlmUCtcHzt6OVt+plsYyaWRYHcsDJcxuvJ7W4Uwk8JHcKjv/MwX9acWSNpbc4DB
 o9M2QvDBUIlOZDT32XctGLcVQ/Mt1eyc5R54dQc1Hi6lZX4JcZxN4ixexLcnEYrKA26g
 2xPE4E8wfuTIe+Kk+SfemQmjLKksZQrPLJkme01D3HAxj/c1nMI9aQD+fAbA8C9Pj4s7
 0SoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751260811; x=1751865611;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WaJ4C0zWWu9yrnACARDN83F3kZ6XpuexPtSIsWrNK/g=;
 b=RigxhQ7qbP0Bz/gZoJ02n2dQuzIccZRduPHBhCdSxZS+19QkOn0aCffFsfYJqp8Q8p
 wTllaFCSvfcpnGF8wTHmftGVXJYSsg1JxzmRBFVPazkxHo4YIj3wAo2RDhBBeXD6o63K
 bKynmwVPkJ06xdcbVTQjQtyd06Ec7e9H2pEKmlrkkoivN8fvPVp+ggwzojxPDPmhXKJF
 xyrpJ+PeT0JW/Vy+l+6C+tnI17dkl7Y/gSBbQdi6h8sZ+vNpM9zPC/PWs2HKjCrCc12q
 7U3fEdI2i1vv8VGQuVeu1utT38qEt8vt/Crw3EbYTqFZKceneWZmZbboiIDeqtWkYKHf
 VpXw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZqO3ZVaHsgMaJzcXHLhc25KHhVRItpnRYQ5tsY6XyBN9dkofupZXIXeO3OHCe4GONJ7kyk4PniaUVt5MjvQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyWrCzl5tr3fphGWv2c81kSaYLbpdosDcsyQGqeJ1kZBofL6vXz
 Hq1z3uWeNm9SYuRei3AHT2j5CSVoSoCHoOcess/GmKM0krEJa8Rd/9nB
X-Gm-Gg: ASbGncusRWCuwgwzjlOf0vcnduhJRmNWx1TKrRZe+5Wl/imAGjX4Jcc80Puh6aK+D9A
 e6PRpt+jVq9XKNNR8bSRK8kY/EV2J/0fLcy1Kwkaj00xzuYs0U04TAqmLJs8OQMITt0/mNKViBl
 6Vwrm3Y9/M4TeZfB8OxMBhnVpBLipiEC5tWeQJgGs5gqnbNHRsESovg1Ph08hUCfyyJ9rucoXaL
 DGDXf3RpEgrommBgMDbjL9Ru671Y2xbe0B0pCJ3IgrZQA6HC45iJTskaigwMHuBhFGjtu7HyW2l
 rwwafi4Yczqn7W9FO8F0FLyJKmVa0dPjh/rgdgUup290ramgziyKidMOVEKVMg==
X-Google-Smtp-Source: AGHT+IGljq9y7uyYbWJk8IEUOp3noeR3/2KTd8Pg83rOjo/0K4IILNVBfNxEreQd5THLNbtRj5CfVw==
X-Received: by 2002:a17:902:d603:b0:234:8c64:7885 with SMTP id
 d9443c01a7336-23ac48b6862mr175872145ad.53.1751260811397; 
 Sun, 29 Jun 2025 22:20:11 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:c92b:c666:1f8:990e])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23acb2f1837sm75936735ad.65.2025.06.29.22.20.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Jun 2025 22:20:11 -0700 (PDT)
Date: Sun, 29 Jun 2025 22:20:07 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <bviu4igchqy6bvu54fw6afts7ooctlmmcutdq6tc4rutzhjvfs@o56kezrit6un>
References: <20250620004209.28250-1-vishnuocv@gmail.com>
 <5jgix7znkfrkopmwnmwkxx35dj2ovvdpplhadcozbpejm32o2j@yxnbfvmealtl>
 <4ad6e1e1-aca8-4774-aa4a-60edccaa6d0e@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ad6e1e1-aca8-4774-aa4a-60edccaa6d0e@app.fastmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On Mon, Jun 30, 2025 at 05:42:45AM +0900,
 Mark Pearson
 wrote: > Hi Dmitry, > > On Fri, Jun 27, 2025, at 2:14 PM, Dmitry Torokhov
 wrote: > > Hi Vishnu, > > > > On Fri, Jun 20, 2025 at 09:42:08AM +0900, [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.214.180 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [dmitry.torokhov(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.180 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uW6wI-0006Pr-7f
Subject: Re: [ibm-acpi-devel] [PATCH] x86/Mouse: thinkpad_acpi/Trackpoint:
 Trackpoint Doubletap handling
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
Cc: zhoubinbin@loongson.cn, jay_lee@pixart.com, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Vishnu Sankar <vsankar@lenovo.com>, ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Vishnu Sankar <vishnuocv@gmail.com>,
 Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
 tglx@linutronix.de, jon_xie@pixart.com, pali@kernel.org, mingo@kernel.org,
 hansg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On Mon, Jun 30, 2025 at 05:42:45AM +0900, Mark Pearson wrote:
> Hi Dmitry,
> 
> On Fri, Jun 27, 2025, at 2:14 PM, Dmitry Torokhov wrote:
> > Hi Vishnu,
> >
> > On Fri, Jun 20, 2025 at 09:42:08AM +0900, Vishnu Sankar wrote:
> >> Newer ThinkPads have a doubletap feature that needs to be turned
> >> ON/OFF via the trackpoint registers.
> >> Systems released from 2023 have doubletap disabled by default and
> >> need the feature enabling to be useful.
> >> 
> >> This patch introduces support for exposing and controlling the
> >> trackpoint doubletap feature via a sysfs attribute.
> >> /sys/devices/platform/thinkpad_acpi/tp_doubletap
> >> This can be toggled by an "enable" or a "disable".
> >> 
> >> With this implemented we can remove the masking of events, and rely on
> >> HW control instead, when the feature is disabled.
> >> 
> >> Note - Early Thinkpads (pre 2015) used the same register for hysteris
> >> control, Check the FW IDs to make sure these are not affected.
> >> 
> >> trackpoint.h is moved to linux/input/.
> >
> > No, please keep everything private to trackpoint.c and do not involve
> > thinkpad_acpi driver. By doing so you are introducing unwanted
> > dependencies (for both module loading, driver initialization, and
> > operation) and unsafe use of non-owned pointers/dangling pointers, etc.
> >
> 
> Do you have recommendations on how to handle this case then?
> 
> This is a Thinkpad specific feature and hence the logic for involving
> thinkpad_acpi. There are Thinkpad hotkeys that will enable/disable the
> trackpoint doubletap feature - so there is some linkage. I'm not sure
> how to avoid that.
> 
> Is there a cleaner way to do this that you'd recommend we look at
> using? It's a feature (albeit a minor one) on the laptops that we'd
> like to make available to Linux users.

I believe if you define the doubletap as an attribute (see
TRACKPOINT_INT_ATTR or TRACKPOINT_BIT_ATTR in
drivers/input/mouse/trackpoint.c) then whatever process is handling the
hot keys switching this function on or off should be able to toggle the
behavior. The difference is that it will have to locate trackpoint node
in /sys/bus/serio/devices/* (or maybe scan
/sys/devices/platform/i8042/serio*) instead of expecting the attributes
be atached to thinkpad_acpi instance.

You just don't want to have one driver directly peeking into another,
because then it starts breaking if you unbind or force use of a
different protocol, etc.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
