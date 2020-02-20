Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B9D165C0F
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 20 Feb 2020 11:43:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1j4jIV-0004Et-C0; Thu, 20 Feb 2020 10:43:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1j4jIU-0004EZ-1d
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 20 Feb 2020 10:43:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kxfpH7hofI2dT1EmNwZZMlMZMqhtSme6d7SbXx3CYq0=; b=CtbZX1Q/GSS2BlMIJ3p49unDBL
 qhhzbIGr/akQ/LKn6BgQdi8eM8rBG68x8T0UdWBlLy8oMQc0ko1QbEZafH5hEyHmWzYbN/yzHE6lh
 969IW3Y7d2vRMVwy5mcP+I54nVZNfJNH9xD7Nkq23BYpzvo5XW+IngIKZ/dQucNpLFMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kxfpH7hofI2dT1EmNwZZMlMZMqhtSme6d7SbXx3CYq0=; b=jOTFnSTq2MijGrt5R/NP7di733
 YMez+Rx1VkE8PMJ8oPFbXy5gOlJATMJf0DJmtuH4fKPGnW/LbG25chkqCRCw1oVML5APOQOFCu78v
 zpsTZdUMM+0xY+qxTgAXoKeBoW9epA/SqC9nxllfErkveZvA4fI7uOrqIFgfHN5BkpRg=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j4jIQ-008RsP-Uy
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 20 Feb 2020 10:43:09 +0000
Received: by mail-pg1-f195.google.com with SMTP id y30so1728584pga.13
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 20 Feb 2020 02:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kxfpH7hofI2dT1EmNwZZMlMZMqhtSme6d7SbXx3CYq0=;
 b=Np8DJaVuBXgINq398uI6JEI2yyXyGAh82e7JU+kt0/8soFTOF7YQwPC5PE0wGnizng
 ue5XDE3A+y5lsbRnJzClaOJx6v6ZFg1wgwpYORYjNPerLUsWeb29Yh35FoYYmmI6JAj1
 ZT2DAkdxv3Tiwb4WTCwqVqCinjAbA81UN604IN7J28r4b538GGiRZaoVmlD2tYfIvJmU
 /rHaEx693IcAHpxrikt9vHfdi//+DyrLKz4trG/Dd/Mb2gekSeNATFmbId4UH+odFZaL
 AJ4PR9y1fLZytpGX/rKF5f5KDyk52m9bfbwHZFakl1bsfjT0OqJxfx8EhXy6WM53xPBQ
 QC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kxfpH7hofI2dT1EmNwZZMlMZMqhtSme6d7SbXx3CYq0=;
 b=sKA4GP/aLRxw94eaKVHk5FccWae8YHOORHrbygL6JE95i3NIC7w+Jar8Cap3nkwZF7
 uUa81OW3YzlaNPtWI2fC1RlSRSxbtfItjDndfYbqSU3Rj8Xsx2XbLTjoUR77BCcl1x3g
 STVK8pp26YV45s8blf5orcK0Uip8YFK+xbZhlLSCZRtg+1jHBjj2ReKrklNWkSPyLwrF
 BYan+Zt+TSXwh8zoscMfSJX2c0XmjNKllf2NvYsgvwd8UtgZWeh7onWeoetA9JEcgCCw
 HKIj3JjndHuJ/kSmT3AOG5CjNMkEkckt2sQhS/dv04xOjbc7ULnRXytswRDUor4tcX+v
 HzLw==
X-Gm-Message-State: APjAAAWLSKS/kMRKhm8VgTn4YnSHacA9RZqdAXwyrse860kzD/7nk03L
 U/LADHPEIBi5yLJf64Q/ETmAo9VwUvoo5UQ/cW/QHAIJflM2Hw==
X-Google-Smtp-Source: APXvYqyHQqwt0fFFU50KayafdANVX58ZyOixQ8mFOe6NZ0nt1CDX7R20BmOadWkafwXoQFVKDWu+YMxD5wBWkSmoyOQ=
X-Received: by 2002:a62:1a09:: with SMTP id a9mr31501241pfa.64.1582195381200; 
 Thu, 20 Feb 2020 02:43:01 -0800 (PST)
MIME-Version: 1.0
References: <20200220074637.7578-1-njoshi1@lenovo.com>
In-Reply-To: <20200220074637.7578-1-njoshi1@lenovo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 20 Feb 2020 12:42:53 +0200
Message-ID: <CAHp75VcJmEOu1-b7F2UAsv=Gujb=pPLzjz2ye9t4=Q68+ors-w@mail.gmail.com>
To: Nitin Joshi <nitjoshi@gmail.com>, Mat King <mathewk@google.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Daniel Thompson <daniel.thompson@linaro.org>, 
 Jingoo Han <jingoohan1@gmail.com>, Rajat Jain <rajatja@google.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1j4jIQ-008RsP-Uy
Subject: Re: [ibm-acpi-devel] [PATCH] thinkpad_acpi: Add sysfs entry for
 lcdshadow feature
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
Cc: Nitin Joshi <njoshi1@lenovo.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Andy Shevchenko <andy@infradead.org>, Darren Hart <dvhart@infradead.org>,
 mpearson@lenovo.com, Benjamin Berg <bberg@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Feb 20, 2020 at 9:48 AM Nitin Joshi <nitjoshi@gmail.com> wrote:
>
>   This feature is supported on some Thinkpad products like T490s, Thinkpad
>   X1 yoga 4th Gen etc . The lcdshadow feature can be enabled and disabled
>   when user press "Fn" + "D" key. Currently, no user feedback is given for
>   this action. Adding as sysfs entry allows userspace to show an On Screen
>   Display whenever the setting changes.
>
>   Summary of changes is mentioned below :
>
>  - Added TP_HKEY_EV_LCDSHADOW_CHANGED for consistency inside the driver
>  - Added unmapped LCDSHADOW to keymap
>  - Added lcdshadow_get function to read value using ACPI
>  - Added lcdshadow_refresh function to re-read value and send notification
>  - Added sysfs group creation to tpaci_lcdshadow_init
>  - Added lcdshadow_exit to remove sysfs group again
>  - Implemented lcdshadow_enable_show/lcdshadow_enable_store
>  - Added handler to tpacpi_driver_event to update refresh lcdshadow
>  - Explicitly call tpacpi_driver_event for extended keyset

Adding custom PrivacyGuard support to this driver was my mistake,
There is a discussion [1] how to do this in generic way to cover other
possible users.
I Cc this to people from that discussion.

[1]: https://lore.kernel.org/dri-devel/CAL_quvRknSSVvXN3q_Se0hrziw2oTNS3ENNoeHYhvciCRq9Yww@mail.gmail.com/


--
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
