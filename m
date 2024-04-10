Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB1E89E7B6
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 10 Apr 2024 03:21:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ruMeB-0000kA-Hc;
	Wed, 10 Apr 2024 01:21:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1ruMeA-0000k4-SE
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 10 Apr 2024 01:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZtBWhAwcpxshXjsjFh4lr39Z4uP+VFkhOv/GkXZ9HYU=; b=GX1hvVPXN/mA+mykvRkUJSu1RA
 sZlN/KfEM0X2jGmghxbs9NZtsNnHmTTj8SbUpxsmj05mBJDJbw3Pz8CRdexxTgxwKP2Pn/tFg3nxL
 g5I3xd1MqUOdJLxFdyNtEaY4+i6yop6lAvvmA0jShJQTxoHi4LSCPifiaVz/m2O2YqT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZtBWhAwcpxshXjsjFh4lr39Z4uP+VFkhOv/GkXZ9HYU=; b=Qt05c01hMJPljuX3RHnlGVzO1c
 SHpDOK9JvqWQ2L47dOmNvq341p2T69fvu+aXM8N+epPDCmz7aGaGi6o+tSodtB+8CM8JvHph8xGMK
 sgBtRTVBiNieKzJFIwaOMgvYGJbtq2OPhAT1dHtCTCthobxC26W07CNRdtyIfLfJzGMY=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ruMdv-0007pR-Fo for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 10 Apr 2024 01:21:06 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-6ea2375d8d0so1202166a34.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 09 Apr 2024 18:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712712041; x=1713316841; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZtBWhAwcpxshXjsjFh4lr39Z4uP+VFkhOv/GkXZ9HYU=;
 b=W7hfmV3ZhxNGMv4h6P/qznxu12HqrbWBsr99bqkd2hQJ5+KCCgJQldXqMzLtIJak3A
 OU/Ge0DnA4fZzM3RE3PCbPBJ/M+5puCKGWY1buEphOmpj8d5mQUwzKe/MYiZl8xejuIx
 1XR0UID34Zv+tEchn+TjTGvl5AQMBhtQwCnmIGsMKNgY7bR23uoQgsTBitTDLbvw37GS
 zQfOhuZ2b2lQaF7BqVVteP+Ly9bTTPXe5Zz+mABfZwyyjPMbFcv9SRgjvRAT4exATZkh
 bmHWksJh1HvcA0JHVpyxpnpQQiO+AYtNYxsyhOn/oDSoEYlaToN3gm57Ysx+nmywnHu9
 Bl/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712712041; x=1713316841;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZtBWhAwcpxshXjsjFh4lr39Z4uP+VFkhOv/GkXZ9HYU=;
 b=uCkS8ExunzuYoxArgKJvEAapEhpSBmusCbs2stv0AReFsHdBgfcfJ1h3OpmVFx7c2y
 jW9yr7Flxw2orv6CULqhhK/VHkWmn84cNl9PDWKqDwP1+b7avvtLzCIMJcuUaddvYaIM
 7cQmG8au8Le9LfhiQBKPx2iTNKR804vE5f8UlLcijQRsecpD3McLpQAku4aVbloPAO0L
 MKz918Icp7+op6rb5DzUn2rMW3QcEVzxNAd7sopNWGen3HLNE+jS43Puz8ypzJTUvrlK
 QX7NyrozNfdRe/jbduh/4rH8JJ+4/p0FDRna/MikRvdniB15UiNb7mS3k702TBRuOZQG
 rTog==
X-Forwarded-Encrypted: i=1;
 AJvYcCUWY04x0XAp0GbXPzMHGBMN7C/Je8+c4JOmPnZW225++wmudOeGBDCFZvPsz4ItVKtsqYvzgf2MP1nDfnChnfHhYaGwQgrYyYC6/oWSPQNLKLnyrj8=
X-Gm-Message-State: AOJu0Yyf1PB9Ym75Z9KoNoAdSLhlguvVdBhvc7iGTvCfUtIgoMY7Vgls
 GWzYRdRlBdquP1I9UIoTTEx5gPL/lxUa6D4y1whm/p/FPJB7g17b
X-Google-Smtp-Source: AGHT+IF1CU1GiDckwdk9ehAdoDCsxO4V5wtdnDbbOZxdT+PqMZjd7i9DgsLROxcMaHW7w+oc2VFU/Q==
X-Received: by 2002:a9d:6c83:0:b0:6ea:2343:9869 with SMTP id
 c3-20020a9d6c83000000b006ea23439869mr1534691otr.20.1712712040713; 
 Tue, 09 Apr 2024 18:20:40 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:6c8c:a143:d391:6ace])
 by smtp.gmail.com with ESMTPSA id
 r16-20020a632050000000b005f05c88c149sm8742632pgm.71.2024.04.09.18.20.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Apr 2024 18:20:40 -0700 (PDT)
Date: Tue, 9 Apr 2024 18:20:37 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Peter Hutterer <peter.hutterer@redhat.com>
Message-ID: <ZhXpZe1Gm5e4xP6r@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZhW3Wbn4YSGFBgfS@google.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov
 wrote: > On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote: >
 > On 09/04/2024 09:31, Dmitry Torokhov wrote: > > > Hi Mark, > > > [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1ruMdv-0007pR-Fo
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

On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
> On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
> > On 09/04/2024 09:31, Dmitry Torokhov wrote:
> > > Hi Mark,
> > > 
> > > On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
> > > > Add support for new input events on Lenovo laptops that need exporting to
> > > > user space.
> > > > 
> > > > Lenovo trackpoints are adding the ability to generate a doubletap event.
> > > > Add a new keycode to allow this to be used by userspace.
> > > 
> > > What is the intended meaning of this keycode? How does it differ from
> > > the driver sending BTN_LEFT press/release twice?
> > > > 
> > > > Lenovo support is using FN+N with Windows to collect needed details for
> > > > support cases. Add a keycode so that we'll be able to provide similar
> > > > support on Linux.
> > > 
> > > Is there a userspace consumer for this?
> > 
> > Funnily enough XKB has had a keysym for this for decades but it's not
> > hooked up anywhere due to the way it's pointer keys accessibility
> > feature was implemented. Theory is that most of userspace just needs
> > to patch the various pieces together for the new evdev code + keysym,
> > it's not really any different to handling a volume key (except this
> > one needs to be assignable).
> 
> What is the keysym? If we can make them relatable to each other that
> would be good. Or maybe we could find a matching usage from HID usage
> tables...

I was looking through the existing codes and I see:

#define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */

We also have KEY_VENDOR used in a few drivers/plafrom/x86, including
thinkkpad_acpi.c and I wonder if it would be suitable for this vendor
specific debug info collection application (which I honestly doubt will
materialize).

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
