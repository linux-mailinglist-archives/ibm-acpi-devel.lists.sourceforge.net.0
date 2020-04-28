Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D08E81BCE81
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 28 Apr 2020 23:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jTXcq-000390-GZ; Tue, 28 Apr 2020 21:18:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <civic9@gmail.com>) id 1jTXcp-00038m-BG
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Apr 2020 21:18:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DH3lbVdHca92rSuBZkBtWHIkQSjQBDDZMjTnCWaOG5I=; b=SIuKD4bgJ9VuCY6XrrgHt07jzJ
 rPVJCt2VI8MPalZ2ueBDGToLrbO1Pf6Fp5q2wscJmj6ED1zdw0rrKlJMLz95Yg4hkvZsTl9iQP8ar
 sIulhW9ozhq60T1Mr4qIXFstJVFzmIPB8OiC+eGSs0zo1dNJkbAEtM5H/bWXDij175Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DH3lbVdHca92rSuBZkBtWHIkQSjQBDDZMjTnCWaOG5I=; b=YRmGcwC5wZVT2I7ugROPPblJ9v
 cw+44NrvYeV2e8SniehWxlTJYD6oeTr/DeODeLcmDAABaiU0zF8tkZCwez8KdsGu0PB6tgv6VlOz5
 fOts6Gtwn6njNN3noTINRDP0hLNaKk9ew2nZulunWexLTHEsZccWyFYmGiSkERRJoy2k=;
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jTXcn-00FV1Z-S8
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Apr 2020 21:18:43 +0000
Received: by mail-lj1-f195.google.com with SMTP id g4so346960ljl.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 28 Apr 2020 14:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DH3lbVdHca92rSuBZkBtWHIkQSjQBDDZMjTnCWaOG5I=;
 b=aGCan7OpFSrUJU4yfEnYLDl0CYDjk0ViNnBlLcJU4hvN2oxxkefuOfMRsbrxQSuFF1
 sxd+4UQtfRt5YNlrz8h6f4EwuhK6M2gXAfVsMg3ogBWaJR0pe+Nf3KCPxZRru9OzVvm/
 i7bp1WxOjlWQdgMhMMqPkS8YG5NyxG2H9YSOdV0Doxm34G2OAgKvkIL+oVls0/5bDBaw
 s8uY9nDKJcNe7WSf6uIqP0i4p0i/pCaxTWznLFQwXS9yu7YamU2jDqaPu62kGvcKwj++
 TuRRMIbiEptTT3NOHE0fFLVhRLhRwPECprBuExk1Bd+tr4KLJpVDN1UaUgceUaomchmg
 1p/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DH3lbVdHca92rSuBZkBtWHIkQSjQBDDZMjTnCWaOG5I=;
 b=DHAPHIeaI6J2tkL6KGdyTyb6COIqyYDVzSZweNVjWrqol+49xRuPHlW1SqQ5l4QFNT
 7bOCYQ703+Z9XAwLHmwux+OhVSNbXTK+qJaL8a/znIewpisFT7mdmPOuj5Lx9AS+qRtd
 QMKhdU3jww30ggNfiZ7dV7uNkrq08bw3Q52BUPOkvET3+S2S4UcjWR7BX09PK4qyscD4
 Z1Rq3ihOnZRL22lNLOehP8Mkz456UK5wp/N4KI0ZL90MvFDF2iZLDHbVV472BWeCFd7Z
 A4INlXN/0Z9D7DHJjn06WhiBlc2M5TUBoKRq1qq8Y8RDwocSgMw4UKZrGTjH76dUP8Gf
 mM6w==
X-Gm-Message-State: AGi0PuYIASTW24U8wgoRn0oL3AOaO0O/lCuojxNL+7syR61IQFfhwWzF
 0h0bKrla9ySDoMC40x0NDXE9GNB2YLAa0cHC0l2SrX7b5w==
X-Google-Smtp-Source: APiQypJqJIDbS3OAV/PUigRxko9bAdoMGaTfmn/8zXAbv9RdUr8pF0rp9dFK+KFfW/mAhtjMiKAKWZ0rHJPERFa+P7I=
X-Received: by 2002:a2e:99cc:: with SMTP id l12mr19286755ljj.290.1588108715186; 
 Tue, 28 Apr 2020 14:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200423165457.54388-1-larsh@apache.org>
 <20200423215709.72993-1-larsh@apache.org>
 <11041815.WYjWQN8m1R@lenovodario>
