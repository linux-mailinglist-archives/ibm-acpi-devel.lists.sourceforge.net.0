Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 401962351E6
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  1 Aug 2020 13:46:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k1py1-0006f8-Pz; Sat, 01 Aug 2020 11:46:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1k1py0-0006f1-Gb
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 01 Aug 2020 11:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JqwMdEfXUJjeMpYuVIJT0vSfY1n0L5nS06aKjQVfgw8=; b=NIB18EP9h88E4xCYBJ5KFwYzZy
 ba5UR9dxgAtpXPWqAg9l4efFxRwti2bXdwxzcOZyiX+TBQm+PTfhbbR1cbYsOo8/bsFQURow60s5n
 8W2O7GYRghxIcCkxSGrwiPdyI0sbCYZXLKqHH893BvbNTRq3koSlQ7C3yVzliG4zILTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JqwMdEfXUJjeMpYuVIJT0vSfY1n0L5nS06aKjQVfgw8=; b=S9UBLZyxznlB47uwWeOfskIqCM
 LIEbmjGAKcR4ytRlLD0I0QjmF0+aA1pFIdutp5F2JNpiN/S2FS11dJwv3VsZF1P9VcSqHUrhrIJLd
 Z045NfnyAcudvdD2HPO4DsmXVdbNsLW2twgh1mcoT8td/T/Ains9M/bjw2PPx2ptjKgA=;
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k1pxz-0063aL-C9
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 01 Aug 2020 11:46:20 +0000
Received: by mail-pj1-f65.google.com with SMTP id mt12so8561758pjb.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 01 Aug 2020 04:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JqwMdEfXUJjeMpYuVIJT0vSfY1n0L5nS06aKjQVfgw8=;
 b=gkYuhgecj9jw06Z7ftjDxYkoeGW/yyUGv1Z6ZEJRNlImdR2SvO8/Rn7Rn8TmmjD+nG
 xJnUwjJfEEZTK6AGkyWARchEk6fSIwSggPnxrDTDLO6cJ3gK5gEWc+VeXmXWmg/BtNP9
 Za8+1SiDav6/QumX5bX5rCXc2FswTBazPsToR+ndGB6MiCyk8txIyLnrMlr0xNhDIYRl
 8UGJhp/7YdXJteEGRge8k3CSq+n/NWveeiokwYtNqupim092TDkfObb71ehXs1NckJ18
 8GC+PcjCUq+myur3bv4NEIfBMEXkP1VyqunHiOB3iTDQ7kux4FsDXeTmnJLvYZsic26q
 uZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JqwMdEfXUJjeMpYuVIJT0vSfY1n0L5nS06aKjQVfgw8=;
 b=NGGFDrNoFa7aBfPzhTJTyA3hZx5EshBhrdTGftj3gl5yotv4C/GtQOa9JwyEUpPJ10
 eQg3PRt1o9I3jcYFp9Rr5WojpN7bWw7GCzvdaFpGgLc5b3Q/Gv3Ys4TXSw8cz7iZwwrn
 QlvV1ikPMt7N7ZLNMH7t86SZBP4j+MBpsxXCU8Sg1OPYwScTkhYN0cg8tmWC9HfI2oNH
 vv3hv/r5qcFAegf29onMwMlD5caSNbrXPZd0afl81GINsbXv675qNqSM9lJ8T/rEaKMS
 34AYWigaOzwECtK5KWvTWw8jHPY4P2TdhlO+TvSub/SxGpMuX5vAeI/rAjdEXvGm6699
 j0Kw==
X-Gm-Message-State: AOAM531WpD1vTGBBp83M9rUdzL+AyP3ZyE5KKObDUWUBT+y/E64mPz0A
 j97kDUS3Dm60xgVyWlf7NdsyMjokR84/bP470pI=
X-Google-Smtp-Source: ABdhPJxZPnbnEuhSbOVm0PHNhVFTbdDVwSsxfaBBP5Foa802NDOKsHBcXYeXjdoTLAM8Lgoo6by+i9c7SoEH2XHbUeE=
X-Received: by 2002:a17:90a:a393:: with SMTP id
 x19mr8564857pjp.228.1596282373694; 
 Sat, 01 Aug 2020 04:46:13 -0700 (PDT)
MIME-Version: 1.0
References: <202008011649.b8CEYWIz%lkp@intel.com>
 <20200801083654.GA31368@144836a6079b>
In-Reply-To: <20200801083654.GA31368@144836a6079b>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 1 Aug 2020 14:45:57 +0300
Message-ID: <CAHp75VcCa4whJ7ry9uU+14suLbGPvKgRFJku3dC+dPVNzc0d5Q@mail.gmail.com>
To: kernel test robot <lkp@intel.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k1pxz-0063aL-C9
Subject: Re: [ibm-acpi-devel] [RFC PATCH linux-next] platform/x86:
 thinkpad_acpi: dev_attr_charge_start_threshold can be static
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
Cc: kbuild-all@lists.01.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sat, Aug 1, 2020 at 11:38 AM kernel test robot <lkp@intel.com> wrote:

Thanks and sorry folks, Hulk robot was faster, and TBH their patch
looks much better (proper commit message applied). Perhaps something
LKP should work on?

> Fixes: e33929537b76 ("platform/x86: thinkpad_acpi: use standard charge control attribute names")
> Signed-off-by: kernel test robot <lkp@intel.com>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
