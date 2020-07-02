Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F60211FED
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  2 Jul 2020 11:31:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jqvYz-0007fz-Cb; Thu, 02 Jul 2020 09:31:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jqvYx-0007fm-3c
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 Jul 2020 09:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sQCFiGzSC0dQIzc+FHc1PqcfHEnA/cl3jUVDZmdRB1g=; b=PZkDG8Y+WhBOcQdw1ESHRkt4GP
 /5WlyMfLyRq+OGriBS6g+kxChqw7PL7TgJdwzag6dHRgkFqRS5CoqaQiFB5nljDeM7lOUq3XZOvZd
 CtC7aqSJrhOpJxKc2rjtsFkBfZU2ioRn129/TCoevimBcGJgUQBNmw2ntoTLRgzGEi3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sQCFiGzSC0dQIzc+FHc1PqcfHEnA/cl3jUVDZmdRB1g=; b=PuIU8iBycCV7SIpQIJFWROggau
 jO2+mh9zddee4lM4/tSSKXCI2PIurZbLKG/EEuueykqtmz68xqjzietucYOXPa04igYig6JF05148
 7Sv7wA/23k+UnP9MUSImEEIUdp8+bf4N59iJDD8Y8/VIB0X6JoJs9rc2JqV9m22c+g5c=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jqvYw-007vPg-04
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 02 Jul 2020 09:31:23 +0000
Received: by mail-pl1-f193.google.com with SMTP id bf7so1768072plb.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 02 Jul 2020 02:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sQCFiGzSC0dQIzc+FHc1PqcfHEnA/cl3jUVDZmdRB1g=;
 b=C37eoVAss5f7k3Jv6M1iLAjeI0qjZql1L9XOz1cJU9NT4j+QdpYRAqo5uQ6Xa4HmaD
 4h99BFUHabpORXI0pNfdVpO/p4DR5w6RgW0AO3zzuRjY4/csAAqOjlnZ5uQ8b93fR1Q2
 pZgsuuZcBRreKuM37BSD9v5HCMhq8SPvdf18Ked0UwFkVaugq6ji2/7c301lfqXbMgTO
 zIeh3TZwtWfVHMurUj0AvYzbREUKmDjeFQgXeQrGQny0dwjY0xdtCzURvPlRfG8iPSIS
 UOCY8CkuNklRk5umzA7hxrh+EuM2MukAWKcNksgoH8oG1o35jUVpk8RNCgDpwHUFOtlf
 Wr/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sQCFiGzSC0dQIzc+FHc1PqcfHEnA/cl3jUVDZmdRB1g=;
 b=a72VRh0OlP9McPn5tzJFhBtnh11ycvZFEt85MM9vhtPyeS7RCxYzM5hBnAGvuvN2kE
 uWy2f7yVVzTDnJb88myABJI2UnLzgbJFY0wbKmcENgrhkHXyRsvDToQqXwTB6KjJrd1I
 0buXXTAf0MyhqwKSAjroQzRvAGC2xEiQcmkfxs9fUE54dOk62wqCfLVb+A1mzEpkQgrp
 Nh5lJ9OszeNCOTGmJCENDz6+gpVf6PF4LKAOVoieh0Jq3rsUbnQs4qlH/9OninqlVaEB
 jq/ut5uImRjteV6itwVtK7Ya8Iigeq39FPX8nGQnN05u1+TkRRyt5JuHxtilKOGhBD6R
 tNbg==
X-Gm-Message-State: AOAM530NDWR74KGPQ4yQocmQcKHYSLeX5FEC0hgqwPwOQpDwcy/jiZ/k
 t4leJ7kIohMrBEQvHOrnmb+Glj1/obUyY4lt0A0=
X-Google-Smtp-Source: ABdhPJwzDsePThPXr8Uly2OY7DxQ0JKn7Q0cvpe4wEjpbNZ2ZOHX85j9e962wmtLBEBC4Dq2HnM3RGnphjPRRYtcQr8=
X-Received: by 2002:a17:90b:1b52:: with SMTP id
 nv18mr27289148pjb.129.1593682276453; 
 Thu, 02 Jul 2020 02:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200702085520.16901-1-aaron.ma@canonical.com>
In-Reply-To: <20200702085520.16901-1-aaron.ma@canonical.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 2 Jul 2020 12:30:59 +0300
Message-ID: <CAHp75VeCHW=GMgyHRswsTrZ7b3TEnFh15F-5fyHcUsqXzoFS_g@mail.gmail.com>
To: Aaron Ma <aaron.ma@canonical.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jqvYw-007vPg-04
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: not
 loading brightness_init when _BCL invalid
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
Cc: mapengyu@gmail.com, Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Jul 2, 2020 at 11:55 AM Aaron Ma <aaron.ma@canonical.com> wrote:
>
> When _BCL invalid, disable thinkpad_acpi backlight brightness control.
>
> brightness_enable is already checked at the beginning,

> Always print notice when enabled brightness control.

Why?

...

> +       pr_notice("thinkpad_acpi native brightness control enabled\n");

'notice' level is quite high, why do we spam users with this?

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
