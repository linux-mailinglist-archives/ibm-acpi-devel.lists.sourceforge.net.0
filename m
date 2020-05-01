Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA271C1D62
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  1 May 2020 20:49:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jUaid-0006l3-6f; Fri, 01 May 2020 18:49:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <civic9@gmail.com>) id 1jUaib-0006kj-G9
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 01 May 2020 18:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8M1Q3wXVNZhCutNZoEQPBZn1UCdn63FvS5PvntPrz7o=; b=hi7gW53oJruS+t9lEUltLvj9LJ
 rVN0IHBn+JxuSm2nXpbEARLgHkc1qH+tNtmGIv81xHdoPDKdfzPs7ovGEgPrPPHCbVtLOS+sB3M2v
 6i7c0pIbeNopeiYjgM6PIvcagldbKUv56pLTR4gpEOocTKnS0PDwG+K81X7RYh3goStU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8M1Q3wXVNZhCutNZoEQPBZn1UCdn63FvS5PvntPrz7o=; b=ktPiQt/YmobsQlOKknBynYF9Ri
 mjqkGNCWbHAug78SbA77PhscLjqKZFcsQNn7AhLG9hOB9N2S2Rg/2oeBorFdjEaER2DuKdjSaIF4L
 RLSikHUabYET7Bquc/eJ1/bL0/yWwxIMGDdzrSvoF5TApo8dJZG3lJznS0l5Mow7lsjY=;
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jUaiZ-00734u-QS
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 01 May 2020 18:49:01 +0000
Received: by mail-lf1-f67.google.com with SMTP id l11so4561717lfc.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 01 May 2020 11:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8M1Q3wXVNZhCutNZoEQPBZn1UCdn63FvS5PvntPrz7o=;
 b=t4PKSptgnAcqegiukRZox+fRni+KHbpHHK8KdrDQ9YzBljH2rvUWchCBGfzWJfxpuD
 5s2gh1IJXR4NR5TC8jsSX8w/IwRorMVgzBJG8j+5BVSn7CgpQ1j9MWQ4nYUblYHpu3C3
 2A9gnZV558kNtNwcAmYMJYubc/wnN7LpRvXudZ8Ooa25sQCW11fzJC6yUwy3Fo0k6Tz7
 u0M5UK4XoBzCTMoA7xT/yhMPzyJ3zoqHtDzXfUwAPZCuIGYzKDWAND2W8j5keoSGq1g8
 urRsWWfhGXjxJS46UfTcv9g7cs9NAIM0BzyMeCddkpSacxukzmP8iWXpN3AiAZWJcHAP
 qy1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8M1Q3wXVNZhCutNZoEQPBZn1UCdn63FvS5PvntPrz7o=;
 b=FNOo4GbmJL9veN/Xp5seeGCDHpS1suG6vJprqZKhsXjn9cQGbpl6YgSfwL2Q8/Zmaa
 4DD7LMB0moy0Nb8+oi0xR0j3TEyZ1lDH42A1i4Qx1qmgAc06EmcF8v0NzSiAQUg7GRbE
 6Z+vq/ZmXyamll/Enq6G/7hZRLQUjPtZ6yEy4FJJ1C5LGdgp4oUiVwHDNsVuKVu1E+F9
 W7Bylf5+GmObwQRJUGw4meUZJIFj/rlipPyAsc9WhzWmkKWgLqHQb7pmBP1YHw2yJupQ
 YJVlccuXFllM0F+FHFqV9WNUBee315mIdYlAjMJomuRx/RPfrrcKWGElj6N11p1rlMRc
 xT1g==
X-Gm-Message-State: AGi0PuYcveMA+5MDQMT6H4N57CmYHdyxd/P9wC7a4r8Wp8yFHn0u4RVt
 aWhhuXmdiOUy/lJIQEgFAyTiawBUg4Wal1nrZw==
X-Google-Smtp-Source: APiQypJgpxsWsL1/rqxS8jShx8LvhL/HNRMwdmIziND/imA2egScVz6XVl7uFdi+dGT815fGyFrOS+dYbkEOVYCLwbE=
X-Received: by 2002:ac2:4554:: with SMTP id j20mr3396435lfm.91.1588358933133; 
 Fri, 01 May 2020 11:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200423165457.54388-1-larsh@apache.org>
 <20200423215709.72993-1-larsh@apache.org>
 <11041815.WYjWQN8m1R@lenovodario>
 <CAM_y6qhV6r9BVE6Uibn=xpDZRYuhZDBBgfHT8fMECNS1DyaQwQ@mail.gmail.com>
 <1605997626.1278142.1588119634625@mail.yahoo.com>
In-Reply-To: <1605997626.1278142.1588119634625@mail.yahoo.com>
From: civic9 <civic9@gmail.com>
Date: Fri, 1 May 2020 20:48:41 +0200
Message-ID: <CAM_y6qidfABBaxpctfFOrN1KaEcXOYw9tww6LWfp-P+RB2hFbA@mail.gmail.com>
To: "larsh@apache.org" <larsh@apache.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (civic9[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (civic9[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jUaiZ-00734u-QS
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
Cc: agk@godking.net, kjslag@gmail.com, bastidoerner@gmail.com,
 Dario Messina <nanodario@gmail.com>, ibm-acpi@hmh.eng.br, sassmann@kpanic.de,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 arc@osknowledge.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

xZtyLiwgMjkga3dpIDIwMjAgbyAwMjoyMSBsYXJzaEBhcGFjaGUub3JnIDxsYXJzaEBhcGFjaGUu
b3JnPiBuYXBpc2HFgihhKToKPgo+IERvIHlvdSBoYXZlIGEgdXNlIGNhc2UgZm9yIHRoYXQgYmVo
YXZpb3I/CgpJIHdvcmsgdmVyeSBvZnRlbiB3aXRoIGp1c3Qgb25lIGZhbiBlbmFibGVkIGF0IHRo
ZSBsb3dlc3QgbGV2ZWwuIEl0IGlzCmluYXVkaWJsZSBmb3IgbWUgYW5kIGl0IGRvZXMgaXRzIGpv
YiBmb3Igbm90IHRvbyBoZWF2eSB1c2FnZS4gSWYgdGhlCnNlY29uZCBvbmUgaXMgYWxzbyBlbmFi
bGVkIEkgY2FuIGhlYXIgdGhlbS4gV2UgbG92ZSBMaW51eCBmb3Igc3VjaApzbWFsbCBleHRyYSBm
ZWF0dXJlcyB0b28uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9pYm0tYWNwaS1kZXZlbAo=
