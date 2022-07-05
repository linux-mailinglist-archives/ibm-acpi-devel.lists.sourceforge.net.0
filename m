Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4015676B4
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  5 Jul 2022 20:41:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o8nTe-0003ht-R7; Tue, 05 Jul 2022 18:40:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rjwysocki@gmail.com>) id 1o8nTd-0003hi-3m
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 05 Jul 2022 18:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IqMD43+h/87sPcXJb6GKl/p0e47Kr5belhpvXQpn74s=; b=Y/ano68sud2fMkQ9PNQO19ZYKH
 sD0kI28SEmxsPNd4Z8svKCsRLOWRu/UBOHW4vyoknY49A4DVcC1HIBdgOe9F489XGRRoJR1mMS5Ka
 449fmguE4wpo2y9APpIPgZikjaqFAQmtuwMlEyXRJFJwkWaGbUSlK/L+4d3zSVymohsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IqMD43+h/87sPcXJb6GKl/p0e47Kr5belhpvXQpn74s=; b=WUgLiE9Uiza05bUB4R7irAk1PH
 kQKLU5WLEpDlf+4t3luTc4FTnm/fNCfa1OOdTNMDzRupkgZ2MjrwHD8rETlmMsndZG6u0ybAvM31L
 R28R2iX5KQJc5lup4I2qzIdAG8pYBjUcCwzDGlDjQE5Hn8D1/LQCK7mbBfbBmY055rGY=;
Received: from mail-yb1-f182.google.com ([209.85.219.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8nTb-0001Ua-6K
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 05 Jul 2022 18:40:47 +0000
Received: by mail-yb1-f182.google.com with SMTP id r3so23408372ybr.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 05 Jul 2022 11:40:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IqMD43+h/87sPcXJb6GKl/p0e47Kr5belhpvXQpn74s=;
 b=DeWnoOIBs6bL9A8ejfeO+brkApgsoJJ1JKpchuTwQkaMvWVsBDSLDIjx6z0OjhTD5+
 uCaO05Yqhp2WpKLB+ctBW9zM5OM19NzP6eMZF8Z2xW20HqA7dsKn0IiFq9zwdkyAgBf7
 jTHty+mTficKTo1bFNl4JifvfEXxZAg+ZddqaU0gmoJ8fZbS6lZfYTaD4hWKrZcrIkSn
 8SvM9ad3I1Vnm3RinrjLXRZsIxZ8CU+SlomlNwxuqXff/bJvp1n/vLRSrzEprSyPw4D5
 +eiaPgP/RZ0egm082DQqAccqvKe/cp1p6F/TtMDKT8g7ok98JOdTNK+1jVvzdYA4qDpr
 eqnQ==
X-Gm-Message-State: AJIora/MwHwFJx+NjwCnGR/2PRhkay4UG+9wZo1yaWlOoUm5vCQGD4tu
 RRjBRvkDfG+UeCw1z55QzrD2XMgZVRqQ+2fmmcE=
X-Google-Smtp-Source: AGRyM1tbU/Q+q1ShqafHYay3V0ImixKEkCcZMfKVWC5BCMMJBAokfuIlMUsuMGcKwepW0ljsXp1WT9XSsRibnwbpG2A=
X-Received: by 2002:a25:6b50:0:b0:64f:4b33:664 with SMTP id
 o16-20020a256b50000000b0064f4b330664mr41056762ybm.153.1657046441354; Tue, 05
 Jul 2022 11:40:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
 <Yr6KcPlC/3rYAtKE@lahna>
In-Reply-To: <Yr6KcPlC/3rYAtKE@lahna>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 5 Jul 2022 20:40:30 +0200
Message-ID: <CAJZ5v0ht6hfaBsifhr=M_htHh6uHohwgcab2dFR5hqq4rO+xFQ@mail.gmail.com>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jul 1,
 2022 at 7:47 AM Mika Westerberg <mika.westerberg@linux.intel.com>
 wrote: > > Hi Andy, > > On Fri, Jul 01, 2022 at 12:28:15AM +0300,
 Andy Shevchenko wrote: > > extern long acpi_is_video_ [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.182 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1o8nTb-0001Ua-6K
Subject: Re: [ibm-acpi-devel] [PATCH v1 1/5] ACPI: utils: Introduce
 acpi_match_video_device_handle() helper
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
Cc: Mark Gross <markgross@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Linux PCI <linux-pci@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Wolfram Sang <wsa@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 linux-i2c <linux-i2c@vger.kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Jul 1, 2022 at 7:47 AM Mika Westerberg
<mika.westerberg@linux.intel.com> wrote:
>
> Hi Andy,
>
> On Fri, Jul 01, 2022 at 12:28:15AM +0300, Andy Shevchenko wrote:
> >  extern long acpi_is_video_device(acpi_handle handle);
> > +extern bool acpi_match_video_device_handle(acpi_handle handle);
>
> I think we can do slightly better here. The only caller of
> acpi_is_video_device() is in drivers/acpi/video_detect.c so we can move
> it there and make it static (is_video_device()).
>
> Then we can name this one acpi_is_video_device() instead and in addition
> make it take struct acpi_device as parameter instead of acpi_handle (I
> think we should not use acpi_handles in drivers if possible).

Agreed.


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
