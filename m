Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97677A10D47
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 14 Jan 2025 18:14:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tXkUY-0006u1-TU;
	Tue, 14 Jan 2025 17:14:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rafael@kernel.org>) id 1tXkUW-0006ts-U4
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 14 Jan 2025 17:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/FH3Z6HmoQ9w3Bo1UyPW9U9mRQzZavx0GZ9WrxH0Kfo=; b=Y6EQeUsAVCJ5RuGi+M3jgtamNi
 UibtA9aq4zR/4Nm8F1G0Gcrnim4lr7uvzk6MMPylIc7nMqwfsAc4Sl7Q4QBhAsyYobKFCYGEp88nr
 Q2vwrJRGj2F1jtUDv47zSxx9ezCOBUJU6U6n6LksjUCk8dQqfdf1NsLxb60CHYd87RMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/FH3Z6HmoQ9w3Bo1UyPW9U9mRQzZavx0GZ9WrxH0Kfo=; b=WZ9vl1ZvdF9I91jhgaCGzy52bT
 VVv9vO6x+eRD0pnPklmbkFrZfbfGc1AT45NhcxEPrxtmj4C4ail4JpcqS2xCNbDc8VieS2ryq87tJ
 sNpSbJ3/XDc3ubT5f1Eh+qhBAdNxxYWQ4YO4AWVvWyftki5mF23ZHw0ipkwQWR8nC+Bs=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXkUW-0002Ey-11 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 14 Jan 2025 17:14:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2E7BEA4192E
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 Jan 2025 17:12:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED3D1C4CEE4
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 Jan 2025 17:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736874841;
 bh=6xElT7U2OxBKAh95+jSWPMTILfpv5e1HIARlEGGndd0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ut4aybP/OZX091hL+sp36MMAdTISdx8YbcTBjUzcHX3zqu2ZkKT3PLJKweArxmv0P
 KKGNZhJBR2qbqyEly6WqcCVyi/uaSafJKjYlnj8qTnp2JgWhVs/KKntGldb+VGTc1U
 /FHGiL4UsG1YMlNE8Y11mzALdUlPAxIoJxDeJ6QWstFXGMZObtkMQuvqNuhew9XhDk
 bYkPvqTFdrVYQPNbBduNIO0rg7wXCDg9HUfnzVZ/sVFBrjaU1wV5ZX0gw+y7jz666K
 71/nUxKgiMWtc7uzRbLOOB+waIzzBZuKlOhHTSxafbk+D/2oaiOO1J5aPKSgu19zqR
 wdeos93dZ3o2g==
Received: by mail-oi1-f176.google.com with SMTP id
 5614622812f47-3ebc678b5c9so3116308b6e.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 14 Jan 2025 09:14:00 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVJKjPPxKLROhPAtyZ2hV4uVrONcQdjEZVkacYSKVzct+hF5R24d+5pMYjOqLrSnw/2WB8dWc8BT1zqHMHPNg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxAmqFz9XKyOQ3KzguffhkTv5+pGeeWlosh0gJ7QZzXa4qzhxn0
 QO9j8+DMWO+zDD5l49NC3bYE8dcGKdbjEY+QCWesBWnugrslMbecodBgk/NslxxaNX843u9GwUZ
 SaSzmd3IHYg1QTTUiAdwPw6G5Aqo=
X-Google-Smtp-Source: AGHT+IEt3nGfMxwItJjhYapytL6AT8hJDw8/2MgLlURGGNP/SPCUu6W4hR86aukYTLfeIKl3SjrBI84mzzoUcdNL/kg=
X-Received: by 2002:a05:6808:2797:b0:3ec:df52:a3c8 with SMTP id
 5614622812f47-3ef2ed70cdcmr13797668b6e.34.1736874840144; Tue, 14 Jan 2025
 09:14:00 -0800 (PST)
MIME-Version: 1.0
References: <20250114153726.11802-1-kuurtb@gmail.com>
 <20250114153726.11802-16-kuurtb@gmail.com>
 <b271023f-8a84-a48d-2d59-f0815014687b@linux.intel.com>
