Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CF022E6EA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 09:50:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzxtf-000479-0I; Mon, 27 Jul 2020 07:50:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jzxtd-00046p-DQ
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 07:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HhIDh5Hx27FTVnTfWMP3UANCkbwxny8/a15rEFriMYg=; b=PT/zNsakSwT9ZI8HGh0UIKTAel
 cnBh7Zzf0ehwsbCE1f/Cspv/KkBii5qbKPyGxKHCKmLpqle9SI7FdKqCK/VIM0GVv3HcLEquVbYYH
 dlM8G70YhwRAhu1J1O4BWFDcEP2SH1JTaB2nYS/X8h33ssI848bgJNJ6ffDyiUFy/Knc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HhIDh5Hx27FTVnTfWMP3UANCkbwxny8/a15rEFriMYg=; b=I9RJqvknLobqJiKbCerQw9igwa
 L8iqxJy3eZu0tvtL6qo7YD11NmR6igkhrDaesc2C3Dsvt46NLsXI8gzkUZtci0c5n4HBIR8aRo0Nd
 xQQAgk2T1I5nP0aFr4YaaRi1EwU4MXmJZe5dLwtDXIQs8Ou2kPrLX8NxW4v++PqYT3Xs=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jzxtc-003oLH-2Q
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Jul 2020 07:50:05 +0000
Received: by mail-pj1-f66.google.com with SMTP id a9so8785009pjd.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 27 Jul 2020 00:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HhIDh5Hx27FTVnTfWMP3UANCkbwxny8/a15rEFriMYg=;
 b=qSKI9QTIVnlWHPnZx/oZulFmEZuP+u00joILTApKVVfP8s8yOV9YqDxlWAUO5yHFRZ
 +GS4TjL2cTBKGeoTyNVVBx1rnsHKcPP0+cHUOMhMsjBjoC4Fp0St0V6WOdKcHWE3a7qY
 uBuoUliduYJmBTAK5v4zBrqqhFQl9sD9/AAWfSRvwNPOxyUS8btYqgX4mjC84N2qLcaA
 AGn7/vABnbyl3VYcHiBYvEwUWuv8YJXVoaPeEXT7L5npeTKE9SRyUmOSV8t9X66GNovS
 ThzJhhTB2NqIDsg3ULQ7+1AV9S1UOREuUFckafPO97cbrkHJwl/HhP1AkxRHz5x4hXOI
 2JaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HhIDh5Hx27FTVnTfWMP3UANCkbwxny8/a15rEFriMYg=;
 b=munWcCjOXelOZDTfcPmruq3VqtpxZDh/JQa3VnOvMrzCw0DscDVuIP+qPdkBeLE88C
 kafPEyovcoW/RQTTRA/3/5aJZ/n/tIgtW6+Mw6c8UvAvb1hwU4ilyuxWFWfnr4EjpA6S
 H2DvV/TJFYlAcxM8HL7fkfd/LZN2rzUhrgu9lyrp0EnvPJzcIKKhjhjSYZmVwloDsc4W
 39NM/rLz1GN+Uc2Eq36KXZxHntDW4MHvF/x/ZwPYnMgxZbV3+IQ0lN7/WLtRWhA2U1pF
 N5os1Ar2MiveDd9jgZxoX6q98/EvzpzFL1dyEb0cxmRhF+iac7Ozr+w7I6+k4e+n7nKD
 dPpA==
X-Gm-Message-State: AOAM531D4q9pqkHeWRzPHhzsKgau3t5eGnStgnqwItegIwDrLJdfaiMk
 MUYM0TIWHuDc8m14QvFQ/qUFtZKrU57mYsgqnYCIKizX
X-Google-Smtp-Source: ABdhPJyPnB6FMtVB5Q9bd2CIaxCVWPVOup1tHBVKZLnpG1UbzQLvIgKLF9H89TgmFXZDcF6RR6t7SbG6MhniZDPpst8=
X-Received: by 2002:a17:90a:8985:: with SMTP id
 v5mr2061101pjn.181.1595836198458; 
 Mon, 27 Jul 2020 00:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200717114155.56222-1-hdegoede@redhat.com>
 <20200719225649.GA4341@khazad-dum.debian.net>
 <20200722054144.GQ1665100@dtor-ws>
 <20200727005049.GA10254@khazad-dum.debian.net>
 <f67ede61-c9d4-6abc-9b59-a5b2b615d1b6@redhat.com>
In-Reply-To: <f67ede61-c9d4-6abc-9b59-a5b2b615d1b6@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 27 Jul 2020 10:49:42 +0300
Message-ID: <CAHp75VdvhC5HJ-BjqjDxU_Z_7_i8MV5UDN4FgWHvZfSD5=smqg@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jzxtc-003oLH-2Q
Subject: Re: [ibm-acpi-devel] [PATCH 0/3] Add 3 new keycodes and use them
 for 3 new hotkeys on new Lenovo Thinkpads
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
Cc: Marco Trevisan <marco.trevisan@canonical.com>,
 Benjamin Berg <bberg@redhat.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Christian Kellner <ckellner@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>,
 Mark Pearson <mpearson@lenovo.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 linux-input <linux-input@vger.kernel.org>, Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Jul 27, 2020 at 10:45 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 7/27/20 2:50 AM, Henrique de Moraes Holschuh wrote:
> > On Tue, 21 Jul 2020, Dmitry Torokhov wrote:
> >> On Sun, Jul 19, 2020 at 07:56:49PM -0300, Henrique de Moraes Holschuh wrote:
> >>> On Fri, 17 Jul 2020, Hans de Goede wrote:
> >>>> This is a simple patch-series adding support for 3 new hotkeys found
> >>>> on various new Lenovo Thinkpad models.
> >>>
> >>> For all three patches, pending an ack for the new keycodes by the input
> >>> maintainers:
> >>>
> >>> Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
> >>
> >> Do you want me to merge all 3 through input tree?
> >
> > Hans, Daren, Andy, what do you prefer?
>
> Taking all this upstream through Dmitry's input tree is fine with
> me, but this really is up to Andy and/or Daren.

Fine with me.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
