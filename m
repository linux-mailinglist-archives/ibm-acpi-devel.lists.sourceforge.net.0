Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BC327EA63
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 30 Sep 2020 15:56:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kNcaM-0005Wo-0l; Wed, 30 Sep 2020 13:55:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1kNcaK-0005We-O8
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 30 Sep 2020 13:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lkmWkLx+50LSvUth/jRPI7AGPelcJcdIBHooAnh4UZ8=; b=OChF9/b1dNnDxRECknZxZsuv6h
 0leGbXXA5dgQfLYaPD/s13ouH4a+s2WcqpEoXmql4H/cbEN8tOplFqpkU092yZiwzVhMSPeJbZTlq
 Y70QSuDOt7b65yZemUpYAa4OTM/rMWMdDR9KhozaMCarPQxxg+eIChPhOCQO2ZZPvUvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lkmWkLx+50LSvUth/jRPI7AGPelcJcdIBHooAnh4UZ8=; b=cDcGSnyo3nTh6PA1T9HezQzCad
 JEjMYvVntyX64DG/mBVVd08Rhj+sPWVazUCALjRFQOeo9TexJel0/nDU7Cs9K0YJwPXbw+7j90nis
 C7tZzOCGgYMIc9guWNI949jRc1skinORFReoXZalvfZb8QKyerkzmV4Y1QVf7towIesk=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kNcaF-00ERLA-En
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 30 Sep 2020 13:55:56 +0000
Received: by mail-pl1-f195.google.com with SMTP id t13so1075258plb.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 30 Sep 2020 06:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lkmWkLx+50LSvUth/jRPI7AGPelcJcdIBHooAnh4UZ8=;
 b=XYVU4+CLhfLRo8EjLEtD42r80dI9L6KQa2htg/QTFXcQh+W2Rij3VlUpT7HFoCroz2
 AUZgEbVhrHpl84EKJpQ4bK/opkla+EdRUaw/Qd2gDzOeSsnxvZ66gbXvwuz5pRqwfsbU
 f1pso8uznGXGBZiL4OQa+UOpwUI6dAV3cZLDHk9EF0np1/myYV2BJKuVjbNLdFEK97EP
 jAAUiFAcdpA3JVepu7w13Qv35lt62etUiymR6VCIgGvEORvQJT2vbWVJwu1eqcDWrmMW
 QSxDVbdcWPf30epnB9nAaMfHySTv/1KHH6isXWB6dYT2dsJ2eaLVhpQdgulC6e3EeiN3
 AF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lkmWkLx+50LSvUth/jRPI7AGPelcJcdIBHooAnh4UZ8=;
 b=HEqOsH9YeevN52mVgfiXsV91vuFU4dm0R06p21KuDmncSqFXn5ce1eidFrtsNRyI1a
 T2JvBgNUcWvgQqaMThKol3mT4uQxQvcCzdjRgRm7mkp7eelivSffyhpSqfigj6juL2du
 7GgiVplvs0ZRnm3ciHEKVflxPb5uNXmbC6DBIjdQgg+ns/Vb7PaH0AvyT3NL25/fdZJh
 F54faDsdE03SxzxKZEdUD632Ghap0YOmKX8aHx4t8VSVccms7aA+fQ0bF8n5ZSGSO+LJ
 ohE9o1ctrBsfji9rcOpqM47vQk2SnsB9ZpJd34AdpVHK43GxgYac+26o7BZQ2TPG+LFd
 y69Q==
X-Gm-Message-State: AOAM5312yU9mCWc9h8PcIP08nQxbLy/TtK36xlVfetkCQUzzH9axrTRz
 nHUVCwXkgYJkkCMBK/aQ+WQghgD0TauloGsvuGk=
X-Google-Smtp-Source: ABdhPJxlkomiM9Fv0b2uYyfqXoAycR7ivW5AUzx/IzG/UXy64NwjVjsxIB3HJCY2IgFU9+TrWLFEdhbsctZWJnXvbC0=
X-Received: by 2002:a17:90a:fd98:: with SMTP id
 cx24mr2577392pjb.181.1601474145833; 
 Wed, 30 Sep 2020 06:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200929082025.51446-1-aaron.ma@canonical.com>
In-Reply-To: <20200929082025.51446-1-aaron.ma@canonical.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 30 Sep 2020 16:55:27 +0300
Message-ID: <CAHp75Vf2eCDHuqdtrCXqg7FNiDoSg5BDmtXLJ7AMuF8He9qy=w@mail.gmail.com>
To: Aaron Ma <aaron.ma@canonical.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kNcaF-00ERLA-En
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi:
 re-initialize acpi buffer size when reuse
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

On Tue, Sep 29, 2020 at 11:20 AM Aaron Ma <aaron.ma@canonical.com> wrote:
>
> Evaluating acpi _BCL could be failed, then acpi buffer size will be set

'could be failed' -> 'could fail'

> to 0. When reuse this acpi buffer, AE_BUFFER_OVERFLOW will be triggered.
>
> Re-initialize buffer size will make acpi evaluate successfully.

acpi -> ACPI in all cases above.

Fixes tag, please?

> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>

Code is okay.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
