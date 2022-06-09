Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C108B545164
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  9 Jun 2022 17:57:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nzKWe-0003PQ-P2; Thu, 09 Jun 2022 15:56:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rjwysocki@gmail.com>) id 1nzKWd-0003PK-1l
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 09 Jun 2022 15:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mvtAx+cq822U1n+fiU6/l7+rvDRHb6xJ+jG+fs2wJOc=; b=I73FrJsj4qkhci4gvjXYMdSZnl
 FnW4ql9ch1A8xcQr+16RX5TLoxe9Qlz4p15GzFPJaEPNdoixKFF6UWvyojNMIDFlCFO25Ufs2DJqI
 AJm0hSiR4Q0rCkiOpL5FQv8Y+t37l7JN7CTu2QPejzKSgTku/KAF3b3a74TjyOfFzAyM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mvtAx+cq822U1n+fiU6/l7+rvDRHb6xJ+jG+fs2wJOc=; b=FYbUU7Yy4Itx5wBZae0DIAqaHn
 FKOZzcqrotCYJ3hX1ybVRu9I4IrN6nndBp/Qm1caJOQA72KNXIaMtYF+wRjSs99H6o4NLrmoYuG7i
 GJzyk0z2FjTsj4xHcte10z7c4xEbY+aL0YoEuyOaJtxrIzOQkVEST2Askfvm1eA+inIA=;
Received: from mail-yb1-f169.google.com ([209.85.219.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzKWX-0000M0-5L
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 09 Jun 2022 15:56:47 +0000
Received: by mail-yb1-f169.google.com with SMTP id k2so3121729ybj.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 09 Jun 2022 08:56:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mvtAx+cq822U1n+fiU6/l7+rvDRHb6xJ+jG+fs2wJOc=;
 b=2+Ta+Wly9bsPE0fh5Co167DJ5d8xzU+0fHvVDxDsJO3gFMnR19mAEdVwd7W7xl/TqX
 6FN8YMyxK1Ay7OV0p6ZfumSjuOY7tN14RmCXxWvZRnOl6fqoR5KlCNgSoZxMf6bfQ303
 4K9Oqkxtf3N/+DW8n6HFRPL4VKpDwVQK+wNA2AINAF8E7dnlYthVaaSOoQakrljlBMZf
 sWJ6+06r0UosOZpVnWP5cO4R+etucc4BGttNpveOgMA8eVlrp+AurPok/lx1NboaeO8a
 A7/9aV8FfjTCRnWLxEooc9Xe9YSJc467D673OeTdXy6s9hcDh0jdXu48I/zNXlaoU7lE
 gouw==
X-Gm-Message-State: AOAM5334qcbmCqpgjTzCyaPMHE2MumuxBz/h5xIFgXVrMDpdEQyVVH1G
 Vgol1fLREtwzBa2R9E3PrAgM3w3dSU1A7E9NmWM=
X-Google-Smtp-Source: ABdhPJzd8/eT8mnbCY0ZFPYru4ILdn+tBvskGH0ryfRL7NGkvVJrG8nch90H84mRjyalwCUQJzVfJGZ3hzTNsR+Z/Nc=
X-Received: by 2002:a25:84ca:0:b0:65c:b5a4:3d0a with SMTP id
 x10-20020a2584ca000000b0065cb5a43d0amr40226725ybm.137.1654790196789; Thu, 09
 Jun 2022 08:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <1843211.tdWV9SEqCh@kreacher> <44750652.fMDQidcC6G@kreacher>
 <YqIWRnwyqXZppuxN@smile.fi.intel.com>
In-Reply-To: <YqIWRnwyqXZppuxN@smile.fi.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 9 Jun 2022 17:56:25 +0200
Message-ID: <CAJZ5v0iDkvg0bK6ywfZCoBfam3hw1Qs3UarJ4MaKLK0rg++cag@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 9,
 2022 at 5:49 PM Andy Shevchenko <andriy.shevchenko@linux.intel.com>
 wrote: > > On Thu, Jun 09, 2022 at 04:09:45PM +0200, Rafael J. Wysocki wrote:
 > > From: Rafael J. Wysocki <rafael.j.w [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.169 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nzKWX-0000M0-5L
Subject: Re: [ibm-acpi-devel] [PATCH v1 12/16] platform/x86/thinkpad_acpi:
 Use acpi_dev_for_each_child()
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
Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Hans de Goede <hdegoede@redhat.com>, Linux PM <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Mark Gross <markgross@kernel.org>, Linux ACPI <linux-acpi@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Jun 9, 2022 at 5:49 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Jun 09, 2022 at 04:09:45PM +0200, Rafael J. Wysocki wrote:
> > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >
> > Instead of walking the list of children of an ACPI device directly,
> > use acpi_dev_for_each_child() to carry out an action for all of
> > the given ACPI device's children.
>
> ...
>
> > +     rc = acpi_dev_for_each_child(device, tpacpi_evaluate_bcl, NULL);
> > +     if (rc > 0)
> > +             return rc;
> >
> > +     return 0;
>
> It can be simply 'return acpi_dev_for_each_child();', no?

It can.

> AFAICS the caller is prepared for negative returns.

It will not return negative though unless the ACPI tables are horribly broken.


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
