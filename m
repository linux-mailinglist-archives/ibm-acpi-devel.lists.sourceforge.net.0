Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 659732B681E
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 17 Nov 2020 15:59:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kf2Rx-0000Yp-IM; Tue, 17 Nov 2020 14:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tom.billiet@gmail.com>) id 1kf2Rv-0000U5-BH
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 17 Nov 2020 14:59:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iwJNqaIoX7NGJhDADs7Dsl5Rm6jugxtGMrEGc6MvRtU=; b=OYDi1M3xd15PbWhKbO7SHZl2le
 Ik7h8TRUzu62e+rQ4upjnVwOjsGnFnGgvqhzY9DE5z34AFZ5hlC+IR+MD8/4P9RqRlcrgzSZWxuHs
 eu80zOTuP63N959Fw1pCndNLViDfLxnn60kWuQmQBCdzgEXkk38tABJGfPwGRJbOq39U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iwJNqaIoX7NGJhDADs7Dsl5Rm6jugxtGMrEGc6MvRtU=; b=h
 fh1y8tUOwHIZYs7kH0JGbmXeLqMJ9O6N8L9uuWixzAWvdpbTrJyh/PDF4pAmF/raCBviVVgXTw2q9
 a3XhzIAGcnPLd+NduqW7e3Wfer0QhP96/WkQtPwQ7xwDKtUSexzD1F9bEI9V44bza63lXpbj4uyu7
 IIKz2hlcjPxPQaSs=;
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kf2Lt-00AWi1-6F
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 17 Nov 2020 14:53:16 +0000
Received: by mail-ej1-f47.google.com with SMTP id gj5so2321468ejb.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 17 Nov 2020 06:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=iwJNqaIoX7NGJhDADs7Dsl5Rm6jugxtGMrEGc6MvRtU=;
 b=Yx+LXxvR4w29wUy5yNKLuG9HunK66DV7ZuwczgeyOm64PMTXGMqwsBEOwDNQwrZwCW
 yaHh/0ian53Pfs+Vb/mbgF1rpJdtjrjiTFNj1P9wvh+l3sF0vmt4RGJRDZOtB3K7JIKP
 q5KZE141QKhpYUfZTSmMSr3VSD1r1ZO5kDxz7WDLfKic13oyv4Hqul1ICwZeKQAsZmi+
 6vzrudm7Ze8eGTHiXSixeQsoGgk39UEDzt9Xh2oIBwDsrVRKzoxnKgzqpFWgtMl2xy4k
 wD3VHkfQdjjXXUwa6ZmB6bhFIPK8hFqUFiYmU1GASlGofFuQ3g1MZfui49u8j2gP8+Ct
 fi1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=iwJNqaIoX7NGJhDADs7Dsl5Rm6jugxtGMrEGc6MvRtU=;
 b=srtnkZ0Eqr5x/z190i9K2DsE/MQSPZ90oNBdw+xQgX5aoHd7UGNY3dguipQAB2PG8J
 zcnBFvWP6LohJfjgkqFf2y+3stcqW71oo2DiqO/jEMalSz6H14j8q0ohjkzX0ROdrGCK
 7//kdAAA11YHBwQUyD1Rz07bhTD0SIN9s/aFbqx3ebdG+dATAgXXGRK/H0Vt64kT4OL9
 hdG3HwK4/W/9vyR+zxGsP8P8t3aglTvR/YURK2yr4t7pZpRRf6thcASs/9vEoUgCytSX
 kU6dSKgzMxr2EKXr0fuWJMazEYBxRD8DGmQtui36EzfR0aQBQpb3RkFKY2XnV3VeABUO
 7CSg==
X-Gm-Message-State: AOAM53115Oy3K1+F5h7OyA4XfqTTpln/HqngrGptQdMzicSfSfCQBbsi
 WLJff9SqJsied5lWhtW7a2RHo0fIG7OY+/5PxKjGl6pUxgdyaQ==
X-Google-Smtp-Source: ABdhPJzg8EwrUWFFTXzBBgP28q3bHNfIAo3wNhW9jTFT2Qf3WKBcGkklp/bQ2U148X7MPyZ8k21xAg/FNHlgBQI8FAk=
X-Received: by 2002:a17:906:1412:: with SMTP id
 p18mr19694428ejc.480.1605624774339; 
 Tue, 17 Nov 2020 06:52:54 -0800 (PST)
