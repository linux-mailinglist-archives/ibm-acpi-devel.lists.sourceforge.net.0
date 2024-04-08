Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A95289CA61
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Apr 2024 19:06:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rtsQu-00082Z-Ef;
	Mon, 08 Apr 2024 17:05:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rafael@kernel.org>) id 1rtsQt-00082T-EN
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 17:05:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YExlJqiLqMopFhdtpObx1+TyOEE2pdaCVYf/UREPhyQ=; b=XmRlRNLkxCkKUH9kl8DhW6b6bL
 qIeEEzge3eyGywQbWVsgH5hZhNdHmARvcK9jxfvy/6umYwmcCeWRAXfw4QLOqfM4f9W84UEI0fHYW
 +GpEF9CR9meHA5OiVlR54UsFSRXq+0Pc1Mgdd0THDSNILdT8sXrDFIbjuaGE4kzTsS9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YExlJqiLqMopFhdtpObx1+TyOEE2pdaCVYf/UREPhyQ=; b=H7MB/9gaRLwXPCoJiTnV/1XFSY
 44MtFPIFgGHQzz7vUDiXYovisSjj9MqCOhAO2xNfEoHK/gEdY320BIPuqQvnOiV7n4uHaVvAug1hw
 CjGqO9OUd2qqihJsAbxg7vOsWRGcDjuaStTT0/smdBi4TsHCFwQGCEK6mRAzEsAPvo3M=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtsQs-0007NQ-Cd for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 17:05:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id B9286CE18C3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon,  8 Apr 2024 17:05:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03902C433F1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon,  8 Apr 2024 17:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712595910;
 bh=q3aHEkDIaUg/6DDpl2Hw0IWOkW0evQ42aHBcgH6sLDQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ioHiPICMdv/jEMGntcCv9aUV/MVpOZZDfda4pKRK3afqjK/qbxUA2oECXtWD0joET
 iiQWyqwAtSU5cFOmNQ5OUxdWsYd0oydyfmaYzmJ6lzb6tM0KGe2HVLp3qL+xqL5VnG
 69qN5d0DGlpowOhzRz6uwZJyNGoxEL6zBe6m90BJe7akUXvG0MPOoitCpLPOgYVhrL
 f2IYzUS3hGGp2tUMYXdhdhC8nZijZqDUYSr6X8C8wCkZ6XdbZjpueNtSry8p1pRanD
 rz7wAP0uBP0nCal1oa5/RCw3N0R8cZOBZhPjDxxC+pgi1dART1qBuAO0QC3g5MDmPj
 845tkPFRYlLyg==
Received: by mail-oo1-f48.google.com with SMTP id
 006d021491bc7-5a4e0859b65so1309707eaf.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Apr 2024 10:05:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWvV2foF189ldCr7QXRG5TrebQC2ewnKdT2E9MdY78IlV/hsz6YHacMY1ugKL8KLvLhQAdw1emCPKlMy+23PlRaRES8CIeVVhz+Li4iTCvqIMOB6k8=
X-Gm-Message-State: AOJu0Ywk87PKpoJupG1Ux3mjvyjNl38HFH54F5xbexdc9wn/VNhm2hdd
 BdpgcBi4dm4ohbIdHOhBFHPMAdgxxDAlT8ErEWQqN/957s/jBmc3Nn7CH1Q/ak//Z2njP3jP71H
 aZKeRQug3WhukNUE5mWNK1tCYfNc=
X-Google-Smtp-Source: AGHT+IEzjnPGX0iQ8amIZ3HV8gdrikLJRs4fdK6C3/HmSvcFMJx6nS6t2DWmTLeaL50L22e7Wnf/dcbFETWvuhpbUZc=
X-Received: by 2002:a4a:d0af:0:b0:5aa:241a:7f4b with SMTP id
 t15-20020a4ad0af000000b005aa241a7f4bmr5545431oor.1.1712595909295; Mon, 08 Apr
 2024 10:05:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1712360639.git.soyer@irl.hu>
 <afd975d98708921f67a269aaf031a1dd1be1220d.1712360639.git.soyer@irl.hu>
 <4e37511c-7570-4ea5-bdf9-6bdd62c63575@redhat.com>
