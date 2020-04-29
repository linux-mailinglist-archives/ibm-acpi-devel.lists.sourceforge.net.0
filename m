Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 965761BDC6C
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 29 Apr 2020 14:36:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jTlwM-0007FJ-Ar; Wed, 29 Apr 2020 12:35:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jTlwL-0007F5-12
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Apr 2020 12:35:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6lD/kQN+2/noO6l676D/crTQxbfBilzk74je4uWi+RE=; b=gssnzxpOMWr1Tmg8ipg316DDs5
 xeq6fLPaEjhtkX5YcDFrXdJiLKOlo9pJYHRHSd7hFByx/6Tlm8y9EXcB6bTORtpC3wwmhQUQXWvkg
 XTg9OYuQuJusvoeCJLxlwrIvYJLD4w6WB8BCAunyaVYxoc0Sgjwtw5hUF5b14fIwo4DE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6lD/kQN+2/noO6l676D/crTQxbfBilzk74je4uWi+RE=; b=dYYUKPgfvOjEjhRmvbbdzpU62a
 Kp/THtoG/bT6UJoDA9MJs6FwSD3kr7zGYAueSuDQlkX2KYEv9jc02uRrUN62dgUU3UWmPduXMXudX
 o7kRnrlfs3jI3nHuxEUB1r1/0O/atwTFhQ7uuGdM6xaVerc61pikpw4Cxw6y5UMNDZ+Y=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jTlwJ-003rr2-67
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Apr 2020 12:35:48 +0000
Received: by mail-pf1-f193.google.com with SMTP id d184so1027396pfd.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 29 Apr 2020 05:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6lD/kQN+2/noO6l676D/crTQxbfBilzk74je4uWi+RE=;
 b=D5TyUZV+K2dz48gCCRMuv18HfmOtvNgOmPvURzvzzAGjW2uTy21G07/Bs1fTMlOdkK
 JqGQ9YYuoQGNdBV77/HGXcu5sBoHLkAjB6S4sQk08CONbupRhmSbmkG8DavGRpfJeW2Y
 3JtlSEy/xIcOYz0iY0pQ6RVSYw3fZC8vJnxNaA6bDijigfozEBfbU2uSp/5QEMhYZqMu
 b9A8gd9Ib8RHurG/anB84s8coQvM167UEhkBTwQZzI0eJs1tw23zjfYzwMLE4uKF859E
 Bn6XWs+j0NI0iVG/5QEiDU+s3NwafiQj/YkurkB2CWm2ArDgs1PAPp24W2v3sHBGqR0h
 /s4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6lD/kQN+2/noO6l676D/crTQxbfBilzk74je4uWi+RE=;
 b=DUHGOr2Gw2qQ7J64PLjs+f8ghIl+xjNWtXC9Y9QD7TH4Kz+Wn34yX3UbJEAR9qOkPQ
 FpZlvJGA4IeETnKnDS2tLCdYtP6gtAwP0PNYPk2HwuruZZPimwbmx9KSrSriS3qtZOQT
 lJIVC/5snFsLC37+WnIISafEh3O7xT85j1mwo/GbL2KCoS0McJWJRer6VAP1jfPu1B28
 Pzxrk3tiypzE1a1Ax6ODGHd1N2jQPX7D9GVhbGDwxpE2CC0muw7usQo0ZPaq7sQ6bwoW
 6e2bdy0DN54SClR0mI15AI85Z9DsXkeaOUT6uhQqleBL0U6I02hUf5ywfsBo6f/PIr0+
 cjFQ==
X-Gm-Message-State: AGi0PubpEW0ffdKq/W3Q5Eo+2qiB8NlbqcQV1qlgm+nljaV+AX4qOIDa
 w15kHDd8YYhC+phpLu84Ymwl3i0SqxySiAvAQNw=
X-Google-Smtp-Source: APiQypJj05CXAFhrRSaM+IwEVCVJ4x2Uo4Oh4UHcvxMGhUsVIcNQwnmranc+vMIzihioZkfSAOJlAmUY+iX9Vg5pRzw=
X-Received: by 2002:a62:5ec7:: with SMTP id
 s190mr33747269pfb.130.1588163741365; 
 Wed, 29 Apr 2020 05:35:41 -0700 (PDT)
MIME-Version: 1.0
References: <1588150780-53718-1-git-send-email-wangxiongfeng2@huawei.com>
In-Reply-To: <1588150780-53718-1-git-send-email-wangxiongfeng2@huawei.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 29 Apr 2020 15:35:34 +0300
Message-ID: <CAHp75VfmGQx=+pips170Wmw0ACAQ40NJTLcVTZaMrv3LrL1LHw@mail.gmail.com>
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jTlwJ-003rr2-67
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Remove
 always false 'value < 0' statement
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
Cc: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Apr 29, 2020 at 12:06 PM Xiongfeng Wang
<wangxiongfeng2@huawei.com> wrote:
>
> Since 'value' is declared as unsigned long, the following statement is
> always false.
>         value < 0
>
> So let's remove it.

It's bogus. The warning here doesn't tell anything useful, so doesn't the patch.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
