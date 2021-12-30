Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDC0481E16
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 30 Dec 2021 17:30:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n2yJK-0007ED-5R; Thu, 30 Dec 2021 16:29:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rjwysocki@gmail.com>) id 1n2yJJ-0007E7-Gl
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Dec 2021 16:29:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rIE0hD6v5+o3+ccVAghnpo8R1EgVOu3GGzhoi4/HkIo=; b=ejlTNYVtPbXUQwdDHfeEtCGUzD
 zCBadlGrNvHl17yDPCekhZaxj70ZTT0pc5XOE60v8aMvSZhZtu8lRkeGXDj7E++CzPbeHd+IPzGB/
 xTo4pz2u71PTIE6UrcPhtOqv2bhZMhPwJhQM3KhzVVj32OBvmMD9XqMfoW1QUG1HBpZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rIE0hD6v5+o3+ccVAghnpo8R1EgVOu3GGzhoi4/HkIo=; b=AvgaoJm/SSYlRa/QTcgm0y8i5h
 9X2Jd+QmSj88+lGKxXM1CNFvpxYeSk41asu4fHgf4E3pUu2baq0fymDbJvspCy6hdYD41/J0mSZfQ
 Qzt6o4ZXLD0dZHHV1I4eiI3zuQAtd1CEwdr9FhpKhdHV2Ue6N2TMiBOOHt+KLEmKnSxs=;
Received: from mail-qk1-f182.google.com ([209.85.222.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n2yJK-0007pH-2H
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 30 Dec 2021 16:29:50 +0000
Received: by mail-qk1-f182.google.com with SMTP id w27so16978969qkj.7
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 30 Dec 2021 08:29:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rIE0hD6v5+o3+ccVAghnpo8R1EgVOu3GGzhoi4/HkIo=;
 b=FRa8vnH7IqnVoBTddYNgAH6WpzhCwapMiAHDjrOWm4gOoYmOsP2u0BExVJ6w2OD+Ps
 Br7q+9ziHpvQpQe/zXNBtCgPo6c9B/6ynlVGvWzP7tuJuwgtzEy/pQ+TKDwbaBtsyKP/
 nUXr5WtCQfJbVzpaeqZySwS4ecaQaFaMM2ks1hEmIdZGZ9emr5mSG9CBQ+Iif/u/Pmlg
 LViJnAaNQJRuHKQSVkfh+58nOBs6aSZS5j83uihQrVeZ3gvPZV0pITaTYFIc8CffUDlm
 P0AwbtcoumQ/zWxH6PgEW5/LaHRSLRNKB7BCuQv9gr75L9LnD7IODYB7uP0sE8T3iR9b
 3heQ==
X-Gm-Message-State: AOAM532j2oSqD8eiM3BaqtfYV7FKWTSIOiueFQst1YHt1yEeSjUSEHEa
 zmwTpaSIz6hBNWVWP0pHI0fYCEGgFec7Nt4bkKM=
X-Google-Smtp-Source: ABdhPJxdzkS1bQFm0Pe0d0VEkepbe2qMDW95s63oUGlvrYCMDpFeBVzMoZXxdCzPfU0KgR4hP6SJHWOOKX4yG1jypUY=
X-Received: by 2002:a37:b702:: with SMTP id h2mr22394075qkf.135.1640881784332; 
 Thu, 30 Dec 2021 08:29:44 -0800 (PST)
MIME-Version: 1.0
References: <20211222212014.66971-1-linux@weissschuh.net>
 <31a528b8-8318-dc09-3a06-80f76771744a@redhat.com>
In-Reply-To: <31a528b8-8318-dc09-3a06-80f76771744a@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Dec 2021 17:29:33 +0100
Message-ID: <CAJZ5v0jdJNh4QB=-=TCKPZNYnvREPKor+mMyyUZZP8GBMn-ZFQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Dec 23, 2021 at 5:36 PM Hans de Goede <hdegoede@redhat.com>
    wrote: > > Hi Thomas, > > On 12/22/21 22:20, Thomas Weißschuh wrote: > >
    The EC/ACPI firmware on Lenovo ThinkPads used to report a [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.182 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rjwysocki[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.182 listed in wl.mailspike.net]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1n2yJK-0007pH-2H
Subject: Re: [ibm-acpi-devel] [PATCH] ACPI: battery: Add the ThinkPad "Not
 Charging" quirk
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, David Zeuthen <davidz@redhat.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Richard Hughes <richard@hughsie.com>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Bastien Nocera <hadess@hadess.net>, Mark Pearson <markpearson@lenovo.com>,
 Ognjen Galic <smclt30p@gmail.com>, ibm-acpi-devel@lists.sourceforge.net,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gVGh1LCBEZWMgMjMsIDIwMjEgYXQgNTozNiBQTSBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUBy
ZWRoYXQuY29tPiB3cm90ZToKPgo+IEhpIFRob21hcywKPgo+IE9uIDEyLzIyLzIxIDIyOjIwLCBU
aG9tYXMgV2Vpw59zY2h1aCB3cm90ZToKPiA+IFRoZSBFQy9BQ1BJIGZpcm13YXJlIG9uIExlbm92
byBUaGlua1BhZHMgdXNlZCB0byByZXBvcnQgYSBzdGF0dXMKPiA+IG9mICJVbmtub3duIiB3aGVu
IHRoZSBiYXR0ZXJ5IGlzIGJldHdlZW4gdGhlIGNoYXJnZSBzdGFydCBhbmQKPiA+IGNoYXJnZSBz
dG9wIHRocmVzaG9sZHMuIE9uIFdpbmRvd3MsIGl0IHJlcG9ydHMgIk5vdCBDaGFyZ2luZyIKPiA+
IHNvIHRoZSBxdWlyayBoYXMgYmVlbiBhZGRlZCB0byBhbHNvIHJlcG9ydCBjb3JyZWN0bHkuCj4g
Pgo+ID4gTm93IHRoZSAic3RhdHVzIiBhdHRyaWJ1dGUgcmV0dXJucyAiTm90IENoYXJnaW5nIiB3
aGVuIHRoZQo+ID4gYmF0dGVyeSBvbiBUaGlua1BhZHMgaXMgbm90IHBoeXNpY2FseSBjaGFyZ2lu
Zy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgV2Vpw59zY2h1aCA8bGludXhAd2Vpc3Nz
Y2h1aC5uZXQ+Cj4KPiBUaGFua3MsIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuCj4KPiBBcyBmb3Ig
dGhlIHVzZXJzcGFjZSBpc3N1ZXMgaW4gZGVhbGluZyB3aXRoIHRoZQo+IFBPV0VSX1NVUFBMWV9T
VEFUVVNfTk9UX0NIQVJHSU5HIHN0YXR1cywgdGhvc2UgaW5kZWVkCj4gaGF2ZSBsb25nIGJlZW4g
Zml4ZWQgYW5kIHRoaXMgc3RhdHVzIGlzIGFscmVhZHkgcmV0dXJuZWQKPiBhY3BpLy9iYXR0ZXJ5
LmMgZnJvbSB0aGUgYWNwaV9iYXR0ZXJ5X2hhbmRsZV9kaXNjaGFyZ2luZygpCj4gZnVuY3Rpb24g
Zm9yIGEgd2hpbGUgbm87IGFuZCB3ZSBoYXZlIGhhZCBubyBjb21wbGFpbnRzCj4gYWJvdXQgdGhh
dDoKPgo+IFJldmlld2VkLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgoK
QXBwbGllZCBhcyA1LjE3IG1hdGVyaWFsLCB0aGFua3MhCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0Cmli
bS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