MIME-Version: 1.0
From: Tom Billiet <tom.billiet@gmail.com>
Date: Tue, 17 Nov 2020 15:52:41 +0100
Message-ID: <CACPDT=QiyGr00moJy-+dHX-ZB9uabTD3dAXpUcLEpKWgyhLFoA@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tom.billiet[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.47 listed in list.dnswl.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kf2Lt-00AWi1-6F
Subject: [ibm-acpi-devel] unhandled HKEY event 0x6031
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
Content-Type: multipart/mixed; boundary="===============4847424304841602004=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============4847424304841602004==
Content-Type: multipart/alternative; boundary="000000000000512feb05b44ea640"

--000000000000512feb05b44ea640
Content-Type: text/plain; charset="UTF-8"

Hi,

I found the following traces in my dmesg, so here I am:
[133629.989645] thinkpad_acpi: unhandled HKEY event 0x6031
[133629.989648] thinkpad_acpi: please report the conditions when this event
happened to ibm-acpi-devel@lists.sourceforge.net

So what I think happens:
I've a lenovo thinkpad P1 with an Nvidia Quadro T1000. This is connected to
a Lenovo USB-C docking station, which has 2 external monitors connected via
displayport. (the laptop has thunderbolt 3 support)
A week or 2 ago, I updated the firmware of the docking station to the
latest version, and since then I've random disconnects of my monitors quite
often (say about 5 times a day). I can't find any real errors, this is the
only error that seems to happen.

more in detail:
* I'm running ubuntu 20.04, updated and with nvidia drivers.
* Only 1 of the 2 external screens disconnects, the other keeps working.
It's not always the same.
* It actually not really disconnects, but the screen goes into standby
mode. In nvidia-settings I still see the screen as active. But the only way
to get it to work again, is by reconnecting the dock.
* I've also had a couple of times where it goes into stand-by for a couple
of seconds and then recovers automatically.
* I have another Lenovo laptop (E590 with Radeon graphics). I don't
experience any disconnects there. This laptop has no thunderbolt support.

So what do you think, is this something that could be related? I'm more
than happy to provide more logs/details if needed.

Best regards,
Tom

--000000000000512feb05b44ea640
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I found the following tr=
aces in my dmesg, so here I am:</div><div>[133629.989645] thinkpad_acpi: un=
handled HKEY event 0x6031<br>[133629.989648] thinkpad_acpi: please report t=
he conditions when this event happened to <a href=3D"mailto:ibm-acpi-devel@=
lists.sourceforge.net">ibm-acpi-devel@lists.sourceforge.net</a></div><div><=
br></div><div>So what I think happens:</div><div>I&#39;ve a lenovo thinkpad=
 P1 with an Nvidia Quadro T1000. This is connected to a Lenovo USB-C dockin=
g station, which has 2 external monitors connected via displayport. (the la=
ptop has thunderbolt 3 support)<br></div><div>A week or 2 ago, I updated th=
e firmware of the docking station to the latest version, and since then I&#=
39;ve random disconnects of my monitors quite often (say about 5 times a da=
y). I can&#39;t find any real errors, this is the only error that seems to =
happen.</div><div><br></div><div>more in detail:</div><div>* I&#39;m runnin=
g ubuntu 20.04, updated and with nvidia drivers.<br></div><div>* Only 1 of =
the 2 external screens disconnects, the other keeps working. It&#39;s not a=
lways the same.</div><div>* It actually not really disconnects, but the scr=
een goes into standby mode. In nvidia-settings I still see the screen as ac=
tive. But the only way to get it to work again, is by reconnecting the dock=
.</div><div>* I&#39;ve also had a couple of times where it goes into stand-=
by for a couple of seconds and then recovers automatically.</div><div>* I h=
ave another Lenovo laptop (E590 with Radeon graphics). I don&#39;t experien=
ce any disconnects there. This laptop has no thunderbolt support.</div><div=
><br></div><div>So what do you think, is this something that could be relat=
ed? I&#39;m more than happy to provide more logs/details if needed.</div><d=
iv><br></div><div>Best regards,</div><div>Tom</div><div><br></div><div><br>=
</div></div>

--000000000000512feb05b44ea640--


--===============4847424304841602004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4847424304841602004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============4847424304841602004==--

