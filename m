Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9711C21EB35
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 Jul 2020 10:22:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jvGCj-0006cC-3i; Tue, 14 Jul 2020 08:22:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jvGCh-0006aZ-Pk
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 08:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UxT+xVg1iEE+TdiS6PzOnTuOQmCXGShz9BDeI/0k6RI=; b=UG88CDc2UndYRJVFHs/1GO2Kt9
 hVNcnwg+hYBB72NgrGEIBNanJGglne7YJT0aghqpLWL1M2gg4r+Hty/AZa1lEbOphdY9EUtz1BUd5
 lrwpHPxHOGsIkNQaEfZ+sYlciiApPRvyXgyUUBHlWx9mUqVJ6rJipjLqaRWw39Q6dja0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UxT+xVg1iEE+TdiS6PzOnTuOQmCXGShz9BDeI/0k6RI=; b=EpUtxk9VvlIc6pFknA1wD/iHQR
 +j4nLUhzmfc3pySZaPh32AskLBHTr2anpUCnJmBRKUcF3DMNZrBfKb06w2c8upT/ZuFEng8WZ3/K7
 BgkHftdpSh95ekgxT7nzWxSiNdfab/yoBGhIZtpBhAPHx8hSpnzZWQLwLbTAt43PadOs=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jvGCg-002YVd-9z
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 08:22:19 +0000
Received: by mail-pl1-f195.google.com with SMTP id q17so6715312pls.9
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 Jul 2020 01:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UxT+xVg1iEE+TdiS6PzOnTuOQmCXGShz9BDeI/0k6RI=;
 b=X5lhRJB59sgnqNf0zVexBgPh36/YV37c5fAfH/uEasMqURC7Cjb1qQQTGbU8+Vf4ya
 SLBFKjBg8XYlaOjhYH1IBYHyDq523T8IWXb3MUtHun54j87VOyJHJ0+QBU7wCW2yffCj
 jFUG20LunyablP3sh3UHL73xW+KI6skpUGIfD7wmU8amILZ2rToGcGRzJSwISDchE57W
 eHU2t0i+DPDWXAj6+XryYf5KXM5xWezs4D/MMgWqnSEA0IXp55+ZIYykU7mRsooxSz1S
 A0T/sw/PpP4rBfbLcFpEXcmi0GCG2abk/gW2aDyp+yGqUAiXILda4+7go4Bw8eb/MBFP
 vxXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UxT+xVg1iEE+TdiS6PzOnTuOQmCXGShz9BDeI/0k6RI=;
 b=o086xiB0H1Wpj5LcLH98/Q3yUmKB4iYmHUIJGXxMQWnv5Ib4ru5VQBgUDYCF/KUjOp
 oaXe0fNlN51RcUAeM3ng8IjidwEY1UtHt3T8i6ufrq8gPILwX9+f5eoceeBraOCvp33x
 LTb9eCi/4Kg2KBl74SCm6w468wg+ilb07e2FakhOc636SqmoNdeqXG+iNDRv/p8xnyPV
 227+vYlE2kLMKJcRvSu6LohiLF9dCCd7TJpRqop64neP1GSFKM+yUaOCNyI91FS72TvW
 nSoiP/uczpYw2duEdnz8wW5qVVJAYMaK3QNq8vmWyMCY9ajtxvX53m5pc1T1npeH7NSo
 BMVQ==
X-Gm-Message-State: AOAM531xlH06Wqmb8EHXQlmTAjEJ3h468GMOpIQ7oD+UNZ7y5vPiRg+L
 3b1jwbUHW2LowutnqJsOZbWiRxSiuGOyPS+7x+U=
X-Google-Smtp-Source: ABdhPJyJXVM7MeA3GmA+gb8Y/IKCddN/vz262hxa8lU5yf5tdOl+VJnVXqo/AabFiUCqcD9seS0VkBVvrXA45nivY9U=
X-Received: by 2002:a17:902:7288:: with SMTP id
 d8mr3099798pll.18.1594714925385; 
 Tue, 14 Jul 2020 01:22:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200714081510.6070-1-hdegoede@redhat.com>
In-Reply-To: <20200714081510.6070-1-hdegoede@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 14 Jul 2020 11:21:48 +0300
Message-ID: <CAHp75Vd6uGNw5m3-Tc1tkABLT_Wi7CtW2yo8+B5TpYV4U8XE9A@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
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
X-Headers-End: 1jvGCg-002YVd-9z
Subject: Re: [ibm-acpi-devel] [PATCH 5.8 regression fix] platform/x86:
 thinkpad_acpi: Revert: Use strndup_user() in dispatch_proc_write()
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

On Tue, Jul 14, 2020 at 11:15 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Commit 35d13c7a0512 ("platform/x86: thinkpad_acpi: Use strndup_user()
> in dispatch_proc_write()") cleaned up dispatch_proc_write() by replacing
> the code to copy the passed in data from userspae with strndup_user().

user space

> But strndup_user() expects a 0 terminated input buffer and the buffer
> passed to dispatch_proc_write() is NOT 0 terminated.
>
> So this change leads to strndup_user() copying some extra random bytes
> from userspace till it hits a 0 byte.
>
> This commit reverts the change to use strndup_user() fixing the
> buffer being passed to the ibm_struct.write() call back containing extra
> junk at the end.

Can we simply use memdup_user()?
And thanks for catching this up!

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
