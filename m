Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B21B1BA02D
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Apr 2020 11:41:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jT0G3-0007Jg-L1; Mon, 27 Apr 2020 09:40:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1jT0G2-0007JZ-Fy
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Apr 2020 09:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YWA0qNFt3rYIcMvFiLW+rsoz0KvDJntHBD/VrCHkYWk=; b=MO9drvxT82XGqnr3pkmeMBwp8y
 N8GLoM0C9E+9rhHSGRU2jU4jRanHB9TXqrNaeavVyijpwoIjotWS8PRzwIdZuY3QP9A/nExwXFfPM
 Wwbx/bTIaz+T1P1pBXaa0Gdolu4q9MUazkCOf6+CalzEAAN7bWK9m6gZHCPeaZxHZ27c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YWA0qNFt3rYIcMvFiLW+rsoz0KvDJntHBD/VrCHkYWk=; b=SFQPhtG7mQ8DqN85r6Lg0Exh+q
 l83r6BjgZNlHTV3gs9NIKz/lzSJxWkyKnJ3IERJ/9+7JoqWc4oaf6797ooD/cvh1OUknHBLsvFvw8
 e+C90Q8mqfc1i2KMBuLJp1FrUrdxihxftW5CuijT/WZTK29J1TPRC9lq3D+anTVxc4cQ=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jT0G0-00HLDy-G6
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Apr 2020 09:40:58 +0000
Received: by mail-pf1-f193.google.com with SMTP id 18so7539436pfv.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 27 Apr 2020 02:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YWA0qNFt3rYIcMvFiLW+rsoz0KvDJntHBD/VrCHkYWk=;
 b=MwA+LLGgQ23TkF+bJUB8dNFrbE151g/xFXoopucJ1M86+oMXLKWWngvk5QP8lbdKtJ
 2isW2jwKd74e6zUzNsVPvVlhYwLjEfP130My41KYJ3jKVBxNOKKh/TFfQ+MUAhNr2GrC
 f1C625W9XAkvw+/+pSeRTnFNt2oQSgKfvQ1QWNWyOolRtIfgdGUZG5Oic2TM2rtOOR2h
 +56dcizJVd6SBn2sF/taHhtvak7lxPX+ge222GpGnlpIeSHS0J9E720Z6GXayBn7nhmW
 91dUDNx/xfPLUajbsy60XWq1mNW6haiX95iT/BxkoSjn0/VP2CKDpV5BYKlH2xgrOb2S
 yDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YWA0qNFt3rYIcMvFiLW+rsoz0KvDJntHBD/VrCHkYWk=;
 b=aU6jBoa5H6NypUBTALQ+0XyaAcXCj2L6vmCxnlF4Mq5+h1bRXLCswArI84i8y+ESzj
 vgQbwzF819Wv24MmeMsjTXBGe7mgvBQDlpbfhfLZJOimroSYO+LMgCCGb5ka2dSkTleJ
 K4ZlVXp9ucp3eTib9VRnS4vphx1FjHO260nDAD9Dx83UJK/7UuDbN/v0b/vttdXOW3rZ
 iSxZplu3mnTaHtz57mHSyJwW7ePPBPMXsJbcHI8IoOH492PCFJRrmAZqN26wx8BI6kO2
 /MHxl2fb2oZWfX5oqUoib7JwvBex7v2loGHmhWBFdTFzr5PnVbfKsPBCnWKdpU79qunp
 BHew==
X-Gm-Message-State: AGi0PuaASbI4xGV6KIZa9vzvXpGArV4N5b83CHY68lInhqQ6jL+MmKyv
 VkrVw0LVTQ6QBU0zy+req93ome9XeI2S+GB8Yjw=
X-Google-Smtp-Source: APiQypJqGjBukBhCWLZVujDcFqGI9uFRUhwGWv7CTou0N1zLri9MiP4EF6/uImGUh5vPSZfe9Ktqp4gH+TUkaZtMM/s=
X-Received: by 2002:a63:1c1:: with SMTP id 184mr23082683pgb.203.1587980450642; 
 Mon, 27 Apr 2020 02:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200423165457.54388-1-larsh@apache.org>
 <20200423215709.72993-1-larsh@apache.org>
 <CAHp75VeX2SjX5J-w933FKh_yii=cJ9_tWj3RRNx7Q6vijtt6AQ@mail.gmail.com>
 <1630425700.517847.1587973463950@mail.yahoo.com>
In-Reply-To: <1630425700.517847.1587973463950@mail.yahoo.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 27 Apr 2020 12:40:44 +0300
Message-ID: <CAHp75VeTp4ACpOxDtr64QX49-YZ8Uk_BM8XcMCDgg0BdqxNTpg@mail.gmail.com>
To: "larsh@apache.org" <larsh@apache.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jT0G0-00HLDy-G6
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

On Mon, Apr 27, 2020 at 10:44 AM larsh@apache.org <larsh@apache.org> wrote:
>
>
> Hi Andy,
>
> my full name is Lars Hofhansl.
> Should I send a new post?
>
> Just in case, I hereby:
>
> Signed-off-by: Lars Hofhansl <larsh@apache.org>

No need for this one, I will update locally, thanks!

>
> -- Lars
>
> On Friday, April 24, 2020, 4:12:05 AM PDT, Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
>
>
>
>
>
> On Fri, Apr 24, 2020 at 12:57 AM Lars <larsh@apache.org> wrote:
> >
> > This adds dual fan control for the following models:
> > P50, P51, P52, P70, P71, P72, P1 gen1, X1E gen1, P2 gen2, and X1E gen2.
> >
> > Both fans are controlled together as if they were a single fan.
> >
> > Tested on an X1 Extreme Gen1, an X1 Extreme Gen2, and a P50.
> >
> > The patch is defensive, it adds only specific supported machines, and falls
> > back to the old behavior if both fans cannot be controlled.
> >
> > Background:
> > I tested the BIOS default behavior on my X1E gen2 and both fans are always
> > changed together. So rather than adding controls for each fan, this controls
> > both fans together as the BIOS would do.
> >
> > This was inspired by a discussion on dual fan support for the thinkfan tool
> > [1].
> > All BIOS ids are taken from there. The X1E gen2 id is verified on my machine.
> >
> > Thanks to GitHub users voidworker and civic9 for the earlier patches and BIOS
> > ids, and to users peter-stoll and sassman for testing the patch on their
> > machines.
> >
> > [1]: https://github.com/vmatare/thinkfan/issues/58
> >
> > Signed-off-by: Lars <larsh@apache.org>
>
> One question though, is Lars your real name here? [1]
>
>
> [1]:
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin
>
> --
> With Best Regards,
> Andy Shevchenko
>


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
