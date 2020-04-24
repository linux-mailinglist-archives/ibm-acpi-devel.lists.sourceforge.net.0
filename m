Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B401A1B72CB
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 24 Apr 2020 13:12:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jRwFe-0007IC-Hr; Fri, 24 Apr 2020 11:12:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jRwFd-0007I5-1q
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 24 Apr 2020 11:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tgwy/aInUxShEijCyGCLJTya0cIe/jECHsCJDcokQcg=; b=Xb/a8GJj6rnQCyq5CzGV7e3NYp
 GpcsxfK8OxYtP8znqYASlXMRqUNcvxWnNsRVQeLQ7/hYpM12pZVa46+ypcOkQn1AO8unrAgrTx+xd
 prpGOS/joAX46TeI1KzOq4kbCzN1KMQhaHid5AQtTiW5GB9nlMg3ZV9+zUS/jpCnMYCo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tgwy/aInUxShEijCyGCLJTya0cIe/jECHsCJDcokQcg=; b=fiVsuCC+aWZB/m7TrVKq2624nz
 FOqgreRFZA7b2nDpOG8Vo0KS54QLZt6KYfXHGZPERL0ousSEMXxv/KDJK9h4Pj7bWfAwJsUIi4yzQ
 ZGy4gk9OFCSMfre92ypBXEyEM+OVTTXqOGN5/lJG+Q6bzG+jAu93GCpWjtYZzEeedY58=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jRwFY-008phH-6E
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 24 Apr 2020 11:12:09 +0000
Received: by mail-pl1-f193.google.com with SMTP id k18so3618752pll.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 24 Apr 2020 04:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tgwy/aInUxShEijCyGCLJTya0cIe/jECHsCJDcokQcg=;
 b=DZOzDVK1fbNC098qDg4nQCc6AAxOj2SV6NCUFhs7tYKtUnqdUQV5oSq/ZJ5uXDODhg
 FveDQE5RkVx1jwGwFpZXAjMv1+XBaRqiK2QtuEEdwNOyY2XrDzJheiYXFj6GRciSbx5j
 SAJMxpILWxYZQa+vHZPxK+wK7wUsWcqcIGVhuOG6J1R2b4VlfX5tR0eaY7/lfSkycpSp
 aND32n69njruFE4X4YiqemDmL6tV38tT/rHDhBnd9vhfG5L4lO5xpbgUwpAgky0Dkcy6
 t/us2kHCgOgdclm1+yHqzhKOVgGRLEz/q8/ASW8TgXAGQkkdsJtSrugcKvslY64D0RFG
 /ooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tgwy/aInUxShEijCyGCLJTya0cIe/jECHsCJDcokQcg=;
 b=o4yuohkP91GDE3GToSIHtPv1LA0bMlcc/ApJ+IF174ZEPvIKWUpZV/JxSVtNuKrYn4
 g2LQMIt933GkbOzGGw9HJKohEQyslLVZBshr4QWdNxxbKulLns422z0VS5r2VMnLTzgk
 PXb0YJfVJJdm/ghiklZCVhhzjSngcMG/xiKrCEaNLKQzBxjIG9sUqCDJN3GKt1FfciQy
 IJ6mAkOxt5C/9IrgNXJJCfytVLJj9bTlvO1aMPzY+wCPatZGA9hq55Z/AYQeIirMANKu
 uqG7Dy8jARAsCcMY4k2Ggxuthg4tD3QiWu2LaxB5ZCSy99jc88GgenRH+K8M81selLTc
 OwKQ==
X-Gm-Message-State: AGi0PuaBm77odvlTlqRcVNuCu40kKXO/aBnXAuX3KpkHHr88F+aT8utX
 F2twNVRGTxAPgmV/bUw37r2Q6gdiR9oSOwZRRMM=
X-Google-Smtp-Source: APiQypJM1qLh9pmSxbC7pbQSVRXxExvGrjmXvoWrOkXH1zpgwOSU/+3hLToDFIgrRZpaR5uog7CmhMF/FDShjc3bEmU=
X-Received: by 2002:a17:90a:224b:: with SMTP id
 c69mr5748551pje.8.1587726718040; 
 Fri, 24 Apr 2020 04:11:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200423165457.54388-1-larsh@apache.org>
 <20200423215709.72993-1-larsh@apache.org>
In-Reply-To: <20200423215709.72993-1-larsh@apache.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 24 Apr 2020 14:11:51 +0300
Message-ID: <CAHp75VeX2SjX5J-w933FKh_yii=cJ9_tWj3RRNx7Q6vijtt6AQ@mail.gmail.com>
To: Lars <larsh@apache.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jRwFY-008phH-6E
Subject: Re: [ibm-acpi-devel] [PATCH v4] thinkpad_acpi: Add support for dual
 fan control on select models
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
Cc: Alexander Kappner <agk@godking.net>, Kevin Slagle <kjslag@gmail.com>,
 =?UTF-8?Q?Sebastian_D=C3=B6rner?= <bastidoerner@gmail.com>,
 Dario Messina <nanodario@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Marc Burkhardt <marc@osknowledge.org>, Stefan Assmann <sassmann@kpanic.de>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Apr 24, 2020 at 12:57 AM Lars <larsh@apache.org> wrote:
>
> This adds dual fan control for the following models:
> P50, P51, P52, P70, P71, P72, P1 gen1, X1E gen1, P2 gen2, and X1E gen2.
>
> Both fans are controlled together as if they were a single fan.
>
> Tested on an X1 Extreme Gen1, an X1 Extreme Gen2, and a P50.
>
> The patch is defensive, it adds only specific supported machines, and falls
> back to the old behavior if both fans cannot be controlled.
>
> Background:
> I tested the BIOS default behavior on my X1E gen2 and both fans are always
> changed together. So rather than adding controls for each fan, this controls
> both fans together as the BIOS would do.
>
> This was inspired by a discussion on dual fan support for the thinkfan tool
> [1].
> All BIOS ids are taken from there. The X1E gen2 id is verified on my machine.
>
> Thanks to GitHub users voidworker and civic9 for the earlier patches and BIOS
> ids, and to users peter-stoll and sassman for testing the patch on their
> machines.
>
> [1]: https://github.com/vmatare/thinkfan/issues/58
>
> Signed-off-by: Lars <larsh@apache.org>

One question though, is Lars your real name here? [1]

[1]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
