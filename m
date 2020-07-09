Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B2721A714
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  9 Jul 2020 20:31:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jtbKP-0004Oq-Rs; Thu, 09 Jul 2020 18:31:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jtbKO-0004Oh-Hh
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 09 Jul 2020 18:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QyT05EdzwrOL/sU0vHjmGPMzspiZL3Ee2X4vPjVPFEw=; b=SHDX5niYTVMOsiTraK5n2pg855
 wIFOE7DhVWslXpqhkknPPZX16V0ASTx5cmV7P/7PKmOtfB4tNMJ7uBD141IVHgICfB1GraGv7sEi/
 GAJxPUkjw9OhrAwRzbQX7/jR0ksDFYArbfvF6Y0TI8l48yatt9VW/4ilqMMk4RWCah+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QyT05EdzwrOL/sU0vHjmGPMzspiZL3Ee2X4vPjVPFEw=; b=X92tQqb+TSPPXe8Dottt5dElpk
 oFQZrG+Uvznlx0TqT7m1D6AueqywUhseAd9XdHLIEXD3mHdK937hTTUVfR4ajlGnb4g/SzYy+wsUl
 vYkiZlX9tI6uOPt6IaEtKczWYDh8nnGtjMlMGdG2bsmqEsr1AbXrbjhthew7++cIcBCI=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jtbKM-00CQSs-Mf
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 09 Jul 2020 18:31:24 +0000
Received: by mail-pg1-f194.google.com with SMTP id e18so1335653pgn.7
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 09 Jul 2020 11:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QyT05EdzwrOL/sU0vHjmGPMzspiZL3Ee2X4vPjVPFEw=;
 b=SQr3hTzyNvD/L2AeideltLLxoMJTWgvJMzMB8Bnk64CeAZcKoxAF2BbChynPvjngBv
 urRRrkUfyV8r43DUohS5oboZvk47ZFEH9dWpJvcbyjtSIwtGlgva9NFKXddNPcFAQILa
 DfsxCK2qw5gWEL0ZGIzMTMOBZCKGvi/4elf1VIBy5W9yb1DPYe2lwuXefVKYdg4P83KN
 ey3a3RUevfS/8IYTIlfulp4Mc2pS7kJSTZVIRftcQocTQDQYY/l3HihQ0+jc5HRJ3FQR
 wAAZ+E+Ylh6I+y9adl8oyMubc+lYyNjZ20uM/lxKfUbL2qwJVkpf+FmXDwxmQqIXyeyE
 7Jzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QyT05EdzwrOL/sU0vHjmGPMzspiZL3Ee2X4vPjVPFEw=;
 b=AQ2RVcDDsh7+fpnXkCcdTZYda67ruD+9xlSjnbu7Sp5i2rMbiQlQv2FhiJ8wduRgHs
 E98d52MSHGhtFnYt78Q1X6QXmE2a0syG/Wx8kGNOrSNzQklFY1o6E5Kdig/CPPblkUT3
 aBENHL/zSV64cvx2Fv5CQmrs5vevV3UeCBiR0P/UpdOe4Xi0/QONJygP3c+S0zCtWFUP
 KkLLMPrF4haBinRQCRv7HHKqmR5Ez6d6jLBjs2DF2y/TfaZ3C7r3KYiubTg/ciib8BZ3
 w7w7Rhh4vuDZEBK5JN972A7ZyKkv8bzlAaMp/WCLr4h7B83kF67LVpboTZk7daOSCC9K
 gH4A==
X-Gm-Message-State: AOAM531vscZULyiWMPR1bNwN8W/7A6lfbLBk5sUTRn0nmTjPCMe2/QNC
 ZBPTwDVkozkoFRj/aTziZHP2xZ2uWzWPbIDnh+4=
X-Google-Smtp-Source: ABdhPJwHJxAcuWOM1QnoWaFYlm+elJ5b005nJwj8UobnY1pE535e7oJe3KEIprFf29q+UPSbq9KwbdN5FftXLaZUNng=
X-Received: by 2002:a63:924b:: with SMTP id s11mr53396482pgn.74.1594319477184; 
 Thu, 09 Jul 2020 11:31:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200702085520.16901-1-aaron.ma@canonical.com>
 <20200702110740.19880-1-aaron.ma@canonical.com>
In-Reply-To: <20200702110740.19880-1-aaron.ma@canonical.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 9 Jul 2020 21:31:00 +0300
Message-ID: <CAHp75VdZPLzXqO7A8KXq3dT-_TymysCrmZcBc8SAtfCKfBQy5A@mail.gmail.com>
To: Aaron Ma <aaron.ma@canonical.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtbKM-00CQSs-Mf
Subject: Re: [ibm-acpi-devel] [v2][PATCH] platform/x86: thinkpad_acpi: not
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

On Thu, Jul 2, 2020 at 2:07 PM Aaron Ma <aaron.ma@canonical.com> wrote:
>
> When _BCL invalid, disable thinkpad_acpi backlight brightness control.
>
> brightness_enable is already checked at the beginning.
> Most new thinkpads are using GPU driver to control brightness now,
> print notice when enabled brightness control even when brightness_enable = 1.


> +       } else if (!tp_features.bright_acpimode) {
> +               pr_notice("thinkpad_acpi backlight interface not available\n");
> +               return 1;
>         }
>
> +       pr_notice("thinkpad_acpi native brightness control enabled\n");

In both cases don't you see the duplication of module name in the messages?

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