In-Reply-To: <11041815.WYjWQN8m1R@lenovodario>
From: civic9 <civic9@gmail.com>
Date: Tue, 28 Apr 2020 23:18:24 +0200
Message-ID: <CAM_y6qhV6r9BVE6Uibn=xpDZRYuhZDBBgfHT8fMECNS1DyaQwQ@mail.gmail.com>
To: Dario Messina <nanodario@gmail.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (civic9[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (civic9[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jTXcn-00FV1Z-S8
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
 ibm-acpi@hmh.eng.br, sassmann@kpanic.de, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Lars <larsh@apache.org>,
 arc@osknowledge.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

cG9uLiwgMjcga3dpIDIwMjAgbyAyMDo0MSBEYXJpbyBNZXNzaW5hIDxuYW5vZGFyaW9AZ21haWwu
Y29tPiBuYXBpc2HFgihhKToKPgo+IE9uIFRodSwgQXByIDIzLCAyMDIwIGF0IDIzOjU3OjU5IENF
U1QsIExhcnMgPGxhcnNoQGFwYWNoZS5vcmc+IHdyb3RlOgo+ID4gVGhpcyBhZGRzIGR1YWwgZmFu
IGNvbnRyb2wgZm9yIHRoZSBmb2xsb3dpbmcgbW9kZWxzOgo+ID4gUDUwLCBQNTEsIFA1MiwgUDcw
LCBQNzEsIFA3MiwgUDEgZ2VuMSwgWDFFIGdlbjEsIFAyIGdlbjIsIGFuZCBYMUUgZ2VuMi4KPiA+
Cj4gPiBCb3RoIGZhbnMgYXJlIGNvbnRyb2xsZWQgdG9nZXRoZXIgYXMgaWYgdGhleSB3ZXJlIGEg
c2luZ2xlIGZhbi4KPiA+IFsuLi5dCj4gPiBCYWNrZ3JvdW5kOgo+ID4gSSB0ZXN0ZWQgdGhlIEJJ
T1MgZGVmYXVsdCBiZWhhdmlvciBvbiBteSBYMUUgZ2VuMiBhbmQgYm90aCBmYW5zIGFyZSBhbHdh
eXMKPiA+IGNoYW5nZWQgdG9nZXRoZXIuIFNvIHJhdGhlciB0aGFuIGFkZGluZyBjb250cm9scyBm
b3IgZWFjaCBmYW4sIHRoaXMgY29udHJvbHMKPiA+IGJvdGggZmFucyB0b2dldGhlciBhcyB0aGUg
QklPUyB3b3VsZCBkby4KPiBIaSBMYXJzLCB3aHkgaGF2ZSB5b3UgY2hvc2VuIHRvIGNvbnRyb2wg
bXVsdGlwbGUgZmFucyBpbiB0aGlzIHdheT8KPiBJIGtub3cgdGhhdCBCSU9TIGNvbnRyb2xzIGJv
dGggZmFucyB0b2dldGhlciwgYnV0IHRoZSBFQyBoYXMgdGhlIGNhcGFiaWxpdGllcwo+IHRvIGNv
bnRyb2wgYm90aCBmYW5zIGluZGVwZW5kZW50bHksIHNvIG1heWJlIGl0IGNhbiBiZSBjb252ZW5p
ZW50IHRvIGV4cG9zZQo+IHRoaXMgZmVhdHVyZS4KCisxClByZXZpb3VzIHZlcnNpb24gb2YgdGhl
IHBhdGNoIFsxXSBhbGxvd3MgdG8gY29udHJvbCBib3RoIGZhbnMgaW5kZXBlbmRlbnRseS4KSG93
ZXZlciBzb21lIHNvZnR3YXJlIGxpa2UgdGhpbmtmYW4gaXMgbm90IHJlYWR5IHRvIGNvbnRyb2wg
dHdvIGZhbnMuCkJ1dCBJIGFsc28gdGhpbmsgdGhpcyBmZWF0dXJlIHNob3VsZCBiZSBhdCBsZWFz
dCBvcHRpb25hbGx5IGV4cG9zZWQuCgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL2NpdmljOS90aGlu
a3BhZF9hY3BpLjJuZGZhbi5wYXRjaC9ibG9iL21hc3Rlci90aGlua3BhZF9hY3BpLjJuZGZhbi5w
YXRjaC90aGlua3BhZF9hY3BpLjJuZGZhbi5wYXRjaAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0t
YWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
