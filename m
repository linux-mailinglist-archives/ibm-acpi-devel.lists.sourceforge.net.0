Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E39A89E529
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  9 Apr 2024 23:47:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ruJJM-0003LE-Er;
	Tue, 09 Apr 2024 21:47:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1ruJJL-0003L7-5X
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Apr 2024 21:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+o+B5YhePemCqfLG1nDv/Zdx5bIr2DP7esNue6DPpZI=; b=UXAH4FUj5PPBu4tHoNyU0VlJtH
 ObA2FtjqnY6k6FADpfbZxV5VI7IiGRgsR3u90RCqxU5/LLeFJN1xpCh+aC32qn/PzJC1LsSb8oOy0
 ZtqWx1MVz2rEThr3ulT1/orOZRTaB+xM9sNZuPaRGyWeWoiU2HOw0tF1+E3wIjBJ5JxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+o+B5YhePemCqfLG1nDv/Zdx5bIr2DP7esNue6DPpZI=; b=P207mv5CRSCtrQWdEj75AqmiMe
 9g/s+8naRr/WZRAdc2jmwgbV70OSIYRlhbtdviK/vekN5cqs7Ji9EC8JHBclIcePF009VADCVGjde
 Affsstu2+E1sxZG+rgGsRTvtb4ul/IHhjbKHyYxKn1OQGUmCIjzN7JkPkKVRq5zUOXbE=;
Received: from mail-pf1-f179.google.com ([209.85.210.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ruJJH-0005m5-9i for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Apr 2024 21:47:23 +0000
Received: by mail-pf1-f179.google.com with SMTP id
 d2e1a72fcca58-6ed5109d924so1911119b3a.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 09 Apr 2024 14:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712699229; x=1713304029; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+o+B5YhePemCqfLG1nDv/Zdx5bIr2DP7esNue6DPpZI=;
 b=RobJ4wxIC13rRapjwbp6/wAq1HSD8R8YOKGU8tyPP6cPZig1oeW3pPQlze9UQ39LdS
 jXdKAnUIgrwruUFWTVgC3hwkYtPvTSH/A7CzThcy4H5T/PiQevusgD0REti2n9NIDBHf
 DaMBJlcUNCXXILdHGEbJBJiszynJTtXfnOI7M9BC+Ks2ZUwHvZtUqIZYfRF2PxVuGwH/
 yIVfut0XhdPrsoOV7GDsLHW45UGDbgTIXKZijmmdu1Yr0dIMpbbmlTEbog4XIbo+G7B1
 ubIxd1uIicsyAgeBeEz3/Jg6duHVeKY+YIWzXOOKajAi+crzVkJdZVpc/J+QOFqYJq6s
 lV1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712699229; x=1713304029;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+o+B5YhePemCqfLG1nDv/Zdx5bIr2DP7esNue6DPpZI=;
 b=Vup9tClGhmVTeqRKHkFMwW/PGShgBEelNdzgW5Kg7cqs8O0j0ibxTqHjFm584atQqM
 30rvTUuLzd6oo2H6XFr+SmZ1E+qLGAhz4Cvk26aHcuc+KfiaP3xOIbg8kz6kqV7npimj
 iz36WigE2KcVxuzRWWJMIV0kn5k0nCI9BsHxpK4EajmNi0pBWa5wAhLSpwcnQX6o1Lk0
 JS8f9x5llOkCMs6I34OWdUwtwkdjArSG+eFPKqdwOZ82toSnKiEENJUhi/qUk2Xscaj9
 xq2doL2Txlf9tJ6/YOkoyIQ/ckWt7Jvtg42sviNpHHIVurAxAkKOd8O/R5z1GMVX1VrD
 A8fA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXMRWL5SeysTk8Jr5ViFPe7dQgV5R8PHfLHSuulnl8kShBXH9Y2T8SUD+ATpd1EN/E9FOCRFbQRECGb54RBOgvXbmz3aLVCFmSuInwGTTYYz6EH+9c=
X-Gm-Message-State: AOJu0Yxy5KijEP3sk8KYHAX70cT0JfX3MHBUcpnWzFNQDK+wTc+1JXsB
 +5r/9rNXmzDBOlhiwFwAlwRg31OkJ+8bYEHoFowZ/ifOJaXgnAkm
X-Google-Smtp-Source: AGHT+IE0AXDZ7mxhBIKI2K2SwHTXzzxrPsmCVAkqpJSqBbHwVMwvEk7JTbahLXe3AbavTrD0Zc148Q==
X-Received: by 2002:a05:6a20:2591:b0:1a9:3287:9180 with SMTP id
 k17-20020a056a20259100b001a932879180mr1283441pzd.52.1712699228456; 
 Tue, 09 Apr 2024 14:47:08 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:6c8c:a143:d391:6ace])
 by smtp.gmail.com with ESMTPSA id
 x23-20020a17090a165700b0029b59bf77b4sm76638pje.42.2024.04.09.14.47.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Apr 2024 14:47:08 -0700 (PDT)
Date: Tue, 9 Apr 2024 14:47:05 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Peter Hutterer <peter.hutterer@redhat.com>
Message-ID: <ZhW3Wbn4YSGFBgfS@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 09, 2024 at 03:23:52PM +1000,
 Peter Hutterer wrote:
 > On 09/04/2024 09:31, Dmitry Torokhov wrote: > > Hi Mark, > > > > On Sun,
 Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote: > > > A [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.179 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ruJJH-0005m5-9i
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

On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
> On 09/04/2024 09:31, Dmitry Torokhov wrote:
> > Hi Mark,
> > 
> > On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
> > > Add support for new input events on Lenovo laptops that need exporting to
> > > user space.
> > > 
> > > Lenovo trackpoints are adding the ability to generate a doubletap event.
> > > Add a new keycode to allow this to be used by userspace.
> > 
> > What is the intended meaning of this keycode? How does it differ from
> > the driver sending BTN_LEFT press/release twice?
> > > 
> > > Lenovo support is using FN+N with Windows to collect needed details for
> > > support cases. Add a keycode so that we'll be able to provide similar
> > > support on Linux.
> > 
> > Is there a userspace consumer for this?
> 
> Funnily enough XKB has had a keysym for this for decades but it's not
> hooked up anywhere due to the way it's pointer keys accessibility
> feature was implemented. Theory is that most of userspace just needs
> to patch the various pieces together for the new evdev code + keysym,
> it's not really any different to handling a volume key (except this
> one needs to be assignable).

What is the keysym? If we can make them relatable to each other that
would be good. Or maybe we could find a matching usage from HID usage
tables...

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