In-Reply-To: <b271023f-8a84-a48d-2d59-f0815014687b@linux.intel.com>
Date: Tue, 14 Jan 2025 18:13:48 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0i8HNj5ztnt2K=QqL6eCUCEFbcDgAt2AWWhG4UwHL_EuQ@mail.gmail.com>
X-Gm-Features: AbW1kva6vQScZRlnDpQXOEObMQad5T55fCAdtzyYdgfxK0lrwuD5SajX6BkxvEs
Message-ID: <CAJZ5v0i8HNj5ztnt2K=QqL6eCUCEFbcDgAt2AWWhG4UwHL_EuQ@mail.gmail.com>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jan 14, 2025 at 5:55 PM Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
    wrote: > > On Tue, 14 Jan 2025, Kurt Borja wrote: > > > In order to protect
    the platform_profile_handler from API consu [...] 
 
 Content analysis details:   (-2.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [147.75.193.91 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [147.75.193.91 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [147.75.193.91 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tXkUW-0002Ey-11
Subject: Re: [ibm-acpi-devel] [PATCH v2 15/18] ACPI: platform_profile:
 Remove platform_profile_handler from exported symbols
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
From: "Rafael J. Wysocki via ibm-acpi-devel"
 <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net,
 Mario Limonciello <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Alexis Belmonte <alexbelm48@gmail.com>, "Luke D. Jones" <luke@ljones.dev>,
 Lyndon Sanche <lsanche@lyndeno.ca>, Ai Chao <aichao@kylinos.cn>,
 "Derek J. Clark" <derekjohn.clark@gmail.com>, linux-acpi@vger.kernel.org,
 Kurt Borja <kuurtb@gmail.com>, Gergo Koteles <soyer@irl.hu>,
 Len Brown <lenb@kernel.org>, "Lee, Chun-Yi" <jlee@suse.com>,
 Hans de Goede <hdegoede@redhat.com>, Dell.Client.Kernel@dell.com,
 Joshua Grisham <josh@joshuagrisham.com>, Armin Wolf <W_Armin@gmx.de>,
 LKML <linux-kernel@vger.kernel.org>, Corentin Chary <corentin.chary@gmail.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gVHVlLCBKYW4gMTQsIDIwMjUgYXQgNTo1NeKAr1BNIElscG8gSsOkcnZpbmVuCjxpbHBvLmph
cnZpbmVuQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIDE0IEphbiAyMDI1LCBL
dXJ0IEJvcmphIHdyb3RlOgo+Cj4gPiBJbiBvcmRlciB0byBwcm90ZWN0IHRoZSBwbGF0Zm9ybV9w
cm9maWxlX2hhbmRsZXIgZnJvbSBBUEkgY29uc3VtZXJzLAo+ID4gYWxsb2NhdGUgaXQgaW4gcGxh
dGZvcm1fcHJvZmlsZV9yZWdpc3RlcigpIGFuZCBtb2RpZnkgaXQncyBzaWduYXR1cmUKPiA+IGFj
Y29yZGluZ2x5Lgo+ID4KPiA+IFJlbW92ZSB0aGUgcGxhdGZvcm1fcHJvZmlsZV9oYW5kbGVyIGZy
b20gYWxsIGNvbnN1bWVyIGRyaXZlcnMgYW5kCj4gPiByZXBsYWNlIHRoZW0gd2l0aCBhIHBvaW50
ZXIgdG8gdGhlIGNsYXNzIGRldmljZSwgd2hpY2ggaXMKPiA+IG5vdyByZXR1cm5lZCBmcm9tIHBs
YXRmb3JtX3Byb2ZpbGVfcmVnaXN0ZXIoKS4KPiA+Cj4gPiBSZXBsYWNlICpwcHJvZiB3aXRoIGEg
cG9pbnRlciB0byB0aGUgY2xhc3MgZGV2aWNlIGluIHRoZSByZXN0IG9mCj4gPiBleHBvcnRlZCBz
eW1ib2xzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEt1cnQgQm9yamEgPGt1dXJ0YkBnbWFpbC5j
b20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2FjcGkvcGxhdGZvcm1fcHJvZmlsZS5jICAgICAgICAg
ICAgICAgfCA4NyArKysrKysrKysrKystLS0tLS0tCj4gPiAgLi4uL3N1cmZhY2Uvc3VyZmFjZV9w
bGF0Zm9ybV9wcm9maWxlLmMgICAgICAgIHwgMTEgKystCj4gPiAgZHJpdmVycy9wbGF0Zm9ybS94
ODYvYWNlci13bWkuYyAgICAgICAgICAgICAgIHwgMTggKystLQo+ID4gIGRyaXZlcnMvcGxhdGZv
cm0veDg2L2FtZC9wbWYvcG1mLmggICAgICAgICAgICB8ICAyICstCj4gPiAgZHJpdmVycy9wbGF0
Zm9ybS94ODYvYW1kL3BtZi9zcHMuYyAgICAgICAgICAgIHwgMTcgKystLQo+ID4gIGRyaXZlcnMv
cGxhdGZvcm0veDg2L2FzdXMtd21pLmMgICAgICAgICAgICAgICB8IDIwICsrLS0tCj4gPiAgZHJp
dmVycy9wbGF0Zm9ybS94ODYvZGVsbC9hbGllbndhcmUtd21pLmMgICAgIHwgIDkgKy0KPiA+ICBk
cml2ZXJzL3BsYXRmb3JtL3g4Ni9kZWxsL2RlbGwtcGMuYyAgICAgICAgICAgfCAyMiArKy0tLQo+
ID4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2hwL2hwLXdtaS5jICAgICAgICAgICAgICB8IDE5ICsr
LS0KPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9pZGVhcGFkLWxhcHRvcC5jICAgICAgICAgfCAx
NCArLS0KPiA+ICAuLi4vcGxhdGZvcm0veDg2L2luc3B1cl9wbGF0Zm9ybV9wcm9maWxlLmMgICAg
fCAgOSArLQo+ID4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyAgICAgICAg
ICB8IDE0ICsrLQo+ID4gIGluY2x1ZGUvbGludXgvcGxhdGZvcm1fcHJvZmlsZS5oICAgICAgICAg
ICAgICB8IDEyICsrLQo+ID4gIDEzIGZpbGVzIGNoYW5nZWQsIDEyNSBpbnNlcnRpb25zKCspLCAx
MjkgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNwaS9wbGF0Zm9y
bV9wcm9maWxlLmMgYi9kcml2ZXJzL2FjcGkvcGxhdGZvcm1fcHJvZmlsZS5jCj4gPiBpbmRleCAz
NGUyMmIwMDZjY2MuLjJmYWU1ZTJmYzk2MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvYWNwaS9w
bGF0Zm9ybV9wcm9maWxlLmMKPiA+ICsrKyBiL2RyaXZlcnMvYWNwaS9wbGF0Zm9ybV9wcm9maWxl
LmMKPiA+IEBAIC00LDYgKzQsNyBAQAo+ID4KPiA+ICAjaW5jbHVkZSA8bGludXgvYWNwaS5oPgo+
ID4gICNpbmNsdWRlIDxsaW51eC9iaXRzLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2NsZWFudXAu
aD4KPiA+ICAjaW5jbHVkZSA8bGludXgvaW5pdC5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9rZGV2
X3QuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KPiA+IEBAIC0yMTMsOSArMjE0LDE3
IEBAIHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICpwcm9maWxlX2F0dHJzW10gPSB7Cj4gPiAgfTsK
PiA+ICBBVFRSSUJVVEVfR1JPVVBTKHByb2ZpbGUpOwo+ID4KPiA+ICtzdGF0aWMgdm9pZCBwcHJv
Zl9kZXZpY2VfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiArewo+ID4gKyAgICAgc3Ry
dWN0IHBsYXRmb3JtX3Byb2ZpbGVfaGFuZGxlciAqcHByb2YgPSB0b19wcHJvZl9oYW5kbGVyKGRl
dik7Cj4gPiArCj4gPiArICAgICBrZnJlZShwcHJvZik7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgY2xhc3MgcGxhdGZvcm1fcHJvZmlsZV9jbGFzcyA9IHsKPiA+ICAgICAg
IC5uYW1lID0gInBsYXRmb3JtLXByb2ZpbGUiLAo+ID4gICAgICAgLmRldl9ncm91cHMgPSBwcm9m
aWxlX2dyb3VwcywKPiA+ICsgICAgIC5kZXZfcmVsZWFzZSA9IHBwcm9mX2RldmljZV9yZWxlYXNl
LAo+ID4gIH07Cj4gPgo+ID4gIC8qKgo+ID4gQEAgLTQwOSwxMCArNDE4LDEwIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwIHBsYXRmb3JtX3Byb2ZpbGVfZ3JvdXAgPSB7Cj4g
PiAgICAgICAuaXNfdmlzaWJsZSA9IHByb2ZpbGVfY2xhc3NfaXNfdmlzaWJsZSwKPiA+ICB9Owo+
ID4KPiA+IC12b2lkIHBsYXRmb3JtX3Byb2ZpbGVfbm90aWZ5KHN0cnVjdCBwbGF0Zm9ybV9wcm9m
aWxlX2hhbmRsZXIgKnBwcm9mKQo+ID4gK3ZvaWQgcGxhdGZvcm1fcHJvZmlsZV9ub3RpZnkoc3Ry
dWN0IGRldmljZSAqZGV2KQo+ID4gIHsKPiA+ICAgICAgIHNjb3BlZF9jb25kX2d1YXJkKG11dGV4
X2ludHIsIHJldHVybiwgJnByb2ZpbGVfbG9jaykgewo+ID4gLSAgICAgICAgICAgICBfbm90aWZ5
X2NsYXNzX3Byb2ZpbGUoJnBwcm9mLT5jbGFzc19kZXYsIE5VTEwpOwo+ID4gKyAgICAgICAgICAg
ICBfbm90aWZ5X2NsYXNzX3Byb2ZpbGUoZGV2LCBOVUxMKTsKPiA+ICAgICAgIH0KPiA+ICAgICAg
IHN5c2ZzX25vdGlmeShhY3BpX2tvYmosIE5VTEwsICJwbGF0Zm9ybV9wcm9maWxlIik7Cj4gPiAg
fQo+ID4gQEAgLTQ2MSw0MCArNDcwLDUxIEBAIGludCBwbGF0Zm9ybV9wcm9maWxlX2N5Y2xlKHZv
aWQpCj4gPiAgfQo+ID4gIEVYUE9SVF9TWU1CT0xfR1BMKHBsYXRmb3JtX3Byb2ZpbGVfY3ljbGUp
Owo+ID4KPiA+IC1pbnQgcGxhdGZvcm1fcHJvZmlsZV9yZWdpc3RlcihzdHJ1Y3QgcGxhdGZvcm1f
cHJvZmlsZV9oYW5kbGVyICpwcHJvZiwgdm9pZCAqZHJ2ZGF0YSkKPiA+ICtzdHJ1Y3QgZGV2aWNl
ICpwbGF0Zm9ybV9wcm9maWxlX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hh
ciAqbmFtZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQg
KmRydmRhdGEsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25z
dCBzdHJ1Y3QgcGxhdGZvcm1fcHJvZmlsZV9vcHMgKm9wcykKPiA+ICB7Cj4gPiArICAgICBpbnQg
bWlub3I7Cj4gPiAgICAgICBpbnQgZXJyOwo+ID4KPiA+IC0gICAgIC8qIFNhbml0eSBjaGVjayB0
aGUgcHJvZmlsZSBoYW5kbGVyICovCj4gPiAtICAgICBpZiAoIXBwcm9mIHx8ICFwcHJvZi0+b3Bz
LT5wcm9maWxlX3NldCB8fCAhcHByb2YtPm9wcy0+cHJvZmlsZV9nZXQgfHwKPiA+IC0gICAgICAg
ICAhcHByb2YtPm9wcy0+cHJvYmUpIHsKPiA+ICsgICAgIC8qIFNhbml0eSBjaGVjayAqLwo+ID4g
KyAgICAgaWYgKCFkZXYgfHwgIW5hbWUgfHwgIW9wcyB8fCAhb3BzLT5wcm9maWxlX2dldCB8fAo+
ID4gKyAgICAgICAgICFvcHMtPnByb2ZpbGVfc2V0IHx8ICFvcHMtPnByb2JlKSB7Cj4gPiAgICAg
ICAgICAgICAgIHByX2VycigicGxhdGZvcm1fcHJvZmlsZTogaGFuZGxlciBpcyBpbnZhbGlkXG4i
KTsKPiA+IC0gICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiArICAgICAgICAgICAgIHJl
dHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ID4gICAgICAgfQo+ID4KPiA+IC0gICAgIGVyciA9IHBw
cm9mLT5vcHMtPnByb2JlKGRydmRhdGEsIHBwcm9mLT5jaG9pY2VzKTsKPiA+ICsgICAgIHN0cnVj
dCBwbGF0Zm9ybV9wcm9maWxlX2hhbmRsZXIgKnBwcm9mIF9fZnJlZShrZnJlZSkgPSBremFsbG9j
KAo+ID4gKyAgICAgICAgICAgICBzaXplb2YoKnBwcm9mKSwgR0ZQX0tFUk5FTCk7Cj4gPiArICAg
ICBpZiAoIXBwcm9mKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsK
PiA+ICsKPiA+ICsgICAgIGVyciA9IG9wcy0+cHJvYmUoZHJ2ZGF0YSwgcHByb2YtPmNob2ljZXMp
Owo+ID4gICAgICAgaWYgKGVyciA8IDApCj4gPiAtICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4g
PiArICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKGVycik7Cj4gPgo+ID4gICAgICAgaWYgKGJp
dG1hcF9lbXB0eShwcHJvZi0+Y2hvaWNlcywgUExBVEZPUk1fUFJPRklMRV9MQVNUKSkgewo+ID4g
ICAgICAgICAgICAgICBwcl9lcnIoInBsYXRmb3JtX3Byb2ZpbGU6IG5vIGF2YWlsYWJsZSBwcm9m
aWxlc1xuIik7Cj4gPiAtICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gKyAgICAgICAg
ICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiA+ICAgICAgIH0KPiA+Cj4gPiAgICAgICBn
dWFyZChtdXRleCkoJnByb2ZpbGVfbG9jayk7Cj4gPgo+ID4gICAgICAgLyogY3JlYXRlIGNsYXNz
IGludGVyZmFjZSBmb3IgaW5kaXZpZHVhbCBoYW5kbGVyICovCj4gPiAtICAgICBwcHJvZi0+bWlu
b3IgPSBpZGFfYWxsb2MoJnBsYXRmb3JtX3Byb2ZpbGVfaWRhLCBHRlBfS0VSTkVMKTsKPiA+IC0g
ICAgIGlmIChwcHJvZi0+bWlub3IgPCAwKQo+ID4gLSAgICAgICAgICAgICByZXR1cm4gcHByb2Yt
Pm1pbm9yOwo+ID4gKyAgICAgbWlub3IgPSBpZGFfYWxsb2MoJnBsYXRmb3JtX3Byb2ZpbGVfaWRh
LCBHRlBfS0VSTkVMKTsKPiA+ICsgICAgIGlmIChtaW5vciA8IDApCj4gPiArICAgICAgICAgICAg
IHJldHVybiBFUlJfUFRSKG1pbm9yKTsKPiA+Cj4gPiArICAgICBwcHJvZi0+bmFtZSA9IG5hbWU7
Cj4gPiArICAgICBwcHJvZi0+b3BzID0gb3BzOwo+ID4gKyAgICAgcHByb2YtPm1pbm9yID0gbWlu
b3I7Cj4gPiAgICAgICBwcHJvZi0+Y2xhc3NfZGV2LmNsYXNzID0gJnBsYXRmb3JtX3Byb2ZpbGVf
Y2xhc3M7Cj4gPiAtICAgICBwcHJvZi0+Y2xhc3NfZGV2LnBhcmVudCA9IHBwcm9mLT5kZXY7Cj4g
PiArICAgICBwcHJvZi0+Y2xhc3NfZGV2LnBhcmVudCA9IGRldjsKPiA+ICAgICAgIGRldl9zZXRf
ZHJ2ZGF0YSgmcHByb2YtPmNsYXNzX2RldiwgZHJ2ZGF0YSk7Cj4gPiAgICAgICBkZXZfc2V0X25h
bWUoJnBwcm9mLT5jbGFzc19kZXYsICJwbGF0Zm9ybS1wcm9maWxlLSVkIiwgcHByb2YtPm1pbm9y
KTsKPiA+ICAgICAgIGVyciA9IGRldmljZV9yZWdpc3RlcigmcHByb2YtPmNsYXNzX2Rldik7Cj4g
PiAgICAgICBpZiAoZXJyKSB7Cj4gPiAtICAgICAgICAgICAgIHB1dF9kZXZpY2UoJnBwcm9mLT5j
bGFzc19kZXYpOwo+ID4gKyAgICAgICAgICAgICBwdXRfZGV2aWNlKCZub19mcmVlX3B0cihwcHJv
ZiktPmNsYXNzX2Rldik7Cj4gPiAgICAgICAgICAgICAgIGdvdG8gY2xlYW51cF9pZGE7Cj4gPiAg
ICAgICB9Cj4gPgo+ID4gQEAgLTUwNCwyMCArNTI0LDIxIEBAIGludCBwbGF0Zm9ybV9wcm9maWxl
X3JlZ2lzdGVyKHN0cnVjdCBwbGF0Zm9ybV9wcm9maWxlX2hhbmRsZXIgKnBwcm9mLCB2b2lkICpk
cnZkCj4gPiAgICAgICBpZiAoZXJyKQo+ID4gICAgICAgICAgICAgICBnb3RvIGNsZWFudXBfY3Vy
Owo+ID4KPiA+IC0gICAgIHJldHVybiAwOwo+ID4gKyAgICAgcmV0dXJuICZub19mcmVlX3B0cihw
cHJvZiktPmNsYXNzX2RldjsKPiA+Cj4gPiAgY2xlYW51cF9jdXI6Cj4gPiAtICAgICBkZXZpY2Vf
dW5yZWdpc3RlcigmcHByb2YtPmNsYXNzX2Rldik7Cj4gPiArICAgICBkZXZpY2VfdW5yZWdpc3Rl
cigmbm9fZnJlZV9wdHIocHByb2YpLT5jbGFzc19kZXYpOwo+Cj4gSSBkb24ndCBsaWtlIGhvdyB0
aGlzIGlzIGFyY2hpdGVjdGVkLgo+Cj4gSU1PLCBub19mcmVlX3B0cigpIHNob3VsZCBub3QgYXBw
ZWFyIG9uIGVycm9yL3JvbGxiYWNrIHBhdGhzLiBUaGUgcG9pbnRlcgo+IGlzIGdvaW5nIHRvIGJl
IGZyZWVkIGRlc3BpdGUgdGhlIGNvZGUganVzdCB0b2xkIGl0J3Mgbm90IGdvaW5nIHRvIGJlCj4g
ZnJlZWQsIHdoaWNoIHNlbmRzIGNvbmZsaWN0aW5nIHNpZ25hbHMuIE9idmlvdXNseSwgaXQgaXMg
YmVjYXVzZSB0aGlzCj4gZnVuY3Rpb24gaGFzIHJlbGlucXVpc2hlZCBpdHMgb3duZXJzaGlwIG9m
IHRoZSBwb2ludGVyIGJ1dCBhcyBpcyBpdCBzZWVtcwo+IGEgZGFuZ2Vyb3VzL2NvbmZ1c2luZyBw
YXR0ZXJuLgoKSSBhZ3JlZS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL2libS1hY3BpLWRldmVsCg==