In-Reply-To: <4e37511c-7570-4ea5-bdf9-6bdd62c63575@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 8 Apr 2024 19:04:58 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0jD=xECU=et=YHYbykyDjz4cBi6RvjmUrf4shzV2dJzRg@mail.gmail.com>
Message-ID: <CAJZ5v0jD=xECU=et=YHYbykyDjz4cBi6RvjmUrf4shzV2dJzRg@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Apr 8, 2024 at 6:41 PM Hans de Goede <hdegoede@redhat.com>
    wrote: > > Hi Gergo, > > On 4/6/24 2:01 AM, Gergo Koteles wrote: > > Some
    laptops have a key to switch platform profiles. > > > > A [...] 
 
 Content analysis details:   (-4.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rtsQs-0007NQ-Cd
Subject: Re: [ibm-acpi-devel] [PATCH v5 1/3] ACPI: platform-profile: add
 platform_profile_cycle()
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
Cc: Ike Panhc <ike.pan@canonical.com>, linux-acpi@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org,
 =?UTF-8?B?QmFybmFiw6FzIFDFkWN6ZQ==?= <pobrn@protonmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Gergo Koteles <soyer@irl.hu>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gTW9uLCBBcHIgOCwgMjAyNCBhdCA2OjQx4oCvUE0gSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBIaSBHZXJnbywKPgo+IE9uIDQvNi8yNCAyOjAxIEFNLCBH
ZXJnbyBLb3RlbGVzIHdyb3RlOgo+ID4gU29tZSBsYXB0b3BzIGhhdmUgYSBrZXkgdG8gc3dpdGNo
IHBsYXRmb3JtIHByb2ZpbGVzLgo+ID4KPiA+IEFkZCBhIHBsYXRmb3JtX3Byb2ZpbGVfY3ljbGUo
KSBmdW5jdGlvbiB0byBjeWNsZSBiZXR3ZWVuIHRoZSBlbmFibGVkCj4gPiBwcm9maWxlcy4KPiA+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBHZXJnbyBLb3RlbGVzIDxzb3llckBpcmwuaHU+Cj4KPiBUaGFu
ayB5b3UgZm9yIHlvdXIgcGF0Y2gsIDEgc21hbGwgcmVtYXJrIGJlbG93LAo+IG90aGVyd2lzZSB0
aGlzIGxvb2tzIGdvb2QgdG8gbWUuCj4KPiBSYWZhZWwsIG1heSBJIGhhdmUgeW91ciBBY2sgZm9y
IG1lcmdpbmcgdGhpcyB0aHJvdWdoIHRoZSBwZHg4NiB0cmVlCj4gdG9nZXRoZXIgd2l0aCB0aGUg
cmVzdCBvZiB0aGUgc2VyaWVzIG9uY2UgbXkgcmVtYXJrIGhhcyBiZWVuIGFkZHJlc3NlZCA/CgpT
dXJlLCBwbGVhc2UgZmVlbCBmcmVlIHRvIGFkZAoKQWNrZWQtYnk6IFJhZmFlbCBKLiBXeXNvY2tp
IDxyYWZhZWwuai53eXNvY2tpQGludGVsLmNvbT4KCnRvIHRoaXMgcGF0Y2guICBUaGFua3MhCgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9hY3BpL3BsYXRmb3JtX3Byb2ZpbGUuYyAgfCAzOSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIGluY2x1ZGUvbGludXgvcGxhdGZvcm1fcHJv
ZmlsZS5oIHwgIDEgKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvcGxhdGZvcm1fcHJvZmlsZS5jIGIvZHJpdmVy
cy9hY3BpL3BsYXRmb3JtX3Byb2ZpbGUuYwo+ID4gaW5kZXggZDQxODQ2MmFiNzkxLi5hY2M2MDZh
ZjgxMmEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2FjcGkvcGxhdGZvcm1fcHJvZmlsZS5jCj4g
PiArKysgYi9kcml2ZXJzL2FjcGkvcGxhdGZvcm1fcHJvZmlsZS5jCj4gPiBAQCAtMTM2LDYgKzEz
Niw0NSBAQCB2b2lkIHBsYXRmb3JtX3Byb2ZpbGVfbm90aWZ5KHZvaWQpCj4gPiAgfQo+ID4gIEVY
UE9SVF9TWU1CT0xfR1BMKHBsYXRmb3JtX3Byb2ZpbGVfbm90aWZ5KTsKPiA+Cj4gPiAraW50IHBs
YXRmb3JtX3Byb2ZpbGVfY3ljbGUodm9pZCkKPiA+ICt7Cj4gPiArICAgICBlbnVtIHBsYXRmb3Jt
X3Byb2ZpbGVfb3B0aW9uIHByb2ZpbGU7Cj4gPiArICAgICBlbnVtIHBsYXRmb3JtX3Byb2ZpbGVf
b3B0aW9uIG5leHQ7Cj4gPiArICAgICBpbnQgZXJyOwo+ID4gKwo+ID4gKyAgICAgZXJyID0gbXV0
ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZwcm9maWxlX2xvY2spOwo+ID4gKyAgICAgaWYgKGVycikK
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiA+ICsKPiA+ICsgICAgIGlmICghY3VyX3By
b2ZpbGUpIHsKPiA+ICsgICAgICAgICAgICAgbXV0ZXhfdW5sb2NrKCZwcm9maWxlX2xvY2spOwo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsg
ICAgIGVyciA9IGN1cl9wcm9maWxlLT5wcm9maWxlX2dldChjdXJfcHJvZmlsZSwgJnByb2ZpbGUp
Owo+ID4gKyAgICAgaWYgKGVycikgewo+ID4gKyAgICAgICAgICAgICBtdXRleF91bmxvY2soJnBy
b2ZpbGVfbG9jayk7Cj4gPiArICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gPiArICAgICB9Cj4g
PiArCj4gPiArICAgICBuZXh0ID0gZmluZF9uZXh0X2JpdF93cmFwKGN1cl9wcm9maWxlLT5jaG9p
Y2VzLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBUlJBWV9TSVpFKHByb2Zp
bGVfbmFtZXMpLCBwcm9maWxlICsgMSk7Cj4gPiArCj4gPiArICAgICBpZiAoV0FSTl9PTihuZXh0
ID09IEFSUkFZX1NJWkUocHJvZmlsZV9uYW1lcykpKSB7Cj4KPiBPdGhlciBjb2RlIGluIGRyaXZl
cnMvYWNwaS9wbGF0Zm9ybV9wcm9maWxlLmMgdXNlcyBQTEFURk9STV9QUk9GSUxFX0xBU1QKPiBp
bnN0ZWFkIG9mIEFSUkFZX1NJWkUocHJvZmlsZV9uYW1lcykgKHRoZXNlIGFyZSBndWFyYW50ZWVk
IHRvIGJlIGVxdWFsKQo+IHBsZWFzZSBzd2l0Y2ggdG8gdXNpbmcgUExBVEZPUk1fUFJPRklMRV9M
QVNUIGZvciBjb25zaXN0ZW5jeS4KPgo+IFJlZ2FyZHMsCj4KPiBIYW5zCj4KPgo+Cj4KPgo+ID4g
KyAgICAgICAgICAgICBtdXRleF91bmxvY2soJnByb2ZpbGVfbG9jayk7Cj4gPiArICAgICAgICAg
ICAgIHJldHVybiAtRUlOVkFMOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgZXJyID0gY3Vy
X3Byb2ZpbGUtPnByb2ZpbGVfc2V0KGN1cl9wcm9maWxlLCBuZXh0KTsKPiA+ICsgICAgIG11dGV4
X3VubG9jaygmcHJvZmlsZV9sb2NrKTsKPiA+ICsKPiA+ICsgICAgIGlmICghZXJyKQo+ID4gKyAg
ICAgICAgICAgICBzeXNmc19ub3RpZnkoYWNwaV9rb2JqLCBOVUxMLCAicGxhdGZvcm1fcHJvZmls
ZSIpOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIGVycjsKPiA+ICt9Cj4gPiArRVhQT1JUX1NZTUJP
TF9HUEwocGxhdGZvcm1fcHJvZmlsZV9jeWNsZSk7Cj4gPiArCj4gPiAgaW50IHBsYXRmb3JtX3By
b2ZpbGVfcmVnaXN0ZXIoc3RydWN0IHBsYXRmb3JtX3Byb2ZpbGVfaGFuZGxlciAqcHByb2YpCj4g
PiAgewo+ID4gICAgICAgaW50IGVycjsKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3Bs
YXRmb3JtX3Byb2ZpbGUuaCBiL2luY2x1ZGUvbGludXgvcGxhdGZvcm1fcHJvZmlsZS5oCj4gPiBp
bmRleCBlNWNiYjY4NDFmM2EuLmY1NDkyZWQ0MTNmMyAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUv
bGludXgvcGxhdGZvcm1fcHJvZmlsZS5oCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L3BsYXRmb3Jt
X3Byb2ZpbGUuaAo+ID4gQEAgLTM2LDYgKzM2LDcgQEAgc3RydWN0IHBsYXRmb3JtX3Byb2ZpbGVf
aGFuZGxlciB7Cj4gPgo+ID4gIGludCBwbGF0Zm9ybV9wcm9maWxlX3JlZ2lzdGVyKHN0cnVjdCBw
bGF0Zm9ybV9wcm9maWxlX2hhbmRsZXIgKnBwcm9mKTsKPiA+ICBpbnQgcGxhdGZvcm1fcHJvZmls
ZV9yZW1vdmUodm9pZCk7Cj4gPiAraW50IHBsYXRmb3JtX3Byb2ZpbGVfY3ljbGUodm9pZCk7Cj4g
PiAgdm9pZCBwbGF0Zm9ybV9wcm9maWxlX25vdGlmeSh2b2lkKTsKPiA+Cj4gPiAgI2VuZGlmICAv
Kl9QTEFURk9STV9QUk9GSUxFX0hfKi8KPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1k
ZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
