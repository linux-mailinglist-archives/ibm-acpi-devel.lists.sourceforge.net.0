Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA6929C7A
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 24 May 2019 18:46:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hUDKc-0005Wq-Ow; Fri, 24 May 2019 16:46:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1hUDKb-0005Wf-1P
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 24 May 2019 16:46:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YILCn2HdjzxtD2taeZMo1HQhQd4PqPnumSn7HIw29Y0=; b=djoqE9uj5yy91j4bnwEnWpsS6k
 eYNuLeJ25C0aLIlA+1LFGzjQsnuuVo1zu5nylO6lbTNK51BYNYu54C58P2NGy/UeLTzUFUqYKbb+d
 AffIhaqRPWWfZXySmUOvHBoky5ugC/KUCVAf9ruVUbbJQHw2vSORYooxDOQ+0h2K2T3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YILCn2HdjzxtD2taeZMo1HQhQd4PqPnumSn7HIw29Y0=; b=JYOx6jZA3qsFHveFSMIF2yN9kL
 GeJ4fjetZKue9Wda6eodlIeWPx0dYBmbHpgUTjtEoqo8y6coL35OjKp7chuqEkQBgaAsmSmRpbUCA
 k4KZkh0szqOuf1k7xHMxSqL+1sgz5RgM75kvUjMwXyeb9g/v2rXmaIh0/FqODFZqV8eg=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hUDKZ-0073nM-Lb
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 24 May 2019 16:46:08 +0000
Received: by mail-pf1-f195.google.com with SMTP id v80so5662642pfa.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 24 May 2019 09:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YILCn2HdjzxtD2taeZMo1HQhQd4PqPnumSn7HIw29Y0=;
 b=RTC7kcs8MM1QtGIToUSx96fhrxXnUcW1eVWSTtiGg1Gg0LBt4UL3qVL62FUSNuU4XN
 jLhA3RVQGZMhxOPDww+O2OpBNZ9hOAz0ToycQeQ5CeOeF7/9TkD1bgP0tqn7API6Gc1u
 AVMwl31cZNeMkaKF7GWzkCJmjPVfhZIGxX2KJGKhtlAoUC3PEFBFVWIlR6h4bWkOx63S
 y87OXYrXDkV5/o1KpBS6Bmfnc2eVr6K+jwU93zDf5GRJSNGXVrqzZxiqQueznw3UMYuh
 mjo62kbPkxjFG+wQKMbH+eOBQSkU9Sj73adZT8K3uh1w+OY/fX+FMNKku35rZus98Ob1
 m6ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YILCn2HdjzxtD2taeZMo1HQhQd4PqPnumSn7HIw29Y0=;
 b=O5lo89qT9YntWNzt25tcy99eneJPTPGjkFnLCnJaE+9sAFXiWoMY2aPrzYLIgi6kuP
 E4JSz17UdPkQELehuVMN3pfpWrNvNryrV8QxJyE3V9+aFREO/Mfycn72DbaTYbdzJD2P
 PU2lnCFfWgOQlQ9yTwZtUkHsRdYJ3F3rDnE5t0dsGeglRLx5IquwA0Jc8IT7eHo5yjyZ
 BVSRMDhmk383f8JhicjXO7WOsu5qyJcR8NhiRMHKItMZ6V1lyy8/95Z8tDiAbWhguAGO
 xsxf+19+TxGF/mpbNYIBSMxtOAc/walBgyrreuZQM3YZAvwMqMLIw9SR+UK1180vQYl7
 sovg==
X-Gm-Message-State: APjAAAUkzFhPK+mlIiuS9O4ewRzJxHNUIo7xhY1WmljS39i2HINgiYuY
 EBwXYw6keEfdqb5PHMpQq9ndGqAJxPWW/GrUzB7Kv+iWII50Pw==
X-Google-Smtp-Source: APXvYqwY8yvbbZbdFdxeXElXBi9Mys1k5CfYAXpx4CTluMSRje1UOHttaPu0RGeFgJKIGW3RiKEbsITT2L/2QGFhk44=
X-Received: by 2002:a17:90a:80c1:: with SMTP id
 k1mr10570201pjw.30.1558716361826; 
 Fri, 24 May 2019 09:46:01 -0700 (PDT)
MIME-Version: 1.0
References: <E1hSOxT-00005q-An@tuxpaddy.alexanderweb.homeip.net>
 <3756fda2-7270-e3b2-fac8-3c0c0be633fa@alexanderweb.de>
In-Reply-To: <3756fda2-7270-e3b2-fac8-3c0c0be633fa@alexanderweb.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 24 May 2019 19:45:51 +0300
Message-ID: <CAHp75VfaDqCe7R2ZWTXs4j4i5v+B56Od0zVLANtMJd8-JgyUPw@mail.gmail.com>
To: Alexander Schremmer <alex@alexanderweb.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alexanderweb.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hUDKZ-0073nM-Lb
Subject: Re: [ibm-acpi-devel] [PATCH] Add Lenovo PrivacyGuard feature found
 in T480s, T490, T490s
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
Cc: Darren Hart <dvhart@infradead.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Andy Shevchenko <andy@infradead.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, May 21, 2019 at 3:56 PM Alexander Schremmer
<alex@alexanderweb.de> wrote:
> I wonder whether you have received my kernel patch, referenced below. It
> might have been caught by the spam filter.

Yes, you may always consult with patchwork [1]. If it's they, it won't be lost.

[1]: https://patchwork.kernel.org/project/platform-driver-x86/list/

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
