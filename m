Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BEF21EE2B
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 Jul 2020 12:43:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jvIPI-0000eP-8j; Tue, 14 Jul 2020 10:43:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jvIPG-0000eH-Iu
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 10:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KJ/q+ccg5V+GxYEgNQmLl43Y6zP1ehsDX4DLYv49Pis=; b=jzc/ZrLtvOMTjH0DGzkPaDHowZ
 PLfOjP0CXOu57qfi+BKCDiy6UcR8um9PjGPGGibr8JMVuBD+TsOeqj7sQV74MOy3qOhFaRk0MHkYb
 GD7BTH/OdD0tfNP0EQqVA0plDYYfF3GPAOfQa6ZqzUWY/3CjvvmJvMcd7p++XQgUUhH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KJ/q+ccg5V+GxYEgNQmLl43Y6zP1ehsDX4DLYv49Pis=; b=FISf7SXk5i8CyfiWlGYU8NHLdA
 T34nbmVZ3Dgi2pNQUAJlJO0NqYisVtxEp2/VjIeK1lT+wWRN5HQBpDxqkHyclX8pn1xM0THamaxvI
 iAek6XEtJxZNO5fLyW/t1rONZN7a8Vpf5F3qBFHPj3zg/uHXAYYaZOYA1FAy/OFgkU3c=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jvIPF-006msL-DC
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 14 Jul 2020 10:43:26 +0000
Received: by mail-pl1-f194.google.com with SMTP id p1so6861984pls.4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 Jul 2020 03:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KJ/q+ccg5V+GxYEgNQmLl43Y6zP1ehsDX4DLYv49Pis=;
 b=XgsUSIpOKs9dGoG4Aetrxb1n9tAvJFdoUpuvMpD42InYlIm1HzpfKPUiMVGTYGuE0p
 vRQD+yMK4PeyRkKRx8gd0+zar4qPpyWUlpBZmX/FFNMW6II6zRfUhLRik+5yA9rMQnmF
 ZmwTDnFXfYo3GpxIAMBu/JulddFsv19gSLJ6L470MvCT5XMgHtiiJLy21AglLHEfL2x+
 D/82dLSOxkQHUdoNSZhdZ1OY3fzeA8bNefRK6rZm1F8arjuugM33vbTIgujH0z8MrkdD
 z0br2AdVWrRZIUMazR8V+3Dsfl2+Q+lVrm0TV2KWpB00U7rgMHsh6rOhB2FjOajTyD/S
 APtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KJ/q+ccg5V+GxYEgNQmLl43Y6zP1ehsDX4DLYv49Pis=;
 b=s9htfnWEK61siMiefEXt6nQ0GzKeZpK5xQJiF/1SntsSmTzo/olrCB+K+MVvDpvQid
 Cmh4fECKY+9oMs1vy7xOw9fXYXyL8usjBA5C3Mah4esB23W173CvkUskN/0S0tDH+TGp
 RHluvulWARELBvCEGpe1WQCXO7kHUAIzvszereI8uEzIdqVfE9jq8++h/fnjFilU3jrt
 OHnLDxWprIFdrDbNGe8VZ/jL//f27JwVpd6+Lr3SvdNey8mvkSREiW6P3PxFn1oUFuXL
 +V/FQI0j5p/YhfCc/H9V/xy/VHC55Vs/+SncZBQgLc6Vk2MpTygVnrJE4Wpk9kBSNsKf
 DcYQ==
X-Gm-Message-State: AOAM531ecnfnNNcjyTE4j+OC/abupjW0+gm5ypCAEfK1/FTjW8pW9FnJ
 gWYBCH1tR40LgD0qvkEFlGmJdIYkh28AgYqpj2M=
X-Google-Smtp-Source: ABdhPJwE8FEhDNL+Ica1Irn5TRh1MnZrhWjsGjtlollROeI9dA2kOITIov0B1LrVh8JDoHxwndGqErDfscqrG1PDQf4=
X-Received: by 2002:a17:902:7288:: with SMTP id
 d8mr3495271pll.18.1594723398938; 
 Tue, 14 Jul 2020 03:43:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200714081510.6070-1-hdegoede@redhat.com>
 <CAHp75Vd6uGNw5m3-Tc1tkABLT_Wi7CtW2yo8+B5TpYV4U8XE9A@mail.gmail.com>
 <CAHp75Ve9HF4WVkiUA77s9LsN6d8oaFPRgjLi86FnDSHgmVvTNA@mail.gmail.com>
 <af1a7c41-071f-4c26-9a9a-7c6ffb5dde88@redhat.com>
In-Reply-To: <af1a7c41-071f-4c26-9a9a-7c6ffb5dde88@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 14 Jul 2020 13:43:01 +0300
Message-ID: <CAHp75Vc=ZAH4YeDF+o-89hJZCz2r2csRDcYjBVA30nzbyikFMg@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jvIPF-006msL-DC
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

On Tue, Jul 14, 2020 at 12:33 PM Hans de Goede <hdegoede@redhat.com> wrote:
> On 7/14/20 10:27 AM, Andy Shevchenko wrote:
> > On Tue, Jul 14, 2020 at 11:21 AM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> >> On Tue, Jul 14, 2020 at 11:15 AM Hans de Goede <hdegoede@redhat.com> wrote:
> >>>
> >>> Commit 35d13c7a0512 ("platform/x86: thinkpad_acpi: Use strndup_user()
> >>> in dispatch_proc_write()") cleaned up dispatch_proc_write() by replacing
> >>> the code to copy the passed in data from userspae with strndup_user().
> >>
> >> user space
>
> Ack, do you want me to send a v2, or can you fix this up after applying.
>
> >>> But strndup_user() expects a 0 terminated input buffer and the buffer
> >>> passed to dispatch_proc_write() is NOT 0 terminated.
> >
> > Second though, perhaps it's a simple wrong count parameter?
> > strndup_user(..., min(count, PAGE_SIZE)) or so would work?
>
> I honestly have not looked at a better fix and given that you've just come
> up with 2 suggestions which may or may not work, combined with
> where we are in the 5.8 cycle I believe it would be best to just
> play it safe and go with the revert for 5.8.
>
> If you then take a second attempt at cleaning this up for 5.9 and
> send it to me, I can test it for you.

I guess there is no need to revert. I have looked at the documentation
and see that all of the procfs parameters are normal strings, but you
are right they are not NULL terminated per se. So, the problematic
place is the size of data we retrieve from user space.

I have sent a patch.


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
